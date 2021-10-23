<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Form[]|\Cake\Collection\CollectionInterface $forms
 */
?>
<div class="forms index content">
    <?= $this->Html->link(__('New Form'), ['action' => 'add'], ['class' => 'button float-right']) ?>
    <h3><?= __('Forms') ?></h3>
    <div class="table-responsive">
        <table>
            <thead>
                <tr>
                    <th><?= $this->Paginator->sort('id') ?></th>
                    <th><?= $this->Paginator->sort('user_account_id') ?></th>
                    <th><?= $this->Paginator->sort('form_status_id') ?></th>
                    <th><?= $this->Paginator->sort('date_submitted') ?></th>
                    <th><?= $this->Paginator->sort('date_approved') ?></th>
                    <th class="actions"><?= __('Actions') ?></th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($forms as $form): ?>
                <tr>
                    <td><?= $this->Number->format($form->id) ?></td>
                    <td><?= $form->has('user_account') ? $this->Html->link($form->user_account->id, ['controller' => 'UserAccounts', 'action' => 'view', $form->user_account->id]) : '' ?></td>
                    <td><?= $form->has('form_status') ? $this->Html->link($form->form_status->name, ['controller' => 'FormStatuses', 'action' => 'view', $form->form_status->id]) : '' ?></td>
                    <td><?= h($form->date_submitted) ?></td>
                    <td><?= h($form->date_approved) ?></td>
                    <td class="actions">
                        <?= $this->Html->link(__('View'), ['action' => 'view', $form->id]) ?>
                        <?= $this->Html->link(__('Edit'), ['action' => 'edit', $form->id]) ?>
                        <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $form->id], ['confirm' => __('Are you sure you want to delete # {0}?', $form->id)]) ?>
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
