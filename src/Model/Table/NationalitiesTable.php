<?php
declare(strict_types=1);

namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Nationalities Model
 *
 * @property \App\Model\Table\UsersTable&\Cake\ORM\Association\HasMany $Users
 *
 * @method \App\Model\Entity\Nationality get($primaryKey, $options = [])
 * @method \App\Model\Entity\Nationality newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Nationality[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Nationality|false save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Nationality saveOrFail(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Nationality patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Nationality[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Nationality findOrCreate($search, callable $callback = null, $options = [])
 */
class NationalitiesTable extends Table
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

        $this->setTable('nationalities');
        $this->setDisplayField('nationality');
        $this->setPrimaryKey('id');

        $this->hasMany('Users', [
            'foreignKey' => 'nationality_id',
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
            ->scalar('nationality')
            ->maxLength('nationality', 255)
            ->requirePresence('nationality', 'create')
            ->notEmptyString('nationality');

        return $validator;
    }
}
