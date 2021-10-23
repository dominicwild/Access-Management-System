<?php
declare(strict_types=1);

namespace App\Test\TestCase\Model\Table;

use App\Model\Table\YellowlnkElevatedFormsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\YellowlnkElevatedFormsTable Test Case
 */
class YellowlnkElevatedFormsTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\YellowlnkElevatedFormsTable
     */
    protected $YellowlnkElevatedForms;

    /**
     * Fixtures
     *
     * @var array
     */
    protected $fixtures = [
        'app.YellowlnkElevatedForms',
        'app.UserForms',
        'app.YellowlnkFormPrivileges',
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp(): void
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('YellowlnkElevatedForms') ? [] : ['className' => YellowlnkElevatedFormsTable::class];
        $this->YellowlnkElevatedForms = TableRegistry::getTableLocator()->get('YellowlnkElevatedForms', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown(): void
    {
        unset($this->YellowlnkElevatedForms);

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
