<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
use Auth;
use Image;
class PostController extends Controller
{
    
    /*mir mamun: 1b7ce6c29e33b818c2e1c82983ff5281*/
    public function allpost()
    {
    	$posts = Post::with('user','category')->get();
    	//$posts = Post::all();
    	return response()->json(['posts'=>$posts],200);
    }
    public function saveNewPost(Request $request)
    {
    	$this->validate($request,[
            'title'=>'required|min:2|max:50',
            'long_description'=>'required|min:50|max:500'
        ]);
        $strpos = strpos($request->photo,';');
        $substr = substr($request->photo,0,$strpos);
        $exp    = explode('/', $substr)[1];
        $imagesname = time().".".$exp;
        $img = Image::make($request->photo)->resize(300, 200);
        $upload_path = public_path()."/assets/postiamges/";
        $img->save($upload_path.$imagesname);
        $post = new Post();
    	$post->title = $request->title;
    	$post->short_description = $request->short_description;
    	$post->long_description = $request->long_description;
    	$post->category_id = $request->category_id;
    	$post->user_id = Auth::user()->id;
    	$post->photo = $imagesname;
    	$post->save();
    	return ["message"=>"Ok"];
    }
    public function postdelete($id)
    {
        $post = Post::find($id);
        $images_path = public_path()."/assets/postiamges/";
        $images = $images_path.$post->photo;
        if(file_exists($images)){
            @unlink($images);
        }
        $post->delete();
    }
    public function editPost($id)
    {
        $post = Post::find($id);
        return response()->json(['post'=>$post],200);
    }
    public function updatePost(Request $request,$id)
    {
        $post = Post::find($id);
        $this->validate($request,[
            'title'=>'required|min:2|max:50',
            'long_description'=>'required|min:50|max:500'
        ]);
        
        if($request->photo!=$post->photo){
            $strpos = strpos($request->photo,';');
            $substr = substr($request->photo,0,$strpos);
            $exp    = explode('/', $substr)[1];
            $imagesname = time().".".$exp;
            $img = Image::make($request->photo)->resize(300, 200);
            $upload_path = public_path()."/assets/postiamges/";
            $images = $upload_path.$post->photo;
            $img->save($upload_path.$imagesname);
            if(file_exists($images)){
                @unlink($images);
            }
        }else{
            $imagesname = $post->photo;
        }
        $post->title = $request->title;
        $post->short_description = $request->short_description;
        $post->long_description = $request->long_description;
        $post->category_id = $request->category_id;
        $post->user_id = Auth::user()->id;
        $post->photo = $imagesname;
        $post->save();
        return ["message"=>"Ok"];
    }
}
