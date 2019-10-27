<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use Auth;
class PostController extends Controller
{
    public function allpost()
    {
    	$posts = Post::with('user','category')->get();
    	//$posts = Post::all();
    	return response()->json(['posts'=>$posts],200);
    }
    public function saveNewPost(Request $request)
    {
    	$post = new Post();
    	$post->title = $request->title;
    	$post->short_description = $request->short_description;
    	$post->long_description = $request->long_description;
    	$post->category_id = $request->category_id;
    	$post->user_id = Auth::user()->id;
    	$post->photo = "images";
    	$post->save();
    	return ["message"=>"Ok"];
    }
}
