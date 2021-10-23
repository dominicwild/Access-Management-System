<?php
declare(strict_types=1);

namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Group Entity
 *
 * @property int $id
 * @property string $name
 *
 * @property \App\Model\Entity\ApprovalChain[] $approval_chains
 * @property \App\Model\Entity\UserGroup[] $user_groups
 */
class Group extends Entity
{
    const MANAGERS = 1;
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
        'name' => true,
        'approval_chains' => true,
        'user_groups' => true,
    ];
}
