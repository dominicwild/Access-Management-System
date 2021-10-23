<?php
declare(strict_types=1);

namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * User Entity
 *
 * @property string $id
 * @property string|null $employeeId
 * @property string|null $short_name
 * @property string|null $name
 * @property \Cake\I18n\FrozenDate|null $dob
 * @property int|null $nationality_id
 * @property int|null $employee_status_id
 * @property string|null $manager_id
 * @property int|null $team_id
 * @property string|null $office_number
 * @property string|null $mobile_number
 * @property string|null $security_clearance
 * @property \Cake\I18n\FrozenDate|null $vetting_expirary
 * @property string|null $vetting_ref
 * @property \Cake\I18n\FrozenDate|null $assignment_end_date
 * @property string $role
 * @property string $team
 * @property string $location
 * @property string $access_token
 * @property string $refresh_token
 * @property int $expires
 * @property string $email
 * @property bool $is_manager
 *
 * @property \App\Model\Entity\Nationality $nationality
 * @property \App\Model\Entity\EmployeeStatus $employee_status
 * @property \App\Model\Entity\Manager $manager
 * @property \App\Model\Entity\UserForm[] $user_forms
 */
class User extends Entity
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
        'employeeId' => true,
        'short_name' => true,
        'name' => true,
        'dob' => true,
        'nationality_id' => true,
        'employee_status_id' => true,
        'manager_id' => true,
        'team_id' => true,
        'office_number' => true,
        'mobile_number' => true,
        'security_clearance' => true,
        'vetting_expirary' => true,
        'vetting_ref' => true,
        'assignment_end_date' => true,
        'role' => true,
        'team' => true,
        'location' => true,
        'access_token' => true,
        'refresh_token' => true,
        'expires' => true,
        'nationality' => true,
        'employee_status' => true,
        'manager' => true,
        'user_forms' => true,
        'email'=> true,
        'is_manager' => true,
    ];
}
