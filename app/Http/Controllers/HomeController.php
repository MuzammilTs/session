<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Meeting;
use Illuminate\Http\Request;
use App\Models\MeetingRequest;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use App\Notifications\WebNotification;
use App\Notifications\EmailNotification;
use Illuminate\Support\Facades\Notification;

class HomeController extends Controller
{
    public function index()
    {

        $one_on_one_sessions = $this->getOneOnOneSessions();
        $calibration_sessions = Meeting::where('meeting_type_id', 2)->count();
        $mass_training_sessions = Meeting::where('meeting_type_id', 3)->count();
        $meeting_requests = $this->getMeetingRequests();
        $upcoming_meetings = $this->getUpcomingMeetings();


        return view('home')->with(compact('one_on_one_sessions', 'calibration_sessions', 'mass_training_sessions', 'meeting_requests', 'upcoming_meetings'));
    }

    public function getUpcomingMeetings(){

        $user_id = Auth::user()->id;

        $query = new Meeting;

        $query = $query->where('status', 0);

        if(in_array(Auth::user()->roles[0]->name, ["Associate", "Manager", "Team Lead"])){
            $query = $query->where(function($query) use ($user_id){
                $query->where('user_id', $user_id)
                    ->orWhere('associate_id', $user_id)
                    ->orWhereHas('attendees', function ($query) use ($user_id) {
                        $query->where('user_id', $user_id);
                    });
            });
        }


        $query = $query->orderBy('date', 'asc');
        $upcoming_meetings = $query->limit(10)->get();

        return $upcoming_meetings;
    }

    public function getOneOnOneSessions(){
        $query = new Meeting;

        if(Auth::user()->roles[0]->name == "Associate"){
            $query = $query->where('associate_id', Auth::user()->id);
        }
        elseif(in_array(Auth::user()->roles[0]->name, ["Manager", "Team Lead"])){
            $query = $query->where('user_id', Auth::user()->id);
        }

        $query = $query->where('meeting_type_id', 1);

        $one_on_one_sessions = $query->count();

        return $one_on_one_sessions;
    }

    public function getMeetingRequests(){
        $query = new MeetingRequest;

        if(Auth::user()->roles[0]->name == "Associate"){
            $query = $query->where('user_id', Auth::user()->id);
        }
        elseif(in_array(Auth::user()->roles[0]->name, ["Manager", "Team Lead"])){
            $query = $query->where('team_lead_id', Auth::user()->id);
        }

        $meeting_requests = $query->count();

        return $meeting_requests;
    }

    public function test()
    {
        $users = User::where('id', 1)->get();
        // $notification = Notification::send($users, new EmailNotification());
        // $notification = Notification::send($users, new WebNotification('Test Title3', 'Test Content2', 'home'));

        $notifications = Auth::user()->unreadNotifications;
        dd($notifications);
    }
}