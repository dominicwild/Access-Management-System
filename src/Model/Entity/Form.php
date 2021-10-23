<?php
declare(strict_types=1);

namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Form Entity
 *
 * @property int $id
 * @property int $user_account_id
 * @property int $form_status_id
 * @property \Cake\I18n\FrozenTime $date_submitted
 * @property \Cake\I18n\FrozenTime $date_approved
 * @property string $justification
 *
 * @property \App\Model\Entity\UserAccount $user_account
 * @property \App\Model\Entity\FormStatus $form_status
 * @property FormApproval $form_approvals
 */
class Form extends Entity
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
        'user_account_id' => true,
        'form_status_id' => true,
        'date_submitted' => true,
        'date_approved' => true,
        'justification' => true,
        'user_account' => true,
        'form_status' => true,
        "form_approvals" => true,
    ];
}
