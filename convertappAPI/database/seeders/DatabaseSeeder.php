<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        DB::table('measurement')->insert(array(
            array(
                'id' => 'temperature',
                'name' => 'Temperature'
            ),
            array(
                'id' => 'volume',
                'name' => 'Volume'
            ),
            array(
                'id' => 'weight',
                'name' => 'Weight'
            ))
        );
    }
}
