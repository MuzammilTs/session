<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class ReasonSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('reasons')->truncate();
        $json = File::get("database/data/reasons.json");
        $data = json_decode($json);
        foreach ($data as $obj) {
            DB::table('reasons')->insert(array(
                'name' => $obj->name,
                'status' => 1,
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s")
            ));
        }
    }
}