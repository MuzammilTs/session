    <?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\Users\RoleController;
use App\Http\Controllers\Users\UserController;
use App\Http\Controllers\Meetings\MeetingController;
use App\Http\Controllers\Populates\ReasonController;
use App\Http\Controllers\Populates\CampaignController;
use App\Http\Controllers\Populates\MeetingTypeController;
use App\Http\Controllers\Meetings\MeetingReviewController;
use App\Http\Controllers\Meetings\MeetingRequestController;
use App\Http\Controllers\Populates\AllowedCampaignController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



/* Route::middleware('auth')->get('/', function () {
    return view('welcome');
}); */
// secured routes
/* Route::middleware('auth')->group(function () { */

    Route::prefix('allowed-campaigns')/* ->middleware('admin') */->group(function () {
        Route::get('/', [AllowedCampaignController::class, 'index'])->name('allowed-campaigns.index');
        Route::get('/create', [AllowedCampaignController::class, 'create'])->name('allowed-campaigns.create');
        Route::post('/create', [AllowedCampaignController::class, 'store'])->name('allowed-campaigns.store');
        /* 
        Route::get('/edit/{id}', [AllowedCampaignController::class, 'edit'])->name('allowed-campaigns.edit');
        Route::post('/edit/{id}', [AllowedCampaignController::class, 'update'])->name('allowed-campaigns.update');
        Route::get('/delete/{id}', [AllowedCampaignController::class, 'destroy'])->name('allowed-campaigns.destroy');
        Route::get('/restore/{id}', [AllowedCampaignController::class, 'restore'])->name('allowed-campaigns.restore'); */
    });
    Route::prefix('campaigns')/* ->middleware('admin') */->group(function () {
        Route::get('/', [CampaignController::class, 'index'])->name('campaigns.index');
        Route::get('/create', [CampaignController::class, 'create'])->name('campaigns.create');
        Route::post('/create', [CampaignController::class, 'store'])->name('campaigns.store');
        Route::get('/edit/{id}', [CampaignController::class, 'edit'])->name('campaigns.edit');
        Route::post('/edit/{id}', [CampaignController::class, 'update'])->name('campaigns.update');
        Route::get('/delete/{id}', [CampaignController::class, 'destroy'])->name('campaigns.destroy');
        Route::get('/restore/{id}', [CampaignController::class, 'restore'])->name('campaigns.restore');
    });
    Route::prefix('meeting-types')/* ->middleware('admin') */->group(function () {
        Route::get('/', [MeetingTypeController::class, 'index'])->name('meeting-types.index');
        Route::get('/create', [MeetingTypeController::class, 'create'])->name('meeting-types.create');
        Route::post('/create', [MeetingTypeController::class, 'store'])->name('meeting-types.store');
        Route::get('/edit/{id}', [MeetingTypeController::class, 'edit'])->name('meeting-types.edit');
        Route::post('/edit/{id}', [MeetingTypeController::class, 'update'])->name('meeting-types.update');
        Route::get('/delete/{id}', [MeetingTypeController::class, 'destroy'])->name('meeting-types.destroy');
        Route::get('/restore/{id}', [MeetingTypeController::class, 'restore'])->name('meeting-types.restore');
    });
    Route::prefix('reasons')/* ->middleware('admin') */->group(function () {
        Route::get('/', [ReasonController::class, 'index'])->name('reasons.index');
        Route::get('/create', [ReasonController::class, 'create'])->name('reasons.create');
        Route::post('/create', [ReasonController::class, 'store'])->name('reasons.store');
        Route::get('/edit/{id}', [ReasonController::class, 'edit'])->name('reasons.edit');
        Route::post('/edit/{id}', [ReasonController::class, 'update'])->name('reasons.update');
        Route::get('/delete/{id}', [ReasonController::class, 'destroy'])->name('reasons.destroy');
        Route::get('/restore/{id}', [ReasonController::class, 'restore'])->name('reasons.restore');
    });
    Route::prefix('sessions')->group(function () {

        Route::get('/{type?}', [MeetingController::class, 'index'])->name('meetings.index');
        Route::get('/create/{type?}/{meeting_request_id?}/{meeting_request_user_id?}', [MeetingController::class, 'create'])->name('meetings.create');
        Route::post('/create/{type?}/{meeting_request_id?}/{meeting_request_user_id?}', [MeetingController::class, 'store'])->name('meetings.store');
        Route::get('/show/{id}', [MeetingController::class, 'show'])->name('meetings.show');
        Route::get('/edit/{id}', [MeetingController::class, 'edit'])->name('meetings.edit');
        Route::post('/edit/{id}', [MeetingController::class, 'update'])->name('meetings.update');
        Route::get('/delete/{id}', [MeetingController::class, 'destroy'])->name('meetings.destroy');
        Route::get('/restore/{id}', [MeetingController::class, 'restore'])->name('meetings.restore');


        Route::get('/mark-complete/{id}', [MeetingController::class, 'complete'])->name('meetings.complete');
        Route::post('/mark-complete/{id}', [MeetingController::class, 'markComplete'])->name('meetings.complete.submit');

    });
/*    
    



    Route::prefix('roles')->middleware('admin')->group(function () {
        Route::get('/', [RoleController::class, 'index'])->name('roles.index');
        Route::get('/create', [RoleController::class, 'create'])->name('roles.create');
        Route::post('/create', [RoleController::class, 'store'])->name('roles.store');
        Route::get('/edit/{id}', [RoleController::class, 'edit'])->name('roles.edit');
        Route::post('/edit/{id}', [RoleController::class, 'update'])->name('roles.update');
        Route::get('/delete/{id}', [RoleController::class, 'destroy'])->name('roles.destroy');
        Route::get('/restore/{id}', [RoleController::class, 'restore'])->name('roles.restore');
    }); */

/*      */


    // request session
/*     Route::prefix('session-requests')->group(function () {
        Route::get('/', [MeetingRequestController::class, 'index'])->name('meeting-requests.index');
        Route::get('/create', [MeetingRequestController::class, 'create'])->name('meeting-requests.create');
        Route::post('/create', [MeetingRequestController::class, 'store'])->name('meeting-requests.store');
        Route::get('/edit/{id}', [MeetingRequestController::class, 'edit'])->name('meeting-requests.edit');
        Route::post('/edit/{id}', [MeetingRequestController::class, 'update'])->name('meeting-requests.update');
        Route::get('/delete/{id}', [MeetingRequestController::class, 'destroy'])->name('meeting-requests.destroy');
        Route::get('/restore/{id}', [MeetingRequestController::class, 'restore'])->name('meeting-requests.restore');

        Route::get('/reject/{id}', [MeetingRequestController::class, 'reject'])->name('meeting-requests.reject');
    }); */

    // request session
/*     Route::prefix('session-reviews')->group(function () {
        Route::post('/create/{meeting_id}', [MeetingReviewController::class, 'store'])->name('meeting-reviews.store');
        Route::get('/edit/{id}', [MeetingReviewController::class, 'edit'])->name('meeting-reviews.edit');
        Route::post('/edit/{id}', [MeetingReviewController::class, 'update'])->name('meeting-reviews.update');
        Route::get('/delete/{id}', [MeetingReviewController::class, 'destroy'])->name('meeting-reviews.destroy');
    });



    Route::prefix('users')->middleware('admin')->group(function () {
        Route::get('/', [UserController::class, 'index'])->name('users.index');
        Route::get('/edit/{id}', [UserController::class, 'edit'])->name('users.edit');
        Route::post('/edit/{id}', [UserController::class, 'update'])->name('users.update');
    }); */
/* }); */
// unsecure routes
/* Route::middleware('guest')->group(function () {

    Route::get('/login', [LoginController::class, 'index'])->name('login');
    Route::post('/login', [LoginController::class, 'login'])->name('login.submit');
}); */
