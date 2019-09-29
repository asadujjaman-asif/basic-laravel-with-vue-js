<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
class PostController extends Controller
{
    public function allpost()
    {
    	return $post = Post::with('user','category')->get();
    }
}
