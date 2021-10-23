<?php
declare(strict_types=1);

namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * UserAccounts Model
 *
 * @property \App\Model\Table\UsersTable&\Cake\ORM\Association\BelongsTo $Users
 * @property \App\Model\Table\AccountsTable&\Cake\ORM\Association\BelongsTo $Accounts
 * @property \App\Model\Table\AccountTypesTable&\Cake\ORM\Association\BelongsTo $AccountTypes
 * @property \App\Model\Table\FormsTable&\Cake\ORM\Association\HasMany $Forms
 * @property \App\Model\Table\UserAccountAccessRightsTable&\Cake\ORM\Association\HasMany $UserAccountAccessRights
 *
 * @method \App\Model\Entity\UserAccount get($primaryKey, $options = [])
 * @method \App\Model\Entity\UserAccount newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\UserAccount[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\UserAccount|false save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\UserAccount saveOrFail(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\UserAccount patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\UserAccount[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\UserAccount findOrCreate($search, callable $callback = null, $options = [])
 */
class UserAccountsTable extends Table
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

        $this->setTable('user_accounts');
        $this->setDisplayField('id');
        $this->setPrimaryKey('id');

        $this->belongsTo('Users', [
            'foreignKey' => 'user_id',
            'joinType' => 'INNER',
        ]);
        $this->belongsTo('Accounts', [
            'foreignKey' => 'account_id',
            'joinType' => 'INNER',
        ]);
        $this->belongsTo('AccountTypes', [
            'foreignKey' => 'account_type_id',
            'joinType' => 'INNER',
        ]);
        $this->hasMany('Forms', [
            'foreignKey' => 'user_account_id',
        ]);
        $this->hasMany('UserAccountAccessRights', [
            'foreignKey' => 'user_account_id',
        ]);
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
            ->boolean('domain_admin')
            ->notEmptyString('domain_admin');

        $validator
            ->scalar('ad_accountId')
            ->maxLength('ad_accountId', 255)
            ->allowEmptyString('ad_accountId');

        $validator
            ->scalar('business_justification')
            ->notEmptyString('business_justification');

        $validator
            ->email('email')
            ->allowEmptyString('email');

        $validator
            ->dateTime('date_created')
            ->allowEmptyDateTime('date_created');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules): RulesChecker
    {
        $rules->add($rules->existsIn(['user_id'], 'Users'));
        $rules->add($rules->existsIn(['account_id'], 'Accounts'));
        $rules->add($rules->existsIn(['account_type_id'], 'AccountTypes'));

        return $rules;
    }
}
