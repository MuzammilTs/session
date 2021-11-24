<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;


class CampaignSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('campaigns')->truncate();
        $json = File::get("database/data/campaigns.json");
        $data = json_decode($json);
        foreach ($data as $obj) {
            DB::table('campaigns')->insert(array(
                'name' => $obj->name,
                'status' => 1,
                'created_at' => date("Y-m-d H:i:s"),
                'updated_at' => date("Y-m-d H:i:s")
            ));
        }
    }
}