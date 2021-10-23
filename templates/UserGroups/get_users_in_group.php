<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $users
 */

$size = 8;
?>

<?php
//if (count($users)) {
//    echo $this->Form->control("", ["options" => $users, "type" => "select", "size" => $size, "label" => "Users in Group", "id" => "userList"]);
//} else {
//    echo "<i><h2>There are no users in this group</h2></i>";
//}


echo $this->Form->control("", ["options" => $users, "type" => "select", "size" => $size, "label" => "Users in Group", "id" => "userList"]);
?>
