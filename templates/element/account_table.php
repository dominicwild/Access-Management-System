<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 * @var \Cake\ORM\Query $forms
 */
?>

<table>
    <th>Account</th>
    <?php foreach($forms as $form): ?>
    <tr>
        <td><?= $form->user_account->account->name ?></td>
    </tr>
    <?php endforeach; ?>
</table>
