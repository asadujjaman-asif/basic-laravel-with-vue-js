<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;


class CategoryController extends Controller
{
    public function add_category(Request $request)
    {
    	$this->validate($request,[
            'cat_name'=>'required|min:2|max:50'
        ]);
    	$categorys = New Category();
    	$categorys->title = $request->cat_name;
    	$categorys->save();
    	return ["message"=>"Ok"];
    }
    public function get_category_list()
    {
    	$categories=Category::all();
    	return response()->json(['categories'=>$categories],200);
    }
}
