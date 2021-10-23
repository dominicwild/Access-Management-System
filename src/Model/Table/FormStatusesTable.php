<?php
declare(strict_types=1);

namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * FormStatuses Model
 *
 * @property \App\Model\Table\FormsTable&\Cake\ORM\Association\HasMany $Forms
 *
 * @method \App\Model\Entity\FormStatus get($primaryKey, $options = [])
 * @method \App\Model\Entity\FormStatus newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\FormStatus[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\FormStatus|false save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\FormStatus saveOrFail(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\FormStatus patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\FormStatus[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\FormStatus findOrCreate($search, callable $callback = null, $options = [])
 */
class FormStatusesTable extends Table
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

        $this->setTable('form_statuses');
        $this->setDisplayField('name');
        $this->setPrimaryKey('id');

        $this->hasMany('Forms', [
            'foreignKey' => 'form_status_id',
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
            ->scalar('name')
            ->maxLength('name', 255)
            ->requirePresence('name', 'create')
            ->notEmptyString('name');

        return $validator;
    }
}
