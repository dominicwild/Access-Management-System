<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 * @var \Cake\ORM\Query $formApprovals
 */
?>

<?php if (count($formApprovals) > 0): ?>

    <table>
        <th>
            Account
        </th>
        <th>
            User
        </th>
        <th>
            Date Submitted
        </th>
        <th>
            Status
        </th>
        <th>
            Level
        </th>
        <th>
            Actions
        </th>
        <?php foreach ($formApprovals as $approval): ?>
            <?php $form = $approval->form ?>
            <tr>
                <td>
                    <?= $form->user_account->account->name ?>
                </td>

                <td>
                    <?= $form->user_account->user->name ?>
                </td>

                <td>
                    <?= $form->date_submitted ?>
                </td>

                <td>
                    <?= $form->form_status->name ?>
                </td>

                <td>
                    <?= $approval->level ?>
                </td>

                <td>
                    <?= $this->Html->link("<button>Evaluate</button>", ["controller" => "FormApprovals", "action" => "view", $approval->id], ["escapeTitle" => false]) ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>

<?php else: ?>

    <h2><i>There are no pending forms currently.</i></h2>

<?php endif; ?>

