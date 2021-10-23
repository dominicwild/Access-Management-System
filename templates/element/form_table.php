<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 * @var \Cake\ORM\Query $forms
 */
?>

<table>
    <th>Form submitted</th>
    <th>Submission Date</th>
    <th>Status</th>
    <?php foreach($forms as $form): ?>
    <tr>
        <td><?= $form->user_account->account->name ?></td>
        <td><?= explode(",", $form->date_submitted)[0] ?></td>
        <td><?= $form->form_status->name ?></td>
    </tr>
    <?php endforeach; ?>
</table>
