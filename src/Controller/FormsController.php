<?php
declare(strict_types=1);

namespace App\Controller;

use App\Model\Table\FormApprovalsTable;
use Cake\Core\Configure;
use Cake\ORM\Locator\TableLocator;
use Cake\ORM\TableRegistry;
use Queue\Model\Table\QueuedJobsTable;

/**
 * Forms Controller
 *
 * @property \App\Model\Table\FormsTable $Forms
 * @property QueuedJobsTable $QueuedJobs
 * @property FormApprovalsTable $FormApprovals
 *
 * @method \App\Model\Entity\Form[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class FormsController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index() {
        $this->paginate = [
            'contain' => ['UserAccounts', 'FormStatuses'],
        ];
        $forms = $this->paginate($this->Forms);

        $this->set(compact('forms'));
    }

    /**
     * View method
     *
     * @param string|null $id Form id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
//    public function view($id = null) {
//        if ($this->canViewForm($id)) {
//            $form = $this->Forms->get($id, [
//                'contain' => [
//                    'UserAccounts' => [
//                        "AccountTypes",
//                        "Accounts",
//                        "Users" => [
//                            "Nationalities",
//                            "EmployeeStatuses"
//                        ]
//                    ],
//                ],
//            ]);
//
//            $form->user_account->user->manager = $this->Forms->UserAccounts->Users->get($form->user_account->user->manager_id);
//
//            $this->set('form', $form);
//        } else {
//            $this->set("form", null);
//        }
//    }
//
//    public function canViewForm($id) {
//        $this->loadModel("FormApprovals");
//        $pendingForms = $this->FormApprovals->getPendingForms($this->Auth->user());
//        foreach ($pendingForms as $formApproval) {
//            if ($formApproval->form->id == $id) {
//                return true;
//            }
//        }
//        return false;
//    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $form = $this->Forms->newEmptyEntity();
        if ($this->request->is('post')) {
            $data = $this->filterEmptyString($this->request->getData());
            $data["form_approvals"] = [["level" => 1]];
            $form = $this->Forms->newEntity($data, ["associated" => ["UserAccounts.UserAccountAccessRights", "FormApprovals"]]);
            $form->user_account->user_id = $this->Auth->user()->id;
//            debug($data);
//            debug($form);
            if ($this->Forms->save($form, ["associated" => ["UserAccounts.UserAccountAccessRights", "FormApprovals"]])) {
                $this->Flash->success(__('The form has been saved.'));

                $this->loadModel('Queue.QueuedJobs');
                $this->QueuedJobs->createJob("ApproveNotification", ["form_id" => $form->id]);

                //return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The form could not be saved. Please, try again.'));
        }
        $userAccounts = $this->Forms->UserAccounts->find('list', ['limit' => 200]);
        $formStatuses = $this->Forms->FormStatuses->find('list', ['limit' => 200]);
        $users = TableRegistry::getTableLocator()->get("Users")->find("list", ['limit' => 200]);
        $accounts = TableRegistry::getTableLocator()->get("Accounts")->find("list", ['limit' => 200]);
        $accountTypes = TableRegistry::getTableLocator()->get("AccountTypes")->find("list", ['limit' => 200]);
        $this->set(compact('form', 'userAccounts', 'formStatuses', 'users', 'accounts', 'accountTypes'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Form id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null) {
        $form = $this->Forms->get($id, [
            'contain' => [],
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $form = $this->Forms->patchEntity($form, $this->request->getData());
            if ($this->Forms->save($form)) {
                $this->Flash->success(__('The form has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The form could not be saved. Please, try again.'));
        }
        $userAccounts = $this->Forms->UserAccounts->find('list', ['limit' => 200]);
        $formStatuses = $this->Forms->FormStatuses->find('list', ['limit' => 200]);
        $this->set(compact('form', 'userAccounts', 'formStatuses'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Form id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null) {
        $this->request->allowMethod(['post', 'delete']);
        $form = $this->Forms->get($id);
        if ($this->Forms->delete($form)) {
            $this->Flash->success(__('The form has been deleted.'));
        } else {
            $this->Flash->error(__('The form could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }

    private function filterEmptyString($data) {
        $toRemove = [];
        //$accessRights = $data["user_account"]["user_account_access_rights"];
        if (array_key_exists("user_account_access_rights", $data["user_account"]) && $accessRights = $data["user_account"]["user_account_access_rights"]) {
            for ($i = 0; $i < sizeof($accessRights); $i++) {
                if ($accessRights[$i]["access_right_id"] == "") {
                    $toRemove[] = $i;
                }
            }

            foreach ($toRemove as $i) {
                unset($accessRights[$i]);
            }

            $data["user_account"]["user_account_access_rights"] = $accessRights;
        }
        return $data;
    }

    public function home() {
        $id = $this->Auth->user()->id;
        $forms = $this->Forms->find("FormTable", ["id" => $id]);
        $accountForms = $this->Forms->find("AccountTable", ["id" => $id]);
        $this->set(compact("forms", "accountForms"));
    }

}
