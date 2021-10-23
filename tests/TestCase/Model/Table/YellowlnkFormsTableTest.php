<?php
declare(strict_types=1);

namespace App\Test\TestCase\Model\Table;

use App\Model\Table\YellowlnkFormsTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\YellowlnkFormsTable Test Case
 */
class YellowlnkFormsTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\YellowlnkFormsTable
     */
    protected $YellowlnkForms;

    /**
     * Fixtures
     *
     * @var array
     */
    protected $fixtures = [
        'app.YellowlnkForms',
        'app.YellowlnkAccountTypes',
        'app.YellowlnkAccountFormats',
        'app.ContractorStatuses',
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp(): void
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('YellowlnkForms') ? [] : ['className' => YellowlnkFormsTable::class];
        $this->YellowlnkForms = TableRegistry::getTableLocator()->get('YellowlnkForms', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown(): void
    {
        unset($this->YellowlnkForms);

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
