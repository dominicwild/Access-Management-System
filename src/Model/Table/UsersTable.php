<?php
declare(strict_types=1);

namespace App\Model\Table;

use App\Model\Entity\User;
use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;
use Microsoft\Graph\Graph;

/**
 * Users Model
 *
 * @property \App\Model\Table\NationalitiesTable&\Cake\ORM\Association\BelongsTo $Nationalities
 * @property \App\Model\Table\EmployeeStatusesTable&\Cake\ORM\Association\BelongsTo $EmployeeStatuses
 * @property \App\Model\Table\ManagersTable&\Cake\ORM\Association\BelongsTo $Managers
 * @property \App\Model\Table\UserFormsTable&\Cake\ORM\Association\HasMany $UserForms
 *
 * @method \App\Model\Entity\User get($primaryKey, $options = [])
 * @method \App\Model\Entity\User newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\User[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\User|false save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\User saveOrFail(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\User patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\User[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\User findOrCreate($search, callable $callback = null, $options = [])
 */
class UsersTable extends Table
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

        $this->setTable('users');
        $this->setDisplayField('name');
        $this->setPrimaryKey('id');

        $this->belongsTo('Nationalities', [
            'foreignKey' => 'nationality_id',
        ]);
        $this->belongsTo('EmployeeStatuses', [
            'foreignKey' => 'employee_status_id',
        ]);
//        $this->belongsTo('Managers', [
//            'foreignKey' => 'manager_id',
//        ]);
//        $this->belongsTo('Teams', [
//            'foreignKey' => 'team_id',
//        ]);
        $this->hasMany('UserForms', [
            'foreignKey' => 'user_id',
        ]);
        $this->hasMany("UserGroups", [
            "foreignKey" => "user_id"
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
            ->scalar('id')
            ->maxLength('id', 255)
            ->allowEmptyString('id', null, 'create');

        $validator
            ->scalar('employeeId')
            ->maxLength('employeeId', 255)
            ->allowEmptyString('employeeId');

        $validator
            ->scalar('short_name')
            ->maxLength('short_name', 255)
            ->allowEmptyString('short_name');

        $validator
            ->scalar('name')
            ->maxLength('name', 255)
            ->allowEmptyString('name');

        $validator
            ->date('dob')
            ->allowEmptyDate('dob');

        $validator
            ->scalar('office_number')
            ->maxLength('office_number', 255)
            ->allowEmptyString('office_number');

        $validator
            ->scalar('mobile_number')
            ->maxLength('mobile_number', 255)
            ->allowEmptyString('mobile_number');

        $validator
            ->scalar('security_clearance')
            ->maxLength('security_clearance', 255)
            ->allowEmptyString('security_clearance');

        $validator
            ->date('vetting_expirary')
            ->allowEmptyDate('vetting_expirary');

        $validator
            ->scalar('vetting_ref')
            ->maxLength('vetting_ref', 255)
            ->allowEmptyString('vetting_ref');

        $validator
            ->date('assignment_end_date')
            ->allowEmptyDate('assignment_end_date');

        $validator
            ->scalar('role')
            ->maxLength('role', 255)
            ->requirePresence('role', 'create')
            ->notEmptyString('role');

        $validator
            ->scalar('team')
            ->maxLength('team', 255);

        $validator
            ->scalar('location')
            ->maxLength('location', 255)
            ->requirePresence('location', 'create')
            ->notEmptyString('location');

        $validator
            ->scalar('access_token')
            ->requirePresence('access_token', 'create')
            ->notEmptyString('access_token');

        $validator
            ->scalar('refresh_token')
            ->requirePresence('refresh_token', 'create')
            ->notEmptyString('refresh_token');

        $validator
            ->integer('expires')
            ->requirePresence('expires', 'create')
            ->notEmptyString('expires');

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
        $rules->add($rules->existsIn(['nationality_id'], 'Nationalities'));
        $rules->add($rules->existsIn(['employee_status_id'], 'EmployeeStatuses'));
//        $rules->add($rules->existsIn(['manager_id'], 'Managers'));
//        $rules->add($rules->existsIn(['team_id'], 'Teams'));

        return $rules;
    }

    public function findHome(Query $query, array $options){
        $query->contain([
            "UserForms" => [
                "YellowlnkElevatedForms",
                "YellowlnkForms"
            ]
        ]);

        return $query;
    }

    public function findManagers(Query $query, array $options){

        $query
            ->where(["is_manager" => true])
            ->select(["id", "name"]);

        return $query;
    }

    public function create($token) {
        $accessToken = $token->getToken();
        $refreshToken = $token->getRefreshToken();
        $expires = $token->getExpires();
        $graph = new Graph();
        $graph->setAccessToken($accessToken);
        $user = $graph->createRequest('GET', '/me')
            ->setReturnType(User::class)
            ->execute();

        $foundUser = $this->find()->where(["id" => $user->id])->first();
        //Check if user already in database
        if($foundUser){
            debug("Found user");
            return $foundUser;
        }

        //Translate over outlooks schema to ours, to save to database
        $user->mobile_number = empty($user->mobilePhone) ? "" : $user->mobilePhone;
        $user->name = empty($user->displayName) ? "" : $user->displayName;
        $user->role = empty($user->jobTitle) ? "" : $user->jobTitle;
        $user->location = empty($user->officeLocation) ? "" : $user->officeLocation;
        $user->short_name = empty($user->mail) ? "" : explode("@" , $user->mail)[0];
        $user->office_number = empty($user->office_number) ? "" : $user->office_number[0];
        $user->access_token = $accessToken;
        $user->refresh_token = $refreshToken;
        $user->expires = $expires;
        $user->email = empty($user->mail) ? $user->userPrincipalName : $user->mail;

        if($this->save($user)){
            return $user;
        } else {
            return null;
        }
    }
}
