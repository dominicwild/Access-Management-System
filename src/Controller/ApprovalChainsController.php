<?php
declare(strict_types=1);

namespace App\Controller;

use App\Model\Table\AccountsTable;

/**
 * ApprovalChains Controller
 *
 * @property \App\Model\Table\ApprovalChainsTable $ApprovalChains
 * @property AccountsTable $Accounts
 *
 * @method \App\Model\Entity\ApprovalChain[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class ApprovalChainsController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index() {
        $this->loadModel("Accounts");
        $accounts = $this->Accounts->find("list")->toArray();
        $accounts["-1"] = "Default";

        if ($this->getRequest()->is("post")) {
            $data = $this->getRequest()->getData();
            usort($data, function ($row, $row2) {
                return $row["level"] - $row2["level"]; //Sort in accordance to level
            });

            $max = -1;
            for($i = 0; $i < count($data); $i++){
                if(empty($data[$i]["group_id"])){
                    $max = $i;
                    break;
                }
            }
            $data = array_slice($data,0,$max); //Remove all levels above where there's an empty group
            debug($data);
            $levels = $this->ApprovalChains->newEntities($data);
            debug($levels);
            if($this->ApprovalChains->delete()){

            }
        }

        $this->set(compact('accounts'));
    }

    public function getApprovalChain() {
        $this->viewBuilder()->setLayout("ajax");

        if ($this->getRequest()->is("post")) {
            $data = $this->getRequest()->getData();
            $chain = $this->ApprovalChains->find()
                ->where(["account_id" => $data["accountId"]])
                ->contain(["Groups"])
                ->toList();
            $groups = $this->ApprovalChains->Groups->find("list");
            $accountId = $data["accountId"];
            $this->set(compact("chain", "groups", "accountId"));
        }
    }

    public function getApprovalChainControl() {
        $this->viewBuilder()->setLayout("ajax");
        if ($this->getRequest()->is("post")) {
            $data = $this->getRequest()->getData();
            $level = $data["level"];
            $accountId = $data["accountId"];
            $groups = $this->ApprovalChains->Groups->find("list");
            $this->set(compact("level", "accountId", "groups"));
        }
    }

    /**
     * View method
     *
     * @param string|null $id Approval Chain id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null) {
        $approvalChain = $this->ApprovalChains->get($id, [
            'contain' => ['Accounts', 'Groups'],
        ]);

        $this->set('approvalChain', $approvalChain);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $approvalChain = $this->ApprovalChains->newEmptyEntity();
        if ($this->request->is('post')) {
            $approvalChain = $this->ApprovalChains->patchEntity($approvalChain, $this->request->getData());
            if ($this->ApprovalChains->save($approvalChain)) {
                $this->Flash->success(__('The approval chain has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The approval chain could not be saved. Please, try again.'));
        }
        $accounts = $this->ApprovalChains->Accounts->find('list', ['limit' => 200]);
        $groups = $this->ApprovalChains->Groups->find('list', ['limit' => 200]);
        $this->set(compact('approvalChain', 'accounts', 'groups'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Approval Chain id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null) {
        $approvalChain = $this->ApprovalChains->get($id, [
            'contain' => [],
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $approvalChain = $this->ApprovalChains->patchEntity($approvalChain, $this->request->getData());
            if ($this->ApprovalChains->save($approvalChain)) {
                $this->Flash->success(__('The approval chain has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The approval chain could not be saved. Please, try again.'));
        }
        $accounts = $this->ApprovalChains->Accounts->find('list', ['limit' => 200]);
        $groups = $this->ApprovalChains->Groups->find('list', ['limit' => 200]);
        $this->set(compact('approvalChain', 'accounts', 'groups'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Approval Chain id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null) {
        $this->request->allowMethod(['post', 'delete']);
        $approvalChain = $this->ApprovalChains->get($id);
        if ($this->ApprovalChains->delete($approvalChain)) {
            $this->Flash->success(__('The approval chain has been deleted.'));
        } else {
            $this->Flash->error(__('The approval chain could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
