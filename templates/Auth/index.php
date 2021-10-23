<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 */
?>

<?= $this->Html->css('login.css') ?>

<div class="jumbotron">
    <h1>Login</h1>
    <div class="login-link">
        <?= $this->Html->link('Connect to Outlook', '/auth/signIn', ['class' => 'button', "id" => "connect-button"]); ?>
    </div>
</div>
