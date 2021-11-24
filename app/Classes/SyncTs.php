<?php

namespace App\Classes;

use App\Models\User;
use App\Models\Campaign;
use App\Models\Designation;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class SyncTs
{
    public function campaigns(){
        $hrms_campaigns = DB::connection('touchstone')->table('Campaign')->where('Active', 1)->get();

        foreach($hrms_campaigns as $hrms_campaign){

            if($hrms_campaign['ID'] > 1){
                $campaign = Campaign::where('hrms_id', $hrms_campaign['ID'])->first();

                if(!$campaign){
                    $campaign = new Campaign;
                }

                $campaign->hrms_id = $hrms_campaign['ID'];
                $campaign->name = $hrms_campaign['Name'];
                $campaign->status = $hrms_campaign['Active'];

                $campaign->save();
            }
        }
    }

    public function designations(){
        $hrms_designations = DB::connection('touchstone')->table('Designation')->get();

        foreach($hrms_designations as $hrms_designation){

            if($hrms_designation['ID'] > 1){
                $designation = Designation::where('hrms_id', $hrms_designation['ID'])->first();

                if(!$designation){
                    $designation = new Designation();
                }

                $designation->hrms_id = $hrms_designation['ID'];
                $designation->name = $hrms_designation['Name'];
                $designation->status = $hrms_designation['Active'];

                $designation->save();
            }
        }
    }

    public function users(){

        $this->makeSuperAdmin();

        $valid_designations = [15,2055,2059,2068,2101,2,4,14,25,31,34,36,38,40,2060,2081,2082,3104,47,2054,2064,2066,12,53,1053,2056,2057,2058,2061,2080,2084,3153,2074];

        $hrms_employees = DB::connection('touchstone')->table('Employee')->whereIn('DesignationID', $valid_designations)->where('Active', 1)->get();

        foreach($hrms_employees as $hrms_employee){

            $check_user = false;

            $user = User::where('email', $hrms_employee['EmailAddress'])->first();

            if($user){
                $check_user = true;
            }
            else{
                $user = new User;
                $check_user = false;
            }

            $user->hrms_id = $hrms_employee['ID'];
            $user->name = $hrms_employee['Name'];
            $user->hrms_designation_id = $hrms_employee['DesignationID'];

            // designation
            $designation = Designation::where('hrms_id', $user->hrms_designation_id)->first();

            if($designation){
                $user->designation_id = $designation->id;
            }


            // campaign
            $campaign = Campaign::where('hrms_id', $hrms_employee['CampaignID'])->first();
            if($campaign){
                $user->campaign_id = $campaign->id;
            }

            $user->email = $hrms_employee['EmailAddress'];

            if(env('APP_ENV' == "production")){
                $user->password = Hash::make($hrms_employee['Password']);
            }
            else{
                $user->password = Hash::make("test123");
            }


            $user->status = $hrms_employee['Active'];

            $user->save();

            if($check_user == false){

                // assign role

                $directors = [15,2055,2059,2068,2101];
                $managers = [2,4,14,25,31,36,38,40,2060,2081,2082,3104,34];
                $team_leads = [47,2054,2064,2066];
                $associates = [12,53,1053,2056,2057,2058,2061,2080,2084,2074];

                if(in_array($user->hrms_designation_id, $directors)){
                    $user->assignRole('Director');
                }
                elseif(in_array($user->hrms_designation_id, $managers)){
                    $user->assignRole('Manager');
                }
                elseif(in_array($user->hrms_designation_id, $team_leads)){
                    $user->assignRole('Team Lead');
                }
                elseif(in_array($user->hrms_designation_id, $associates)){
                    $user->assignRole('Associate');
                }

            }

        }
    }

    public function inactiveUsers(){

        $valid_designations = [15,2055,2059,2068,2101,2,4,14,25,31,34,36,38,40,2060,2081,2082,3104,47,2054,2064,2066,12,53,1053,2056,2057,2058,2061,2080,2084, 3153,2074];

        $hrms_employees = DB::connection('touchstone')->table('Employee')->whereIn('DesignationID', $valid_designations)->where('Active', 0)->get();

        foreach($hrms_employees as $hrms_employee){

            $user = User::where('email', $hrms_employee['EmailAddress'])->first();

            if($user){
                $user->status = 0;
                $user->save();
            }

        }
    }

    public function makeSuperAdmin(){

        $user = User::where('email', 'admin@touchstone.com.pk')->first();

        if(!$user){
            $user = new User;
            $user->name = "Adminstrator";
            $user->email = "admin@touchstone.com.pk";
            $user->password = Hash::make("Touchstone@786");
            $user->status = 1;
            $user->save();

            $user->assignRole("Super Admin");
        }

    }
}