<?php
declare(strict_types=1);

namespace App\Model\Table;

use App\Model\Entity\FormStatus;
use App\Model\Entity\Group;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\ORM\TableRegistry;
use Cake\Validation\Validator;

/**
 * FormApprovals Model
 *
 * @property \App\Model\Table\FormsTable&\Cake\ORM\Association\BelongsTo $Forms
 * @property \App\Model\Table\UsersTable&\Cake\ORM\Association\BelongsTo $Users
 *
 * @method \App\Model\Entity\FormApproval get($primaryKey, $options = [])
 * @method \App\Model\Entity\FormApproval newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\FormApproval[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\FormApproval|false save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\FormApproval saveOrFail(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\FormApproval patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\FormApproval[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\FormApproval findOrCreate($search, callable $callback = null, $options = [])
 */
class FormApprovalsTable extends Table
{
    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config): void {
        parent::initialize($config);

        $this->setTable('form_approvals');
        $this->setDisplayField('id');
        $this->setPrimaryKey('id');

        $this->belongsTo('Forms', [
            'foreignKey' => 'form_id',
            'joinType' => 'INNER',
        ]);
        $this->belongsTo('Users', [
            'foreignKey' => 'user_id',
        ]);
        $this->hasOne("FormStatuses", [
            "foreignKey" => "form_status_id"
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator): Validator {
        $validator
            ->integer('id')
            ->allowEmptyString('id', null, 'create');

        $validator
            ->integer('level')
            ->requirePresence('level', 'create')
            ->notEmptyString('level');

        $validator
            ->integer('form_status')
            ->notEmptyString('form_status');

        $validator
            ->scalar('justification')
            ->allowEmptyString('justification');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules): RulesChecker {
        $rules->add($rules->existsIn(['form_id'], 'Forms'));
        $rules->add($rules->existsIn(['user_id'], 'Users'));

        return $rules;
    }

    public function findFormsPendingApproval(Query $query, array $options) {

        $query
            ->contain([
                "Forms" => [
                    "FormStatuses",
                    "UserAccounts" => [
                        "Users",
                        "Accounts" => [
                            "ApprovalChains"
                        ]
                    ]
                ]
            ])
            ->where(["FormApprovals.form_status_id" => FormStatus::PENDING]);

        return $query;
    }

    public function getPendingForms($user) {
        $UserGroups = TableRegistry::getTableLocator()->get("UserGroups");

        $pendingApproval = $this->find("FormsPendingApproval");
        $userGroups = $UserGroups->find()->where(["user_id" => $user->id])->toList();
        $formsToDisplay = [];

        if ($user->is_manager) {
            $userGroups[] = $UserGroups->newEntity(["group_id" => 1]);
        }

        //Need to decide whether or not each form is for the user to approve or not
        foreach ($pendingApproval as $form) {
            $chain = $this->getApprovalChain($form);
            foreach ($chain as $level) {
                if ($form->level == $level->level) {
                    foreach ($userGroups as $group) {
                        if ($group->group_id == $level->group_id) { //User inside appropriate group
                            if ($group->group_id == Group::MANAGERS) { //Handle special case of Manager group
                                if ($user->manager_id == $form->form->user_account->user->manager_id) {
                                    $formsToDisplay[] = $form;
                                }
                            } else {
                                $formsToDisplay[] = $form;
                            }
                            break;
                        }
                    }
                }
            }
        }
        return $formsToDisplay;
    }

    public function getApprovalChain($formApproval) {
        if (empty($chain = $formApproval->form->user_account->account->approval_chains)) { //If no approval chain, use the default approval chain
            $ApprovalChains = TableRegistry::getTableLocator()->get("ApprovalChains");
            $chain = $ApprovalChains->find("AccountApprovalChain", ["account_id" => -1]);
        }
        return $chain;
    }
}
