<?php

namespace App\Http\Controllers\Meetings;

use PDO;
use App\Models\User;
use Illuminate\Http\Request;

use App\Models\MeetingRequest;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class MeetingRequestController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $query = new MeetingRequest;

        // $query = $this->search($query, $request);

        if(Auth::user()->roles[0]->name == "Associate"){
            $query = $query->where('user_id', Auth::user()->id);
        }
        elseif(in_array(Auth::user()->roles[0]->name, ["Manager", "Team Lead"])){
            $query = $query->where('team_lead_id', Auth::user()->id);
        }

        $query = $query->orderBy('id', 'desc');

        $meeting_requests = $query->paginate(15);

        return view('meeting-requests.index')->with(compact('meeting_requests'));

    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        return view('meeting-requests.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $meeting_type_id = 1)
    {
        // check already exist
        $request_count = MeetingRequest::where('user_id', Auth::user()->id)->where('status', 0)->count();

        if($request_count > 0){
            Session::flash('error', 'Unable to send the request. You already have an opened request.');
            return redirect()->back();
        }

        $campaign_id = Auth::user()->campaign_id;

        $team_lead = User::role(["Team Lead"])->where('campaign_id', $campaign_id)->first();

        if(!$team_lead){
            $team_lead = User::role(["Manager"])->where('campaign_id', $campaign_id)->first();
        }

        $rules = [
            'reason' => 'required'
        ];

        $request->validate($rules);

        // update request
        $request->request->add(['user_id' => Auth::user()->id, 'team_lead_id' => $team_lead->id]);

        if(MeetingRequest::create($request->all())){
            Session::flash('success', 'Session request sent successfully!');
            return redirect()->route('home');
        }
        else{
            Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back();
        }


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $meeting_request = MeetingRequest::where("user_id", Auth::user()->id)->findOrFail($id);
        return view('meeting-requests.edit')->with(compact('meeting_request'));

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
        $meeting_request = MeetingRequest::where("user_id", Auth::user()->id)->findOrFail($id);

        $rules = [
            'reason' => 'required'
        ];

        $request->validate($rules);

        if ($meeting_request->update($request->all())) {
            Session::flash('success', 'Session Request updated successfully!');
            return redirect()->route('meeting-requests.index');
        } else {
            Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back();
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $meeting = MeetingRequest::findOrFail($id);

        if ($meeting->delete()) {
            Session::flash('success', 'Session request deleted successfully!');
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
        $meeting = MeetingRequest::withTrashed()->findOrFail($id);

        if ($meeting->restore()) {
            Session::flash('success', 'Session request restored successfully!');
            return redirect()->back();
        } else {
            Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back();
        }
    }

    public function reject($id){
        $meeting = MeetingRequest::findOrFail($id);
        $meeting->status = 2;
        $meeting->save();
        Session::flash('success', 'Session request rejected successfully!');
        return redirect()->back();
    }

}