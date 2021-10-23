<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Form[]|\Cake\Collection\CollectionInterface $forms
 * @var \Cake\ORM\Query $groups
 * @var \Cake\ORM\Query $users
 */

echo $this->Html->script("group_index.js");
echo $this->Html->css("group_index.css");

$size = 8;
?>

<div class="groups">
    <div class="groups-container">
        <?= $this->Form->control("name", ["label" => "Group Name"]); ?>
        <div class="btn-groups">
            <button id="btn-add-group">Add</button>
            <button id="btn-remove-group">Remove</button>
        </div>
        <div class="select-group">
            <?= $this->Form->control("", [ "type" => "select", "label" => "Groups", "options" => $groups,"size" => $size, "height" => "100%", "id" => "groupList"]); ?>
        </div>
    </div>

    <div class="users-container">
        <?= $this->Form->control("", ["options" => $users, "type" => "select", "label" => "User", "id" => "userSelect"]); ?>
        <div class="btn-groups">
            <button id="btn-add-user">Add</button>
            <button id="btn-remove-user">Remove</button>
        </div>
        <div class="select-group" id="user-select-group">
            <i><h2>Select a group to add users to them.</h2></i>
        </div>
    </div>
</div>
