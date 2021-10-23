<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 * @var \Cake\ORM\Query $accessRights
 */
?>

<?php
$accessRights = $accessRights->toArray();
if(sizeof($accessRights) != 0){
    echo $this->Form->control("user_account.user_account_access_rights.". $num . ".access_right_id", ["options" => $accessRights, "empty" => "Pick an additional right you may need"]);
}
?>
