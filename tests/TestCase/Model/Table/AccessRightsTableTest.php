<?php
declare(strict_types=1);

namespace App\Test\TestCase\Model\Table;

use App\Model\Table\AccessRightsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\AccessRightsTable Test Case
 */
class AccessRightsTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\AccessRightsTable
     */
    protected $AccessRights;

    /**
     * Fixtures
     *
     * @var array
     */
    protected $fixtures = [
        'app.AccessRights',
        'app.Accounts',
        'app.UserAccountAccessRights',
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp(): void
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('AccessRights') ? [] : ['className' => AccessRightsTable::class];
        $this->AccessRights = TableRegistry::getTableLocator()->get('AccessRights', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown(): void
    {
        unset($this->AccessRights);

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
