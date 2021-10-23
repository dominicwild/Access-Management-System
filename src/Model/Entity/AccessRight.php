<?php
declare(strict_types=1);

namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * AccessRight Entity
 *
 * @property int $id
 * @property int $account_id
 * @property string $name
 *
 * @property \App\Model\Entity\Account $account
 * @property \App\Model\Entity\UserAccountAccessRight[] $user_account_access_rights
 */
class AccessRight extends Entity
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
        'account_id' => true,
        'name' => true,
        'account' => true,
        'user_account_access_rights' => true,
    ];
}
