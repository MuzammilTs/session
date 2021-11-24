<?php

namespace App\Providers;

use App\Models\MeetingType;
use Illuminate\Support\ServiceProvider;

// use App\Models\Sanctum\PersonalAccessToken;
// use Laravel\Sanctum\Sanctum;

use Illuminate\Support\Facades\View;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {

        // Sanctum::usePersonalAccessTokenModel(PersonalAccessToken::class);

        // $menu_meeting_types = MeetingType::orderBy('id', 'asc')->get();
        // View::share('menu_meeting_types', $menu_meeting_types);
    }
}
