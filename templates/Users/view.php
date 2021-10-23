<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 */
?>
<div class="row">
    <aside class="column">
        <div class="side-nav">
            <h4 class="heading"><?= __('Actions') ?></h4>
            <?= $this->Html->link(__('Edit User'), ['action' => 'edit', $user->id], ['class' => 'side-nav-item']) ?>
            <?= $this->Form->postLink(__('Delete User'), ['action' => 'delete', $user->id], ['confirm' => __('Are you sure you want to delete # {0}?', $user->id), 'class' => 'side-nav-item']) ?>
            <?= $this->Html->link(__('List Users'), ['action' => 'index'], ['class' => 'side-nav-item']) ?>
            <?= $this->Html->link(__('New User'), ['action' => 'add'], ['class' => 'side-nav-item']) ?>
        </div>
    </aside>
    <div class="column-responsive column-80">
        <div class="users view content">
            <h3><?= h($user->name) ?></h3>
            <table>
                <tr>
                    <th><?= __('Id') ?></th>
                    <td><?= h($user->id) ?></td>
                </tr>
                <tr>
                    <th><?= __('EmployeeId') ?></th>
                    <td><?= h($user->employeeId) ?></td>
                </tr>
                <tr>
                    <th><?= __('Short Name') ?></th>
                    <td><?= h($user->short_name) ?></td>
                </tr>
                <tr>
                    <th><?= __('Name') ?></th>
                    <td><?= h($user->name) ?></td>
                </tr>
                <tr>
                    <th><?= __('Nationality') ?></th>
                    <td><?= $user->has('nationality') ? $this->Html->link($user->nationality->nationality, ['controller' => 'Nationalities', 'action' => 'view', $user->nationality->id]) : '' ?></td>
                </tr>
                <tr>
                    <th><?= __('Employee Status') ?></th>
                    <td><?= $user->has('employee_status') ? $this->Html->link($user->employee_status->employee_status, ['controller' => 'EmployeeStatuses', 'action' => 'view', $user->employee_status->id]) : '' ?></td>
                </tr>
                <tr>
                    <th><?= __('Manager') ?></th>
                    <td><?= $user->has('manager') ? $this->Html->link($user->manager->name, ['controller' => 'Managers', 'action' => 'view', $user->manager->id]) : '' ?></td>
                </tr>
                <tr>
                    <th><?= __('Office Number') ?></th>
                    <td><?= h($user->office_number) ?></td>
                </tr>
                <tr>
                    <th><?= __('Mobile Number') ?></th>
                    <td><?= h($user->mobile_number) ?></td>
                </tr>
                <tr>
                    <th><?= __('Security Clearance') ?></th>
                    <td><?= h($user->security_clearance) ?></td>
                </tr>
                <tr>
                    <th><?= __('Vetting Ref') ?></th>
                    <td><?= h($user->vetting_ref) ?></td>
                </tr>
                <tr>
                    <th><?= __('Role') ?></th>
                    <td><?= h($user->role) ?></td>
                </tr>
                <tr>
                    <th><?= __('Team') ?></th>
                    <td><?= h($user->team) ?></td>
                </tr>
                <tr>
                    <th><?= __('Location') ?></th>
                    <td><?= h($user->location) ?></td>
                </tr>
                <tr>
                    <th><?= __('Team Id') ?></th>
                    <td><?= $this->Number->format($user->team_id) ?></td>
                </tr>
                <tr>
                    <th><?= __('Expires') ?></th>
                    <td><?= $this->Number->format($user->expires) ?></td>
                </tr>
                <tr>
                    <th><?= __('Dob') ?></th>
                    <td><?= h($user->dob) ?></td>
                </tr>
                <tr>
                    <th><?= __('Vetting Expirary') ?></th>
                    <td><?= h($user->vetting_expirary) ?></td>
                </tr>
                <tr>
                    <th><?= __('Assignment End Date') ?></th>
                    <td><?= h($user->assignment_end_date) ?></td>
                </tr>
            </table>
            <div class="text">
                <strong><?= __('Access Token') ?></strong>
                <blockquote>
                    <?= $this->Text->autoParagraph(h($user->access_token)); ?>
                </blockquote>
            </div>
            <div class="text">
                <strong><?= __('Refresh Token') ?></strong>
                <blockquote>
                    <?= $this->Text->autoParagraph(h($user->refresh_token)); ?>
                </blockquote>
            </div>
            <div class="related">
                <h4><?= __('Related User Forms') ?></h4>
                <?php if (!empty($user->user_forms)) : ?>
                <div class="table-responsive">
                    <table>
                        <tr>
                            <th><?= __('Id') ?></th>
                            <th><?= __('User Id') ?></th>
                            <th><?= __('Form Status Id') ?></th>
                            <th><?= __('Justification') ?></th>
                            <th class="actions"><?= __('Actions') ?></th>
                        </tr>
                        <?php foreach ($user->user_forms as $userForms) : ?>
                        <tr>
                            <td><?= h($userForms->id) ?></td>
                            <td><?= h($userForms->user_id) ?></td>
                            <td><?= h($userForms->form_status_id) ?></td>
                            <td><?= h($userForms->justification) ?></td>
                            <td class="actions">
                                <?= $this->Html->link(__('View'), ['controller' => 'UserForms', 'action' => 'view', $userForms->id]) ?>
                                <?= $this->Html->link(__('Edit'), ['controller' => 'UserForms', 'action' => 'edit', $userForms->id]) ?>
                                <?= $this->Form->postLink(__('Delete'), ['controller' => 'UserForms', 'action' => 'delete', $userForms->id], ['confirm' => __('Are you sure you want to delete # {0}?', $userForms->id)]) ?>
                            </td>
                        </tr>
                        <?php endforeach; ?>
                    </table>
                </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
