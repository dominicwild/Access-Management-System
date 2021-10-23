<?php
declare(strict_types=1);

namespace App\Model\Table;

use Cake\ORM\Locator\TableLocator;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\ORM\TableRegistry;
use Cake\Validation\Validator;

/**
 * Accounts Model
 *
 * @property \App\Model\Table\AccessRightsTable&\Cake\ORM\Association\HasMany $AccessRights
 * @property \App\Model\Table\FormsTable&\Cake\ORM\Association\HasMany $Forms
 *
 * @method \App\Model\Entity\Account get($primaryKey, $options = [])
 * @method \App\Model\Entity\Account newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Account[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Account|false save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Account saveOrFail(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Account patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Account[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Account findOrCreate($search, callable $callback = null, $options = [])
 */
class AccountsTable extends Table
{
    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config): void
    {
        parent::initialize($config);

        $this->setTable('accounts');
        $this->setDisplayField('name');
        $this->setPrimaryKey('id');

        $this->hasMany('AccessRights', [
            'foreignKey' => 'account_id',
        ]);
        $this->hasMany('Forms', [
            'foreignKey' => 'account_id',
        ]);
        $this->hasMany('ApprovalChains', [
            'foreignKey' => 'account_id',
        ])->setSort(["level" => "ASC"]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator): Validator
    {
        $validator
            ->integer('id')
            ->allowEmptyString('id', null, 'create');

        $validator
            ->scalar('name')
            ->maxLength('name', 255)
            ->requirePresence('name', 'create')
            ->notEmptyString('name');

        return $validator;
    }

    public function getApprovalChain($id){
        $ApprovalChains = TableRegistry::getTableLocator()->get("ApprovalChains");
        $contain = ["Groups"];
        $chain = $ApprovalChains->find()->where(["account_id" => $id])->contain($contain)->toList();
        if($chain){
            return $chain;
        } else {
            return $ApprovalChains
                ->find()
                ->where(["account_id" => -1])
                ->contain($contain)
                ->toList();
        }
    }
}
