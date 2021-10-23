<?php
declare(strict_types=1);

namespace App\Controller;

use App\Model\Table\AccessRightsTable;

/**
 * AccessRights Controller
 *
 * @property AccessRightsTable $AccessRights
 * @method \App\Model\Entity\AccessRight[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class AccessRightsController extends AppController {
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index() {
        $accessRights = $this->paginate($this->AccessRights);

        $this->set(compact('accessRights'));
    }

    /**
     * View method
     *
     * @param string|null $id Access Right id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null) {
        $accessRight = $this->AccessRights->get($id, [
            'contain' => [],
        ]);

        $this->set('accessRight', $accessRight);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $accessRight = $this->AccessRights->newEmptyEntity();
        if ($this->request->is('post')) {
            $accessRight = $this->AccessRights->patchEntity($accessRight, $this->request->getData());
            if ($this->AccessRights->save($accessRight)) {
                $this->Flash->success(__('The access right has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The access right could not be saved. Please, try again.'));
        }
        $this->set(compact('accessRight'));
    }

    /**
     * Edit method
     *
     * @param string|null $id Access Right id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null) {
        $accessRight = $this->AccessRights->get($id, [
            'contain' => [],
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $accessRight = $this->AccessRights->patchEntity($accessRight, $this->request->getData());
            if ($this->AccessRights->save($accessRight)) {
                $this->Flash->success(__('The access right has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The access right could not be saved. Please, try again.'));
        }
        $this->set(compact('accessRight'));
    }

    /**
     * Delete method
     *
     * @param string|null $id Access Right id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null) {
        $this->request->allowMethod(['post', 'delete']);
        $accessRight = $this->AccessRights->get($id);
        if ($this->AccessRights->delete($accessRight)) {
            $this->Flash->success(__('The access right has been deleted.'));
        } else {
            $this->Flash->error(__('The access right could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }


    public function getAccessRights($id = null, $num = 0){
        $this->viewBuilder()->setLayout("ajax");

        $accessRights = $this->AccessRights->find('list')->where(["account_id" => $id]);
        $this->set(compact('accessRights', 'num'));
    }

}
