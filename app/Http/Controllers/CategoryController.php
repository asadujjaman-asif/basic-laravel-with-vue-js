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
    public function delete_category($id)
    {
        $category = Category::find($id);
        $category->delete();
    }
    public function edit_category($id)
    {
        $category = Category::find($id);
        return response()->json(['category'=>$category],200);
    }
    public function update_category(Request $request,$id)
    {
        $this->validate($request,[
            'title'=>'required|min:2|max:50'
        ]);
        $category = Category::find($id);
        $category->title =$request->title;
        $category->save();
    }
}
