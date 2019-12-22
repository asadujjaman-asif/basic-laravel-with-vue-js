<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use App\Category;
class BlogController extends Controller
{
    public function getAllBlogPost()
    {
    	$posts = Post::with('user','category')->orderBy("id","desc")->get();
    	return response()->json(['posts'=>$posts],200);
    }
    public function singlePostById($id)
    {
    	$post= Post::with('user','category')->where("id",$id)->first();
    	return response()->json(['post'=>$post],200);
    }
    public function getAllCategories()
    {
       $categories= Category::all();
        return response()->json(['categories'=>$categories],200);
    }
    public function getPostByCatId($id)
    {
        $postbycat= Post::with('user','category')->where("category_id",$id)->first();
        return response()->json(['postbycat'=>$postbycat],200);
    }
}
