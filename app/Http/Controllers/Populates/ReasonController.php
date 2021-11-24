<?php

namespace App\Http\Controllers\Populates;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

use Illuminate\Http\Request;
use App\Models\Reason;

class ReasonController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $query = new Reason;

        $query = $this->search($query, $request);

        $query = $query->sortable(['id', 'desc']);

        $reasons = $query->paginate(15);
/*  */
        /* return view('reason.index')->with(compact('reasons')); */
        return response()->json(["status" => "success", "error" => false, "count" => count($reasons), "data" => $reasons],200);
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

       /*  return $query; */
       return response()->json(["status" => "success", "error" => false,"data" => $query],200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('reason.create');
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
            'name' => 'required|unique:reasons',
            'status' => 'required|numeric'
        ];

        $request->validate($rules);

        if (Reason::create($request->all())) {
           /*  Session::flash('success', 'Reason created successfully!');
            return redirect()->route('reasons.index'); */
            return response()->json(["status" => "success", "error" => false, "message" => "Success! Reason created."], 201);
        } else {
            /* Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "success", "error" => false, "message" => "Failed! Reason created."], 401);
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
        $reason = Reason::findOrFail($id);
        /* return view('reason.edit')->with(compact('reason')); */
        return response()->json(["status" => "success", "error" => false,"reason"=>$reason], 201);
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
        $reason = Reason::findOrFail($id);
        $rules = [
            'status' => 'required|numeric'
        ];

        if ($reason->name != $request->name) {
            $rules['name'] = 'required|unique:reasons';
        }

        $request->validate($rules);

        if ($reason->update($request->all())) {
            /* Session::flash('success', 'Reason updated successfully!');
            return redirect()->route('reasons.index'); */
            return response()->json(["status" => "success", "error" => false, "message" => "Success! Reason update."], 201);
        } else {
           /*  Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "Failed", "error" => false, "message" => "Failed! Reason update."], 401);
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
        $reason = Reason::findOrFail($id);

        if ($reason->delete()) {
            /* Session::flash('success', 'reason deleted successfully!');
            return redirect()->back(); */
            return response()->json(["status" => "success", "error" => false, "message" => "Success! Reason deleted"], 201);
        } else {
           /*  Session::flash('error', 'Some error occured. Please try again!');
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
        $reason = Reason::withTrashed()->findOrFail($id);

        if ($reason->restore()) {
            /* Session::flash('success', 'Reason restored successfully!');
            return redirect()->back(); */
            return response()->json(["status" => "success", "error" => false, "message" => "Success! Reason Restore"], 201);
        } else {
           /*  Session::flash('error', 'Some error occured. Please try again!');
            return redirect()->back(); */
            return response()->json(["status" => "failed", "error" => false, "message" => " Error"], 401);
        }
    }
}
