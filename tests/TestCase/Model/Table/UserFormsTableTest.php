<?php
declare(strict_types=1);

namespace App\Test\TestCase\Model\Table;

use App\Model\Table\UserFormsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\UserFormsTable Test Case
 */
class UserFormsTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\UserFormsTable
     */
    protected $UserForms;

    /**
     * Fixtures
     *
     * @var array
     */
    protected $fixtures = [
        'app.UserForms',
        'app.Users',
        'app.FormStatuses',
        'app.YellowlnkElevatedForms',
        'app.YellowlnkForms',
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp(): void
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('UserForms') ? [] : ['className' => UserFormsTable::class];
        $this->UserForms = TableRegistry::getTableLocator()->get('UserForms', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown(): void
    {
        unset($this->UserForms);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize(): void
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault(): void
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test buildRules method
     *
     * @return void
     */
    public function testBuildRules(): void
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
