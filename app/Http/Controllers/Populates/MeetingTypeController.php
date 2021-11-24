<?php

namespace App\Http\Controllers\Populates;

use App\Http\Controllers\Controller;
use App\Models\Campaign;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

use Illuminate\Http\Request;
use App\Models\MeetingType;

class MeetingTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $query = new MeetingType;

        $query = $this->search($query, $request);

        $query = $query->sortable(['id', 'desc']);

        $types = $query->paginate(15);

        /* return view('meeting-type.index')->with(compact('types')); */
        return response()->json(["status" => "success", "error" => false, "count" => count($types), "data" => $types],200);
    }

    public function search($query, $request)
    {
        if ($request->has('name')) {
            if (!empty($request->name)) {
                $query = $query->where('name', 'LIKE', "%{$request->name}%");
            }
        }

        if ($request->has('status')) {
            if ($request->status >= 0) {
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
    public function create()
    {
        $campaigns = Campaign::where('status', 1)->get();
       /*  return view('meeting-type.create')->with(compact('campaigns')); */

       return response()->json(["status" => "success", "error" => false, "count" => count($campaigns), "data" => $campaigns],200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [
            'name' => 'required|unique:meeting_types',
            'campaigns' => 'required',
            'status' => 'required|numeric'
        ];

        $request->validate($rules);

        $type = MeetingType::create($request->except('campaigns'));

        $type->campaigns()->attach($request->campaigns);

        if ($type) {
            /* Session::flash('success', 'Meeting Type created successfully!');
            return redirect()->route('meeting-types.index'); */
            return response()->json(["status" => "success", "error" => false, "message" => "Success! Meeting created."], 201);           
        } else {
            /* Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "success", "error" => false, "message" => "Failed! Meeting created."], 401);
           
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
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $type = MeetingType::findOrFail($id);
        $campaigns = Campaign::where('status', 1)->get();
        /* return view('meeting-type.edit')->with(compact('type', 'campaigns')); */
        return response()->json(["status" => "success", "error" => false,["campaign"=>$campaigns,"type"=>$type] ],201);
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
        $type = MeetingType::findOrFail($id);
        $rules = [
            'status' => 'required|numeric',
            'campaigns' => 'required',
        ];

        if ($type->name != $request->name) {
            $rules['name'] = 'required|unique:meeting_types';
        }

        $request->validate($rules);

        $type->campaigns()->sync($request->campaigns);

        if ($type->update($request->all())) {
           /*  Session::flash('success', 'Meeting Type updated successfully!');
            return redirect()->route('meeting-types.index'); */
            return response()->json(["status" => "success", "error" => false, "message" => "Success! Meeting Type."], 201);
        } else {
        /*     Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "Failed", "error" => false, "message" => "Failed!"], 401);
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
        $type = MeetingType::findOrFail($id);

        if ($type->delete()) {
            /* Session::flash('success', 'Meeting Type deleted successfully!');
            return redirect()->back(); */
            
            return response()->json(["status" => "success", "error" => false, "message" => "Success! Meeting Type deleted"], 201);
        } else {
/*             Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "failed", "error" => false, "message" => "failed!"], 401);
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
        $type = MeetingType::withTrashed()->findOrFail($id);

        if ($type->restore()) {
            /* Session::flash('success', 'Meeting Type restored successfully!');
            return redirect()->back(); */
            return response()->json(["status" => "failed", "error" => false, "message" => "success! Meeting Restore"], 201);
        } else {
/*             Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "failed", "error" => false, "message" => "failed! Meeting Not Restore."], 401);
        }
    }
}
