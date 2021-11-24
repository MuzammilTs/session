<?php

namespace App\Http\Controllers\Populates;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Session;

use Illuminate\Http\Request;
use App\Models\AllowedCampaign;

class AllowedCampaignController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $query = new AllowedCampaign;

        $query = $this->search($query, $request);

        $query = $query->sortable(['id', 'desc']);

        $campaigns = $query->paginate(15);

        /* return view('allowed-campaign.index')->with(compact('campaigns')); */
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
            if (!empty($request->status)) {
                $query = $query->where('status', $request->status);
            }
        }

        /* return $query; */
        return response()->json(["status" => "success", "error" => false, "data" => $query],200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return response()->json(["status" => "success", "error" => false, "message"=>"All the Allowed Campaigns are here"],200);
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
            'name' => 'required|unique:allowed_campaigns',
            'status' => 'required|numeric'
        ];

        $request->validate($rules);

        if (AllowedCampaign::create($request->all())) {
            /* Session::flash('success', 'Allowed Campaign created successfully!'); */
            return response()->json(["status" => "success", "error" => false, "message" => "Success! Campaign created."], 201);
        } else {
            /* Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "error", "error" => false, "message"=>"Error"],400);
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
        $campaign = AllowedCampaign::findOrFail($id);
        return view('allowed-campaign.edit')->with(compact('campaign'));
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
        $campaign = AllowedCampaign::findOrFail($id);
        $rules = [
            'status' => 'required|numeric'
        ];

        if ($campaign->name != $request->name) {
            $rules['name'] = 'required|unique:allowed_campaigns';
        }

        $request->validate($rules);

        if ($campaign->update($request->all())) {
            Session::flash('success', 'Allowed Campaign updated successfully!');
            return redirect()->route('allowed-campaigns.index');
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
        $campaign = AllowedCampaign::findOrFail($id);

        if ($campaign->delete()) {
            Session::flash('success', 'Allowed Campaign deleted successfully!');
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
        $campaign = AllowedCampaign::withTrashed()->findOrFail($id);

        if ($campaign->restore()) {
            Session::flash('success', 'Allowed Campaign restored successfully!');
            return redirect()->back();
        } else {
            Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back();
        }
    }
}
