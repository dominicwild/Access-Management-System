<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 */
?>

<?php echo $this->Html->css("index.css") ?>

<div class="index">
    <div class="menu-grid">
        <?= $this->Html->link("<div>Submit Request Form</div>", ["controller" => "Pages", "action" => "requestSelection"], ["escapeTitle" => false]) ?>
        <?= $this->Html->link("<div>Edit Profile</div>", ["controller" => "Users", "action" => "edit", $user->id], ["escapeTitle" => false]) ?>
        <div>Approve Forms</div>
    </div>

    <h2>Submitted forms</h2>

    <table>
        <th>Form submitted</th>
        <th>Submission Date</th>
        <th>Status</th>
        <tr>
            <td>BAE Access</td>
            <td>12/12/20</td>
            <td>Pending</td>
        </tr>
    </table>

    <h2>Access Rights You Have</h2>

    <table>
        <th>Access Rights</th>
        <tr>
            <td>BAE Whitelink</td>
        <tr>
            <td>BAE Greenlink</td>
        </tr>
        <tr>
            <td>BAE Purple Link</td>
        </tr>
        </tr>
    </table>
</div>
