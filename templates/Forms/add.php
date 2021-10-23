<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Form $form
 */

?>

<?= $this->Html->script("form_add") ?>
<?= $this->Html->css("form_add") ?>

<div class="row form_add">
    <aside class="column">
        <div class="side-nav">
            <h4 class="heading"><?= __('Actions') ?></h4>
            <?= $this->Html->link(__('List Forms'), ['action' => 'index'], ['class' => 'side-nav-item']) ?>
        </div>
    </aside>
    <div class="column-responsive column-80">
        <div class="forms form content">
            <?= $this->Form->create($form) ?>
            <fieldset id="formAdd">
                <legend><?= __('Add Form') ?></legend>
                <?php
                echo $this->Form->control('user_account.business_justification');
                echo $this->Form->control('user_account.account_id', ['options' => $accounts, 'empty'=>'Select the type of account you want', 'required' => true]);
                echo $this->Form->control('user_account.domain_admin');
                echo $this->Form->control('user_account.account_type_id', ['options' => $accountTypes]);
                ?>

                <div id="formAccessRights">

                </div>

            </fieldset>
            <?= $this->Form->button(__('Submit')) ?>
            <?= $this->Form->end() ?>
        </div>
    </div>
</div>


