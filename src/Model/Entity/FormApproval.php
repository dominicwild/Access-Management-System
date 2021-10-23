<?php
declare(strict_types=1);

namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * FormApproval Entity
 *
 * @property int $id
 * @property int $form_id
 * @property int $level
 * @property int $form_status_id
 * @property string|null $user_id
 * @property string|null $justification
 *
 * @property \App\Model\Entity\Form $form
 * @property \App\Model\Entity\User $user
 */
class FormApproval extends Entity
{
    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        'form_id' => true,
        'level' => true,
        'form_status_id' => true,
        'user_id' => true,
        'justification' => true,
        'form' => true,
        'user' => true,
        "form_status"=> true,
    ];
}
