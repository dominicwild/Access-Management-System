<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 * @var \Cake\ORM\Query $accounts
 * @var array $groups
 * @var int $accountId
 * @var array $chain
 */
?>


<?php $i =0; ?>
<?php foreach($chain as $level): ?>

    <?php
        echo $this->Form->control($i . ".group_id", ["options" => $groups, "default" => $level->group_id, "empty" => "N/A","label" => "Approval Level " . $level->level]);
        echo $this->Form->hidden($i . ".level", ["value" => $i+1]);
        echo $this->Form->hidden($i . ".account_id", ["value" => $accountId]);
        echo $this->Form->hidden($i . ".id", ["value" => $level->id]);
        $i++;
    ?>

<?php endforeach; ?>

<?php
echo $this->Form->control($i . ".group_id", ["options" => $groups, "empty" => "N/A", "label" => "Approval Level " . ($i+1)]);
echo $this->Form->hidden($i . ".level", ["value" => $i+1]);
echo $this->Form->hidden($i . ".account_id", ["value" => $accountId]);
?>

<template id="selectLevelTemplate">
    <?php
    $i = 0;
    echo $this->Form->control($i . ".group_id", ["options" => $groups, "empty" => "N/A", "label" => "Approval Level " . ($i+1)]);
    echo $this->Form->hidden($i . ".level", ["value" => $i+1]);
    echo $this->Form->hidden($i . ".account_id", ["value" => $accountId]);
    ?>
</template>
