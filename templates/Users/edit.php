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
            <?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $user->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $user->id), 'class' => 'side-nav-item']
            ) ?>
            <?= $this->Html->link(__('List Users'), ['action' => 'index'], ['class' => 'side-nav-item']) ?>
        </div>
    </aside>
    <div class="column-responsive column-80">
        <div class="users form content">
            <?= $this->Form->create($user) ?>
            <fieldset>
                <legend><?= __('Edit User') ?></legend>
                <?php
                    echo $this->Form->control('employeeId');
                    echo $this->Form->control('short_name');
                    echo $this->Form->control('name');
                    echo $this->Form->control('email');
                    echo $this->Form->control('dob', ['empty' => true]);
                    echo $this->Form->control('nationality_id', ['options' => $nationalities, 'empty' => true]);
                    echo $this->Form->control('employee_status_id', ['options' => $employeeStatuses, 'empty' => true]);
                    echo $this->Form->control('manager_id', ['options' => $managers, 'empty' => true]);
//                    echo $this->Form->control('team_id');
                    echo $this->Form->control('office_number');
                    echo $this->Form->control('mobile_number');
                    echo $this->Form->control('security_clearance');
                    echo $this->Form->control('vetting_expirary', ['empty' => true]);
                    echo $this->Form->control('vetting_ref');
                    echo $this->Form->control('assignment_end_date', ['empty' => true]);
                    echo $this->Form->control('role');
                    echo $this->Form->control('team');
                    echo $this->Form->control('location');
                ?>
            </fieldset>
            <?= $this->Form->button(__('Submit')) ?>
            <?= $this->Form->end() ?>
        </div>
    </div>
</div>
