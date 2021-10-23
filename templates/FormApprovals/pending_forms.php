<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 * @var \Cake\ORM\Query $formApprovals
 */

?>

<h2>Pending Forms</h2>

<?= $this->element("pending_forms_table", ["formApprovals" => $formApprovals]) ?>
