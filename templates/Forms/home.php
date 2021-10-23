<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 * @var \Cake\ORM\Query $forms
 * @var \Cake\ORM\Query $accountForms
 */
?>

<?php echo $this->Html->css("userHome.css") ?>

<div class="home">
    <div class="menu-grid">
        <?= $this->Html->link("<div>Submit Request Form</div>", ["controller" => "Forms", "action" => "add"], ["escapeTitle" => false]) ?>
        <?= $this->Html->link("<div>Edit Profile</div>", ["controller" => "Users", "action" => "edit", $user->id], ["escapeTitle" => false]) ?>
        <?= $this->Html->link("<div>Approve Forms</div>", ["controller" => "FormApprovals", "action" => "pendingForms"], ["escapeTitle" => false]) ?>
        <?= $this->Html->link("<div>Manage Groups</div>", ["controller" => "Groups", "action" => "index"], ["escapeTitle" => false]) ?>
        <?= $this->Html->link("<div>Manage Approval Chains</div>", ["controller" => "ApprovalChains", "action" => "index"], ["escapeTitle" => false]) ?>
    </div>

    <h2>Submitted forms</h2>

    <?= $this->element("form_table", ["forms" => $forms]) ?>


    <h2>Accounts you have:</h2>

    <?= $this->element("account_table", ["forms" => $accountForms]) ?>
</div>
