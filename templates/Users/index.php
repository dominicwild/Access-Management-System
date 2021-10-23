<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User[]|\Cake\Collection\CollectionInterface $users
 */
?>
<div class="users index content">
    <?= $this->Html->link(__('New User'), ['action' => 'add'], ['class' => 'button float-right']) ?>
    <h3><?= __('Users') ?></h3>
    <div class="table-responsive">
        <table>
            <thead>
                <tr>
                    <th><?= $this->Paginator->sort('id') ?></th>
                    <th><?= $this->Paginator->sort('employeeId') ?></th>
                    <th><?= $this->Paginator->sort('short_name') ?></th>
                    <th><?= $this->Paginator->sort('name') ?></th>
                    <th><?= $this->Paginator->sort('dob') ?></th>
                    <th><?= $this->Paginator->sort('nationality_id') ?></th>
                    <th><?= $this->Paginator->sort('employee_status_id') ?></th>
                    <th><?= $this->Paginator->sort('manager_id') ?></th>
                    <th><?= $this->Paginator->sort('team_id') ?></th>
                    <th><?= $this->Paginator->sort('office_number') ?></th>
                    <th><?= $this->Paginator->sort('mobile_number') ?></th>
                    <th><?= $this->Paginator->sort('security_clearance') ?></th>
                    <th><?= $this->Paginator->sort('vetting_expirary') ?></th>
                    <th><?= $this->Paginator->sort('vetting_ref') ?></th>
                    <th><?= $this->Paginator->sort('assignment_end_date') ?></th>
                    <th><?= $this->Paginator->sort('role') ?></th>
                    <th><?= $this->Paginator->sort('team') ?></th>
                    <th><?= $this->Paginator->sort('location') ?></th>
                    <th><?= $this->Paginator->sort('expires') ?></th>
                    <th class="actions"><?= __('Actions') ?></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($users as $user): ?>
                <tr>
                    <td><?= h($user->id) ?></td>
                    <td><?= h($user->employeeId) ?></td>
                    <td><?= h($user->short_name) ?></td>
                    <td><?= h($user->name) ?></td>
                    <td><?= h($user->dob) ?></td>
                    <td><?= $user->has('nationality') ? $this->Html->link($user->nationality->nationality, ['controller' => 'Nationalities', 'action' => 'view', $user->nationality->id]) : '' ?></td>
                    <td><?= $user->has('employee_status') ? $this->Html->link($user->employee_status->employee_status, ['controller' => 'EmployeeStatuses', 'action' => 'view', $user->employee_status->id]) : '' ?></td>
                    <td><?= $user->has('manager') ? $this->Html->link($user->manager->name, ['controller' => 'Managers', 'action' => 'view', $user->manager->id]) : '' ?></td>
                    <td><?= $this->Number->format($user->team_id) ?></td>
                    <td><?= h($user->office_number) ?></td>
                    <td><?= h($user->mobile_number) ?></td>
                    <td><?= h($user->security_clearance) ?></td>
                    <td><?= h($user->vetting_expirary) ?></td>
                    <td><?= h($user->vetting_ref) ?></td>
                    <td><?= h($user->assignment_end_date) ?></td>
                    <td><?= h($user->role) ?></td>
                    <td><?= h($user->team) ?></td>
                    <td><?= h($user->location) ?></td>
                    <td><?= $this->Number->format($user->expires) ?></td>
                    <td class="actions">
                        <?= $this->Html->link(__('View'), ['action' => 'view', $user->id]) ?>
                        <?= $this->Html->link(__('Edit'), ['action' => 'edit', $user->id]) ?>
                        <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $user->id], ['confirm' => __('Are you sure you want to delete # {0}?', $user->id)]) ?>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(__('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')) ?></p>
    </div>
</div>
