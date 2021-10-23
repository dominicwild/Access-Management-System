<?php
/**
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link          https://cakephp.org CakePHP(tm) Project
 * @since         0.10.0
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\User $user
 */

$cakeDescription = 'CakePHP: the rapid development php framework';
?>
<!DOCTYPE html>
<html>
<head>
    <?= $this->Html->charset() ?>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>
        <?= $cakeDescription ?>:
        <?= $this->fetch('title') ?>
    </title>
    <?= $this->Html->meta('icon') ?>

    <link href="https://fonts.googleapis.com/css?family=Raleway:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.1/normalize.css">

    <?= $this->Html->css('milligram.min.css') ?>
    <?= $this->Html->css('cake.css') ?>
    <?= $this->Html->css('toastr.css') ?>

    <?= $this->Html->scriptBlock(sprintf(
        'var csrfToken = %s;',
        json_encode($this->request->getAttribute('csrfToken'))
    )); ?>

    <?= $this->Html->script("lib/jquery.js")?>
    <?= $this->Html->script("lib/toastr.js")?>
    <?= $this->Html->script("utility.js")?>

    <script>
        var routes = {
            "getAccountRights": '<?= $this->Url->build(["controller" => "AccessRights", "action" => "getAccessRights"])?>',
            "addGroup": '<?= $this->Url->build(["controller" => "Groups", "action" => "add"])?>',
            "removeGroup": '<?= $this->Url->build(["controller" => "Groups", "action" => "remove"])?>',
            "updateUserList": '<?= $this->Url->build(["controller" => "UserGroups", "action" => "getUsersInGroup"])?>',
            "addUserToGroup": '<?= $this->Url->build(["controller" => "UserGroups", "action" => "addUserToGroup"])?>',
            "removeUserFromGroup": '<?= $this->Url->build(["controller" => "UserGroups", "action" => "removeUserFromGroup"])?>',
            "getApprovalChain": '<?= $this->Url->build(["controller" => "ApprovalChains", "action" => "getApprovalChain"])?>',
            "getApprovalChainControl": '<?= $this->Url->build(["controller" => "ApprovalChains", "action" => "getApprovalChainControl"])?>',
        };

        toastr.options = {
            "closeButton": true,
            "debug": false,
            "newestOnTop": true,
            "progressBar": true,
            "positionClass": "toast-top-right",
            "preventDuplicates": true,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        }
    </script>

    <?= $this->fetch('meta') ?>
    <?= $this->fetch('css') ?>
    <?= $this->fetch('script') ?>
</head>
<body>
<nav class="top-nav">
    <div class="top-nav-title">
        <a href="/"><span>Cake</span>PHP</a>
    </div>
    <div class="top-nav-links">
        <?php
        echo $this->Html->link("Profile", ["controller" => "Users", "action" => "edit", $user->id]);
        echo $this->Html->link("Logout", ["controller" => "Auth", "action" => "logout", $user->id]);
        ?>
    </div>
</nav>
<main class="main">
    <div class="container">
        <?= $this->Flash->render() ?>
        <?= $this->fetch('content') ?>
    </div>
</main>
<footer style="height:200px">
</footer>
</body>
</html>
