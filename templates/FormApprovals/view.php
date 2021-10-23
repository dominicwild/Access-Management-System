<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Form $form
 * @var \App\Model\Entity\FormApproval $approval
 * @var array $formStatuses
 */

echo $this->Html->css("form_approval_view.css");

if (!empty($approval)) {

    $form = $approval->form;

    $user = $form->user_account->user;
    $account = $form->user_account->account;
    $userAccount = $form->user_account;

    $userRows = [
        "Name" => $user->name,
        "Short Name" => $user->short_name,
        "Employee ID" => $user->employeeId,
        "Date of Birth" => $user->dob,
        "Nationality" => $user->nationality->nationality,
        "Employee Status" => $user->employee_status->employee_status,
        "Manager" => $user->manager->name,
        "Team" => $user->team,
        "Role" => $user->role,
    ];

    $formRows = [
        "Account Being Requested" => $account->name,
        "Account Type" => $userAccount->account_type->name,
        "Domain Admin" => $userAccount->domain_admin == true ? "Yes" : "No",
        "Business Justification" => $userAccount->business_justification,
    ];
}
?>
<?php if(!empty($approval)): ?>
    <div class="row approval">
        <div class="column-responsive column-80">
            <div class="forms view content">
                <h3>User Profile</h3>
                <table>
                    <?php foreach ($userRows as $title => $value): ?>
                        <tr>
                            <th><?= __($title) ?></th>
                            <td><?= h($value) ?></td>
                        </tr>
                    <?php endforeach; ?>
                </table>

                <h3>Account Request Information</h3>
                <table>
                    <?php foreach ($formRows as $title => $value): ?>
                        <tr>
                            <th><?= __($title) ?></th>
                            <td><?= h($value) ?></td>
                        </tr>
                    <?php endforeach; ?>
                </table>

                <?php
                echo $this->Form->create($approval);
                echo $this->Form->control("form_status_id", ["type" => "radio", "options" => $formStatuses]);
                echo $this->Form->control("justification");
                echo $this->Form->button(__('Submit'));
                echo $this->Form->end();
                ?>


            </div>
        </div>
    </div>

<?php else: ?>

    <h2>The form you're trying to evaluate either does not exist or you do not have permission to view it.</h2>

<?php endif; ?>
