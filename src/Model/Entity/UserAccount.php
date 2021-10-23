<?php
declare(strict_types=1);

namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * UserAccount Entity
 *
 * @property int $id
 * @property string $user_id
 * @property int $account_id
 * @property int $account_type_id
 * @property bool $domain_admin
 * @property string|null $ad_accountId
 * @property string|null $email
 * @property string|null $business_justification
 * @property \Cake\I18n\FrozenTime|null $date_created
 *
 * @property \App\Model\Entity\User $user
 * @property \App\Model\Entity\Account $account
 * @property \App\Model\Entity\AccountType $account_type
 * @property \App\Model\Entity\Form[] $forms
 * @property \App\Model\Entity\UserAccountAccessRight[] $user_account_access_rights
 */
class UserAccount extends Entity
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
        'user_id' => true,
        'account_id' => true,
        'account_type_id' => true,
        'domain_admin' => true,
        'ad_accountId' => true,
        'email' => true,
        'date_created' => true,
        'user' => true,
        'account' => true,
        'account_type' => true,
        'forms' => true,
        'user_account_access_rights' => true,
        "business_justification" => true,
    ];
}
