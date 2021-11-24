<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    public function index()
    {
        return response()->json(["message"=>"Welcome to Login Page"]);
    }

    public function login(Request $request)
    {

        $rules = [
            'email' => 'required|min:3',
            'password' => 'required'
        ];

        $request->validate($rules);

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            return response()->json(["message"=>"Login successful"]); 
        } else {
/*             Session::flash('error', 'Invalid Username or Password');
            return redirect()->back(); */
            return response()->json(["message"=>"Login unsuccessful"]);
        }
    }

    public function logout()
    {
        Auth::logout();

        return response()->json(["message"=>"Logout successful"]); 
    }
}
