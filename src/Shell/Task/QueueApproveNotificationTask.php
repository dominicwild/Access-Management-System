<?php

namespace App\Shell\Task;

use App\Model\Entity\FormStatus;
use App\Model\Entity\Group;
use App\Model\Table\AccountsTable;
use App\Model\Table\ApprovalChainsTable;
use App\Model\Table\FormsTable;
use App\Model\Table\UserGroupsTable;
use App\Model\Table\UsersTable;
use Cake\Core\Configure;
use Cake\Mailer\Mailer;
use Queue\Shell\Task\QueueTask;
use Queue\Shell\Task\QueueTaskInterface;

/**
 * Class QueueApproveNotificationTask
 * @package App\Shell\Task
 * @property UsersTable $Users
 * @property FormsTable $Forms
 * @property AccountsTable $Accounts
 * @property UserGroupsTable $UserGroups
 * @property ApprovalChainsTable $ApprovalChains
 */
class QueueApproveNotificationTask extends QueueTask implements QueueTaskInterface
{

    /**
     * @var int
     */
    public $timeout = 20;

    /**
     * @var int
     */
    public $retries = 1;

    /**
     * @param array $data The array passed to QueuedJobsTable::createJob()
     * @param int $jobId The id of the QueuedJob entity
     * @return void
     */
    public function run(array $data, $jobId): void {

        print("Finding form to send email about.");
        $file = fopen("debug.txt", "w");
        $this->loadModel("Forms");
        $form = $this->Forms
            ->get($data["form_id"], [
                "contain" => [
                    "UserAccounts" => [
                        "Users",
                        "Accounts" => [
                            "ApprovalChains"
                        ]
                    ],
                    "FormApprovals"
                ]
            ]);

        fwrite($file, $form . "\n\n\n");

        if ($form) {
            print("Found form.");
            //Determine what level of approval, if any, we need to send out an email for and obtain the relevant group to email
            $group = "";
            foreach ($form->form_approvals as $approval) {
                if ($approval->form_status_id == FormStatus::PENDING) {
                    $this->loadModel("Accounts");
                    $this->loadModel("ApprovalChains");
                    $chain = $this->Accounts->getApprovalChain($form->user_account->account->id);
                    $chain = $this->ApprovalChains->find("AccountApprovalChain", ["account_id" => $form->user_account->account->id]);
//                    fwrite($file, var_dump($chain) . "\n\n\n");
                    foreach ($chain as $level) {
                        if ($level->level == $approval->level) {
                            $group = $level->group->id;
                            break;
                        }
                    }
                }
                if (!empty($group)) {
                    break;
                }
            }
            //After getting the relevant group, email all the users in that group
            $emails = [];
            if ($group = Group::MANAGERS) { //Then email the persons manager (Special group)
                $this->loadModel("Users");
                print("Finding employees manager...");
                $managerId = $form->user_account->user->manager_id;
                $manager = $this->Users->get($managerId);
                if ($manager) {
                    if (empty($manager->email)) {
                        echo("Manager has no email.");
                    } else {
                        $emails[$manager->email] = $manager->name;
                    }
                } else {
                    print("Manager not found.");
                }
            } else { //Email all people within whatever group we have
                print("Finding users in group...");
                $this->loadModel("UserGroups");
                $users = $this->UserGroups->find()->where(["group_id" => $group])->contain(["Users"]);
                print("Adding emails...");
                foreach($users as $user){
                    $emails[$user->user->email] = $user->user->name;
                }
            }

            print("Sending Approval Email(s)...");
            print("Emails: " . print_r($emails));

            $user = $form->user_account->user;
            $account = $form->user_account->account;
            $content = "A request as been made by '" . $user->name . "' to be granted access to a '" . $account->name . "' account. It is pending approval.";
            $subject = $account->name . " Account Request For a:" . $account->name . " account";

            $mailer = new Mailer();
            $mailer
                ->setTo($emails)
                ->setSubject($subject)
                ->setTransport('mailjet')
                ->deliver($content);
        } else {
            echo("Form with id: " . $data["form_id"] . " does not exist");
        }

    }

}
