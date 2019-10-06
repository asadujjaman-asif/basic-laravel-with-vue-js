<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
class PostController extends Controller
{
    public function allpost()
    {
    	$posts = Post::with('user','category')->get();
    	//$posts = Post::all();
    	return response()->json(['posts'=>$posts],200);
    }
}
