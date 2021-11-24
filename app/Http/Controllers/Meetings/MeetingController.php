<?php

namespace App\Http\Controllers\Meetings;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

use Illuminate\Http\Request;
use App\Models\Meeting;
use App\Models\Attendee;
use App\Models\Campaign;
use App\Models\MeetingRequest;
use App\Models\MeetingType;
use App\Models\Reason;
use App\Models\User;
use Carbon\Carbon;

class MeetingController extends Controller
{

    public function checkPermission($type_id, $action = "index"){

        if($type_id){
            $type = MeetingType::find($type_id);
        }

        // allow super admin and others
        if(in_array(Auth::user()->roles[0]->name, ['Super Admin', 'Director'])){
            return true;
        }

        // check assigned campaigns
        $campaigns = $type->campaigns->pluck('id')->toArray();

        // like one on one sessions
        if(count($campaigns) == 0){
            if(in_array($action, ['show', 'index'])){
                return true;
            }
            if(in_array(Auth::user()->roles[0]->name, ['Manager', 'Team Lead']) && in_array($action, ['create', 'edit', 'destroy', 'restore'])){
                return true;
            }
            abort(403);
        }
        else{
            // other sessions
            if(in_array(Auth::user()->campaign_id, $campaigns)){
                // check action
                if(in_array($action, ['show', 'index'])){
                    return true;
                }
                if(in_array(Auth::user()->roles[0]->name, ['Manager', 'Team Lead']) && in_array($action, ['create', 'edit', 'destroy', 'restore'])){
                    return true;
                }

                abort(403);
            }

        }

        abort(403);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request, $type = 1)
    {

        // $this->checkPermission($type, "index");

        $type = MeetingType::find($type);

        $query = new Meeting;

        // if(Auth::user()->roles[0]->name == "Associate" && count($type->campaigns) == 0){
        //     $query = $query->where('associate_id', Auth::user()->id);
        // }
        // elseif(in_array(Auth::user()->roles[0]->name, ["Manager", "Team Lead"]) && count($type->campaigns) == 0){
        //     $query = $query->where('user_id', Auth::user()->id);
        // }

        $query = $query->where('meeting_type_id', $type->id);

        $query = $this->search($query, $request);

        $query = $query->orderBy('id', 'desc');

        $meetings = $query->paginate(15);

        $users = User::role(["Manager", "Team Lead"])->orderBy('id', 'ASC')->get();

        $campaigns = Campaign::orderBy('name', 'ASC')->get();
        
        $data= array(
            "meetings"=>$meetings,
            "type"=>$type,
            "users"=>$users,
            "campaigns"=>$campaigns
        );

        /* return view('meetings.index')->with(compact('meetings', 'type', 'users', 'campaigns')); */
        return response()->json(["status" => "success", "error" => false,"data" =>$data ]);
    }

    public function search($query, $request)
    {
        if ($request->has('scheduled_by')) {
            if (!empty($request->scheduled_by)) {
                $query = $query->where('user_id', $request->scheduled_by);
            }
        }

        if ($request->has('campaign_id')) {
            if (!empty($request->campaign_id)) {
                $query = $query->where('campaign_id', $request->campaign_id);
            }
        }

        if ($request->has('from_date')) {
            if (!empty($request->from_date) && !empty($request->to_date)) {
                $from_date = Carbon::createFromFormat('d/m/Y', $request->from_date);
                $to_date = Carbon::createFromFormat('d/m/Y', $request->to_date);
                $query = $query->whereDate('date', '>=',$from_date->toDateString());
                $query = $query->whereDate('date', '<=',$to_date->toDateString());
            }
            elseif(!empty($request->from_date)){
                $from_date = Carbon::createFromFormat('d/m/Y', $request->from_date);
                $query = $query->whereDate('date', $from_date->toDateString());
            }
        }

        if ($request->has('status')) {
            if($request->status >= 0) {
                $query = $query->where('status', (int)$request->status);
            }
        }

        return response()->json(["status" => "success", "error" => false,"data" => $query],200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create($type = 1, $meeting_request_id = NULL, $meeting_request_user_id = NULL)
    {

/*         $this->checkPermission($type, "create");

        $campaign_id = Auth::user()->campaign_id; */

        $reasons = Reason::orderBy('id', 'ASC')->get();
        $users = User::where('id', '>', 1)->orderBy('id', 'ASC')->get();

        $associates = User::where('id', '>', 1)->where('campaign_id', $campaign_id)->orderBy('id', 'ASC')->get();

        $type = MeetingType::find($type);

        return response()->json(["status" => "success", "error" => false,"data" => $query],200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $meeting_type_id = 1, $meeting_request_id = NULL, $meeting_request_user_id = NULL)
    {

        /* $campaign_id = Auth::user()->campaign_id;

        $this->checkPermission($meeting_type_id, "create"); */

        $rules = [
            'reason_id' => 'required',
            'date' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
            'attendees' => 'required'
        ];

        $request->validate($rules);

        // set data
        $meeting_date = Carbon::createFromFormat('d/m/Y', $request->date);
        // Start Time
        $start_time = Carbon::createFromFormat('g:i A', $request->start_time);
        // End Time
        $end_time = Carbon::createFromFormat('g:i A', $request->end_time);

        // update request
        $request->request->add(['campaign_id' => $campaign_id, 'meeting_type_id' => $meeting_type_id, 'meeting_request_id' => $meeting_request_id, 'user_id' => Auth::user()->id, 'date' => $meeting_date->toDateString(), 'start_time' => $start_time->toTimeString(), 'end_time' => $end_time->toTimeString()]);

        $meeting = Meeting::create($request->except('attendees'));

        // save attendees
        foreach ($request->attendees as $attendee) {
            Attendee::create(['user_id' => $attendee, 'meeting_id' => $meeting->id]);
        }

        if($meeting_request_id){
            $meeting_request = MeetingRequest::find($meeting_request_id);
            if($meeting_request){
                $meeting_request->status = 1;
                $meeting_request->save();
            }
        }

        Session::flash('success', 'Session created successfully!');

        return redirect()->route('meetings.index', $meeting_type_id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $meeting = Meeting::findOrFail($id);

        return view('meetings.show')->with(compact('meeting'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

        $meeting = Meeting::where('status', 0)->where('id', $id)->firstOrFail();

        $this->checkPermission($meeting->meeting_type_id, "edit");

        $campaigns = Campaign::orderBy('name', 'ASC')->get();
        $reasons = Reason::orderBy('id', 'ASC')->get();
        $users = User::where('id', '>', 1)->orderBy('id', 'ASC')->get();

        $associates = User::where('id', '>', 1)->where('campaign_id', $meeting->campaign_id)->orderBy('id', 'ASC')->get();

        $type = MeetingType::find($meeting->meeting_type_id);

        return view('meetings.edit')->with(compact('meeting', 'campaigns', 'reasons', 'users', 'type', 'associates'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $meeting = Meeting::findOrFail($id);

        $this->checkPermission($meeting->meeting_type_id, "edit");

        $rules = [
            'reason_id' => 'required',
            'date' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
            'attendees' => 'required'
        ];

        $request->validate($rules);

        // set data
        $meeting_date = Carbon::createFromFormat('d/m/Y', $request->date);
        // Start Time
        $start_time = Carbon::createFromFormat('g:i A', $request->start_time);
        // End Time
        $end_time = Carbon::createFromFormat('g:i A', $request->end_time);

        // update request
        $request->request->add(['user_id' => Auth::user()->id, 'date' => $meeting_date->toDateString(), 'start_time' => $start_time->toTimeString(), 'end_time' => $end_time->toTimeString()]);

        $meeting->update($request->except('attendees'));

        $meeting->attendees()->delete();
        // save attendees
        foreach ($request->attendees as $attendee) {
            Attendee::create(['user_id' => $attendee, 'meeting_id' => $meeting->id]);
        }

        Session::flash('success', 'Session updated successfully!');

        return redirect()->route('meetings.index', $meeting->meeting_type_id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $meeting = Meeting::findOrFail($id);

        $this->checkPermission($meeting->meeting_type_id, "destroy");

        if ($meeting->delete()) {
            Session::flash('success', 'Session deleted successfully!');
            return redirect()->back();
        } else {
            Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back();
        }
    }

    /**
     * Restore the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function restore($id)
    {
        $meeting = Meeting::withTrashed()->findOrFail($id);

        $this->checkPermission($meeting->meeting_type_id, "restore");

        if ($meeting->restore()) {
            Session::flash('success', 'Meeting restored successfully!');
            return redirect()->back();
        } else {
            Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back();
        }
    }

    public function complete($id){
        $meeting = Meeting::findOrFail($id);
        return view('meetings.complete')->with(compact('meeting'));
    }

    public function markComplete(Request $request, $id)
    {
        $meeting = Meeting::findOrFail($id);

        $rules = [
            'rating' => 'required',
            'comments' => 'required'
        ];

        $request->validate($rules);

        $this->checkPermission($meeting->meeting_type_id, "edit");

        $request->request->add(['status' => 1]);

        $meeting->update($request->except('meeting_id'));

        Session::flash('success', 'Session marked completed successfully!');

        return redirect()->route('meetings.show', $meeting->id);
    }
}