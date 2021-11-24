<?php

namespace App\Http\Controllers\Populates;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

use Illuminate\Http\Request;
use App\Models\Campaign;


class CampaignController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $query = new Campaign;

        $query = $this->search($query, $request);

        $query = $query->sortable(['id', 'desc']);

        $campaigns = $query->paginate(15);

        /* return view('campaign.index')->with(compact('campaigns')); */
        return response()->json(["status" => "success", "error" => false, "count" => count($campaigns), "data" => $campaigns],200);
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

        /* return $query; */
        return response()->json(["status" => "success", "error" => false,"data" => $query],200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('campaign.create');
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
            'name' => 'required|unique:campaigns',
            'status' => 'required|numeric'
        ];

        $request->validate($rules);

        if (Campaign::create($request->all())) {
            /* Session::flash('success', 'Campaign created successfully!');
            return redirect()->route('campaigns.index'); */
            return response()->json(["status" => "success", "error" => false, "message" => "Success! Campaign created."], 201);
        } else {
/*             Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "success", "error" => false, "message" => "Failed! Campaign created."], 401);
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
        $campaign = Campaign::findOrFail($id);
        /* return view('campaign.edit')->with(compact('campaign')); */
        return response()->json(["status" => "success", "error" => false,"campaign"=>$campaign], 201);
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
        $campaign = Campaign::findOrFail($id);
        $rules = [
            'status' => 'required|numeric'
        ];

        if ($campaign->name != $request->name) {
            $rules['name'] = 'required|unique:campaigns';
        }

        $request->validate($rules);

        if ($campaign->update($request->all())) {
            /* Session::flash('success', 'Campaign updated successfully!');
            return redirect()->route('campaigns.index'); */
           return response()->json(["status" => "success", "error" => false, "message" => "Success! Campaign update."], 201);
        } else {
            /* Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "Failed", "error" => false, "message" => "Failed! Campaign created."], 401);
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
        $campaign = Campaign::findOrFail($id);

        if ($campaign->delete()) {
            /* Session::flash('success', 'Campaign deleted successfully!');
            return redirect()->back(); */
            return response()->json(["status" => "success", "error" => false, "message" => "Success! Campaign deleted"], 201);
        } else {
          /*   Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "failed", "error" => false, "message" => "failed! Campaign not deleted."], 401);
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
        $campaign = Campaign::withTrashed()->findOrFail($id);

        if ($campaign->restore()) {
            /* Session::flash('success', 'Campaign restored successfully!');
            return redirect()->back(); */
            return response()->json(["status" => "success", "error" => false, "message" => "Success! Campaign Restore"], 201);
        } else {
         /*    Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "failed", "error" => false, "message" => " Error"], 401);
        }
    }
}