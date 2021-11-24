<?php

namespace App\Http\Controllers\Meetings;

use App\Models\User;
use App\Models\Meeting;

use Illuminate\Http\Request;
use App\Models\MeetingReview;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class MeetingReviewController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {


    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {


    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $meeting_id)
    {

        $meeting = Meeting::findOrFail($meeting_id);

        $rules = [
            'rating' => 'required|min:0|max:5',
            'comments' => 'required'
        ];

        $request->validate($rules);

        // update request
        $request->request->add(['user_id' => Auth::user()->id, 'meeting_id' => $meeting->id]);

        if(MeetingReview::create($request->all())){
            Session::flash('success', 'Session review posted successfully!');
            return redirect()->back();
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

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

    }

    /**
     * Restore the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function restore($id)
    {

    }

}