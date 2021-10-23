<?php
declare(strict_types=1);

namespace App\Test\TestCase\Model\Table;

use App\Model\Table\NationalitiesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\NationalitiesTable Test Case
 */
class NationalitiesTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\NationalitiesTable
     */
    protected $Nationalities;

    /**
     * Fixtures
     *
     * @var array
     */
    protected $fixtures = [
        'app.Nationalities',
        'app.Users',
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp(): void
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('Nationalities') ? [] : ['className' => NationalitiesTable::class];
        $this->Nationalities = TableRegistry::getTableLocator()->get('Nationalities', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown(): void
    {
        unset($this->Nationalities);

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
}
