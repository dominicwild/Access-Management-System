<?php
declare(strict_types=1);

namespace App\Controller;

use App\Model\Entity\Group;
use App\Model\Table\UsersTable;

/**
 * Groups Controller
 *
 * @property \App\Model\Table\GroupsTable $Groups
 * @property UsersTable $Users
 *
 * @method \App\Model\Entity\Group[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 */
class GroupsController extends AppController
{
    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index() {
        $this->loadModel("Users");
        $groups = $this->Groups->find("list");
        $users = $this->Users->find("list", ["key" => "id", "value" => "name"]);
        $this->set(compact("groups", "users"));
    }

    /**
     * Add method
     *
     * @return \Cake\Http\Response|null Redirects on successful add, renders view otherwise.
     */
    public function add() {
        $this->viewBuilder()->setLayout("ajax");
        $data = $this->getRequest()->getData();
        if ($this->Auth->user()->is_admin && !empty($data["name"])) {
            $group = $this->Groups->newEntity($data);
            if ($this->Groups->save($group)) {
                return $this->response->withStringBody("" . $group->id);
            }
        }
    }

    public function remove() {
        $this->viewBuilder()->setLayout("ajax");
        $data = $this->getRequest()->getData();
        if ($this->Auth->user()->is_admin && !empty($data["id"])) {
            if((int)$data["id"] == Group::MANAGERS){
                $this->set(["type" => "error", "message" => "Cannot delete manager group."]);
                return $this->render("/element/toast");
            }
            $group = $this->Groups->get($data["id"]);
            if ($this->Groups->delete($group)) {
                return $this->response->withStringBody("true");
            }
        }
    }

}
