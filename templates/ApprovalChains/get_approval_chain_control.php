<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 * @var \Cake\ORM\Query $accounts
 * @var int $level
 * @var int $accountId
 * @var \Cake\ORM\Query $groups
 */
?>

<?php
echo $this->Form->control($level . ".group_id", ["options" => $groups, "empty" => "N/A", "label" => "Approval Level " . ($level+1)]);
echo $this->Form->hidden($level . ".level", ["value" => $level+1]);
echo $this->Form->hidden($level . ".account_id", ["value" => $accountId]);
?>
