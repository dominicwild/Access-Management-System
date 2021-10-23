<?php
declare(strict_types=1);

namespace App\Controller;

use App\Model\Entity\Group;
use App\Model\Table\UsersTable;

/**
 * UserGroups Controller
 *
 * @property \App\Model\Table\UserGroupsTable $UserGroups
 * @property UsersTable $Users
 *
 * @method \App\Model\Entity\UserGroup[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class UserGroupsController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index() {
        $this->paginate = [
            'contain' => ['Users', 'Groups'],
        ];
        $userGroups = $this->paginate($this->UserGroups);

        $this->set(compact('userGroups'));
    }

    public function addUserToGroup() {
        $this->viewBuilder()->setLayout("ajax");

        if($this->getRequest()->is("post")){
            $data = $this->getRequest()->getData();

            $userGroup = $this->UserGroups->newEntity(["user_id" => $data["userId"], "group_id" => $data["groupId"]]);
            if($userGroup && $this->UserGroups->save($userGroup)){
                return $this->response->withStringBody("true");
            }
        }

        return $this->response->withStatus(500);
    }

    public function removeUserFromGroup() {
        $this->viewBuilder()->setLayout("ajax");

        if($this->getRequest()->is("post")){
            $data = $this->getRequest()->getData();

            $userGroup = $this->UserGroups->find()->where(["user_id" => $data["userId"], "group_id" => $data["groupId"]])->first();
            if($userGroup && $this->UserGroups->delete($userGroup)){
                return $this->response->withStringBody("true");
            }
        }

        return $this->response->withStatus("500");
    }

    public function getUsersInGroup() {
        $this->viewBuilder()->setLayout("ajax");
        if ($this->getRequest()->is("post")) {
            $data = $this->getRequest()->getData();
            $users = [];

            if ((int)$data["id"] == Group::MANAGERS) {
                $this->loadModel("Users");
                $mangers = $this->Users->find()->where(["is_manager" => true]);
                foreach ($mangers as $user) {
                    $users[$user->id] = $user->name;
                }
            } else {
                $userGroups = $this->UserGroups->find()
                    ->where(["group_id" => $data["id"]])
                    ->contain(["Users"]);

                foreach ($userGroups->toList() as $userGroup) {
                    $users[$userGroup->user->id] = $userGroup->user->name;
                }
            }
        }

        $this->set(compact("users"));
    }

    /**
     * View method
     *
     * @param string|null $id User Group id.
     * @return \Cake\Http\Response|null
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function view($id = null) {
        $userGroup = $this->UserGroups->get($id, [
            'contain' => ['Users', 'Groups'],
        ]);

        $this->set('userGroup', $userGroup);
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $userGroup = $this->UserGroups->newEmptyEntity();
        if ($this->request->is('post')) {
            $userGroup = $this->UserGroups->patchEntity($userGroup, $this->request->getData());
            if ($this->UserGroups->save($userGroup)) {
                $this->Flash->success(__('The user group has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The user group could not be saved. Please, try again.'));
        }
        $users = $this->UserGroups->Users->find('list', ['limit' => 200]);
        $groups = $this->UserGroups->Groups->find('list', ['limit' => 200]);
        $this->set(compact('userGroup', 'users', 'groups'));
    }

    /**
     * Edit method
     *
     * @param string|null $id User Group id.
     * @return \Cake\Http\Response|null Redirects on successful edit, renders view otherwise.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function edit($id = null) {
        $userGroup = $this->UserGroups->get($id, [
            'contain' => [],
        ]);
        if ($this->request->is(['patch', 'post', 'put'])) {
            $userGroup = $this->UserGroups->patchEntity($userGroup, $this->request->getData());
            if ($this->UserGroups->save($userGroup)) {
                $this->Flash->success(__('The user group has been saved.'));

                return $this->redirect(['action' => 'index']);
            }
            $this->Flash->error(__('The user group could not be saved. Please, try again.'));
        }
        $users = $this->UserGroups->Users->find('list', ['limit' => 200]);
        $groups = $this->UserGroups->Groups->find('list', ['limit' => 200]);
        $this->set(compact('userGroup', 'users', 'groups'));
    }

    /**
     * Delete method
     *
     * @param string|null $id User Group id.
     * @return \Cake\Http\Response|null Redirects to index.
     * @throws \Cake\Datasource\Exception\RecordNotFoundException When record not found.
     */
    public function delete($id = null) {
        $this->request->allowMethod(['post', 'delete']);
        $userGroup = $this->UserGroups->get($id);
        if ($this->UserGroups->delete($userGroup)) {
            $this->Flash->success(__('The user group has been deleted.'));
        } else {
            $this->Flash->error(__('The user group could not be deleted. Please, try again.'));
        }

        return $this->redirect(['action' => 'index']);
    }
}
