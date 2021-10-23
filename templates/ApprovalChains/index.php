<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 * @var \Cake\ORM\Query $accounts
 */

echo $this->Html->script("approval_index.js");
?>

<?= $this->Form->control("",["options" => $accounts, "empty" => "Choose an account to edit the approval chain of", "id" => "approvalSelect"]) ?>

<?= $this->Form->create() ?>

<div id="chainLevels">

</div>

<?= $this->Form->submit(); ?>
<?= $this->Form->end(); ?>

