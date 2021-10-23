<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 */
?>

<?php echo $this->Html->css("request_selection.css") ?>

<div class="request-select">
    <div class="menu-grid">
        <?= $this->Html->link("<div>Yellowlnk Account Creation</div>",["controller" => "YellowlnkForms", "action" => "add"], ["escapeTitle" => false])?>
        <?= $this->Html->link("<div>Yellowlnk Elevated Account Creation</div>",["controller" => "YellowlnkElevatedForms", "action" => "add"], ["escapeTitle" => false])?>
        <div>Form 3</div>
        <div>Form 4</div>
        <div>Form 5</div>
    </div>
</div>
