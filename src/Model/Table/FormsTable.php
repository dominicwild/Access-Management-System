<?php
declare(strict_types=1);

namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Forms Model
 *
 * @property \App\Model\Table\UserAccountsTable&\Cake\ORM\Association\BelongsTo $UserAccounts
 * @property \App\Model\Table\FormStatusesTable&\Cake\ORM\Association\BelongsTo $FormStatuses
 *
 * @method \App\Model\Entity\Form get($primaryKey, $options = [])
 * @method \App\Model\Entity\Form newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Form[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Form|false save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Form saveOrFail(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Form patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Form[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Form findOrCreate($search, callable $callback = null, $options = [])
 */
class FormsTable extends Table {
    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config): void {
        parent::initialize($config);

        $this->setTable('forms');
        $this->setDisplayField('id');
        $this->setPrimaryKey('id');

        $this->belongsTo('UserAccounts', [
            'foreignKey' => 'user_account_id',
            'joinType' => 'INNER',
        ]);
        $this->belongsTo('FormStatuses', [
            'foreignKey' => 'form_status_id',
            'joinType' => 'INNER',
        ]);
        $this->hasMany('FormApprovals', [
            'foreignKey' => 'form_id',
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
            ->dateTime('date_submitted')
            ->allowEmptyDateTime('date_submitted');

        $validator
            ->dateTime('date_approved')
            ->allowEmptyDateTime('date_approved');

        $validator
            ->scalar('justification')
            ->allowEmptyString('id', null, 'create');

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
        $rules->add($rules->existsIn(['user_account_id'], 'UserAccounts'));
        $rules->add($rules->existsIn(['form_status_id'], 'FormStatuses'));

        return $rules;
    }

    public function findFormTable(Query $query, array $options) {
        $id = $options["id"];

        $query
            ->contain([
                "UserAccounts" => [
                    "Accounts"
                ],
                "FormStatuses"
            ])
            ->where([
                "UserAccounts.user_id" => $id
            ]);

        return $query;
    }

    public function findAccountTable(Query $query, array $options) {
        $id = $options["id"];

        $query
            ->contain([
                "UserAccounts" => [
                    "Accounts"
                ],
                "FormStatuses"
            ])
            ->where([
                "FormStatuses.name" => "Approved"
            ]);

        return $query;
    }


}
