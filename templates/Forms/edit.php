<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Form $form
 */
?>
<div class="row">
    <aside class="column">
        <div class="side-nav">
            <h4 class="heading"><?= __('Actions') ?></h4>
            <?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $form->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $form->id), 'class' => 'side-nav-item']
            ) ?>
            <?= $this->Html->link(__('List Forms'), ['action' => 'index'], ['class' => 'side-nav-item']) ?>
        </div>
    </aside>
    <div class="column-responsive column-80">
        <div class="forms form content">
            <?= $this->Form->create($form) ?>
            <fieldset>
                <legend><?= __('Edit Form') ?></legend>
                <?php
                    echo $this->Form->control('user_account_id', ['options' => $userAccounts]);
                    echo $this->Form->control('form_status_id', ['options' => $formStatuses]);
                    echo $this->Form->control('date_submitted');
                    echo $this->Form->control('date_approved');
                    echo $this->Form->control('justification');
                ?>
            </fieldset>
            <?= $this->Form->button(__('Submit')) ?>
            <?= $this->Form->end() ?>
        </div>
    </div>
</div>
