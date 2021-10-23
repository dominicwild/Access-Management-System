<?php
declare(strict_types=1);

namespace App\Controller;

use App\Model\Entity\FormStatus;
use App\Model\Entity\Group;
use App\Model\Table\ApprovalChainsTable;
use App\Model\Table\UserGroupsTable;

/**
 * FormApprovals Controller
 *
 * @property \App\Model\Table\FormApprovalsTable $FormApprovals
 * @property \App\Model\Table\UsersTable $Users
 * @property UserGroupsTable $UserGroups
 * @property ApprovalChainsTable $ApprovalChains
 *
 * @method \App\Model\Entity\FormApproval[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class FormApprovalsController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index() {
        $this->paginate = [
            'contain' => ['Forms', 'Users'],
        ];
        $formApprovals = $this->paginate($this->FormApprovals);

        $this->set(compact('formApprovals'));
    }

    /**
     * View method
     *
     * @param string|null $id Form Approval id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     * @throws \Exception When failed to save all approvals
     */
    public function view($id = null) {

        if ($this->request->is("put")) {
            $approvals = [];

            $approval = $this->FormApprovals->get($id, ["contain" => ["Forms" => ["UserAccounts" => ["Accounts" => ["ApprovalChains"]]]]]);
            $approval = $this->FormApprovals->patchEntity($approval, $this->request->getData(),["associated" => ["Forms"]]);
            $approval->user_id = $this->Auth->user()->id;

            //Attempt to insert next level of pending approval, if the chain allows
            $chain = $this->FormApprovals->getApprovalChain($approval);
            $maxLevel = max(array_map(function ($x) {
                return $x["level"];
            }, $chain->toArray()));
            if ($maxLevel != $approval->level) {
                $approvals[] = $this->FormApprovals->newEntity(["level" => $approval->level + 1, "form_id" => $approval->form_id]);
            } else {
                $approval->form->form_status_id = FormStatus::APPROVED;
                $approval->setDirty("form",true);
            }

            $approvals[] = $approval;

            debug($approvals);
            if ($approval->form_status_id == FormStatus::DECLINED && $approval->justification == "") {
                $this->Flash->error("When declining approval, you must give justification.");
            } elseif ($this->FormApprovals->saveMany($approvals, ["associated" => ["Forms"]])) {
                $this->Flash->success("Form saved successfully.");
                debug($approvals);
//                return $this->redirect(["action" => "pendingForms"]);
            }
        }

        $approval = $this->FormApprovals->get($id, [
            'contain' => [
                "Forms" => [
                    'UserAccounts' => [
                        "AccountTypes",
                        "Accounts",
                        "Users" => [
                            "Nationalities",
                            "EmployeeStatuses"
                        ],
                    ],
                ],
            ],
        ]);

        $form = $approval->form;
        if ($this->canViewForm($form->id)) {
            $form->user_account->user->manager = $this->FormApprovals->Forms->UserAccounts->Users->get($form->user_account->user->manager_id);
            $formStatuses = $this->FormApprovals->Forms->FormStatuses->find("list")->where(["name !=" => "Pending"]);

            $this->set('approval', $approval);
            $this->set(compact("formStatuses"));
        } else {
            $this->set("approval", null);
        }
    }

    public function canViewForm($id) {
        $this->loadModel("FormApprovals");
        $pendingForms = $this->FormApprovals->getPendingForms($this->Auth->user());
        foreach ($pendingForms as $formApproval) {
            if ($formApproval->form->id == $id) {
                return true;
            }
        }
        return false;
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $formApproval = $this->FormApprovals->newEmptyEntity();
        if ($this->request->is('post')) {
            $formApproval = $this->FormApprovals->patchEntity($formApproval, $this->request->getData());
            if ($this->FormApprovals->save($formApproval)) {
                $this->Flash->success(__('The form approval has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The form approval could not be saved. Please, try again.'));
        }
        $forms = $this->FormApprovals->Forms->find('list', ['limit' => 200]);
        $users = $this->FormApprovals->Users->find('list', ['limit' => 200]);
        $this->set(compact('formApproval', 'forms', 'users'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Form Approval id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null) {
        $formApproval = $this->FormApprovals->get($id, [
            'contain' => [],
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $formApproval = $this->FormApprovals->patchEntity($formApproval, $this->request->getData());
            if ($this->FormApprovals->save($formApproval)) {
                $this->Flash->success(__('The form approval has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The form approval could not be saved. Please, try again.'));
        }
        $forms = $this->FormApprovals->Forms->find('list', ['limit' => 200]);
        $users = $this->FormApprovals->Users->find('list', ['limit' => 200]);
        $this->set(compact('formApproval', 'forms', 'users'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Form Approval id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null) {
        $this->request->allowMethod(['post', 'delete']);
        $formApproval = $this->FormApprovals->get($id);
        if ($this->FormApprovals->delete($formApproval)) {
            $this->Flash->success(__('The form approval has been deleted.'));
        } else {
            $this->Flash->error(__('The form approval could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }

    public function pendingForms() {
        $formsToDisplay = $this->FormApprovals->getPendingForms($this->Auth->user());

        $this->set("formApprovals", $formsToDisplay);
    }
}
