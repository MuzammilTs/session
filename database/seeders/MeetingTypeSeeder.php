<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class MeetingTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('meeting_types')->truncate();
        $json = File::get("database/data/meeting_types.json");
        $data = json_decode($json);
        foreach ($data as $obj) {
            DB::table('meeting_types')->insert(array(
                'name' => $obj->name,
                'icon' => $obj->icon,
                'status' => 1,
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s")
            ));
        }
    }
}
