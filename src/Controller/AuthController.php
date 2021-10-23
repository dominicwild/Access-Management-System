<?php
declare(strict_types=1);

namespace App\Controller;

use App\Model\Table\UsersTable;
use Cake\ORM\TableRegistry;

/**
 * Auth Controller
 *
 *
 * @method \App\Model\Entity\Auth[]|\Cake\Datasource\ResultSetInterface paginate($object = null, array $settings = [])
 * @property UsersTable $Users
 */
class AuthController extends AppController
{

    public function initialize(): void {
        parent::initialize();
        $this->Auth->allow(["signIn", "authorize", "logOut"]);
    }

    /**
     * Index method
     *
     * @return \Cake\Http\Response|null
     */
    public function index() {

    }

    public function signIn() {

        // Initialize the OAuth client
        $oauthClient = new \League\OAuth2\Client\Provider\GenericProvider([
            'clientId' => env('OAUTH_APP_ID'),
            'clientSecret' => env('OAUTH_APP_PASSWORD'),
            'redirectUri' => env('OAUTH_REDIRECT_URI'),
            'urlAuthorize' => env('OAUTH_AUTHORITY') . env('OAUTH_AUTHORIZE_ENDPOINT'),
            'urlAccessToken' => env('OAUTH_AUTHORITY') . env('OAUTH_TOKEN_ENDPOINT'),
            'urlResourceOwnerDetails' => '',
            'scopes' => env('OAUTH_SCOPES')
        ]);

        // Output the authorization endpoint
        $authUrl = $oauthClient->getAuthorizationUrl();
        $this->getRequest()->getSession()->write("auth", $oauthClient->getState());
        $this->redirect($authUrl);
    }

    public function authorize() {

        $Users = TableRegistry::getTableLocator()->get('Users');

        $session = $this->getRequest()->getSession();

        // Authorization code should be in the "code" query param
        if (isset($_GET['code'])) {
            // Check that state matches
            if (empty($_GET['state']) || ($_GET['state'] !== $session->read("auth"))) {
                exit('State provided in redirect does not match expected value.');
            }

            // Clear saved state
//            unset($_SESSION['oauth_state']);
            $session->delete("auth");

            // Initialize the OAuth client
            $oauthClient = new \League\OAuth2\Client\Provider\GenericProvider([
                'clientId' => env('OAUTH_APP_ID'),
                'clientSecret' => env('OAUTH_APP_PASSWORD'),
                'redirectUri' => env('OAUTH_REDIRECT_URI'),
                'urlAuthorize' => env('OAUTH_AUTHORITY') . env('OAUTH_AUTHORIZE_ENDPOINT'),
                'urlAccessToken' => env('OAUTH_AUTHORITY') . env('OAUTH_TOKEN_ENDPOINT'),
                'urlResourceOwnerDetails' => '',
                'scopes' => env('OAUTH_SCOPES')
            ]);

            try {
                // Make the token request
                $accessToken = $oauthClient->getAccessToken('authorization_code', [
                    'code' => $_GET['code']
                ]);

                //echo 'Access token: ' . $accessToken->getToken();
            } catch (League\OAuth2\Client\Provider\Exception\IdentityProviderException $e) {
                exit('ERROR getting tokens: ' . $e->getMessage());
            }

            $user = $Users->create($accessToken);
            $this->Auth->setUser($user);
            $this->redirect(["controller" => "Users", "action" => "edit", $user->id]);
        } elseif (isset($_GET['error'])) {
            exit('ERROR: ' . $_GET['error'] . ' - ' . $_GET['error_description']);
        }
    }

    public function logout(){
        $this->Auth->logout();
        $this->Flash->success("You have been logged out.");
        $this->redirect(["controller" => "Auth", "action" => "index"]);
    }

}
