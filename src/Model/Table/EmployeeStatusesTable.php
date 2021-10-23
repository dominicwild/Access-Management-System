<?php
declare(strict_types=1);

namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * EmployeeStatuses Model
 *
 * @property \App\Model\Table\UsersTable&\Cake\ORM\Association\HasMany $Users
 *
 * @method \App\Model\Entity\EmployeeStatus get($primaryKey, $options = [])
 * @method \App\Model\Entity\EmployeeStatus newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\EmployeeStatus[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\EmployeeStatus|false save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\EmployeeStatus saveOrFail(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\EmployeeStatus patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\EmployeeStatus[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\EmployeeStatus findOrCreate($search, callable $callback = null, $options = [])
 */
class EmployeeStatusesTable extends Table
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

        $this->setTable('employee_statuses');
        $this->setDisplayField('employee_status');
        $this->setPrimaryKey('id');

        $this->hasMany('Users', [
            'foreignKey' => 'employee_status_id',
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
            ->scalar('employee_status')
            ->maxLength('employee_status', 255)
            ->requirePresence('employee_status', 'create')
            ->notEmptyString('employee_status');

        return $validator;
    }
}
