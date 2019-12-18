<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('public.home');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
/*Route::get('/{anypath}', 'HomeController@index')->where('path','.*');*/
//Category

Route::group(['middleware'=>['auth']], function(){
	Route::post('/add-category','CategoryController@add_category');
	Route::get('/category','CategoryController@get_category_list');
	Route::get('/category/{id}','CategoryController@delete_category');
	Route::get('/edit-category/{id}','CategoryController@edit_category');
	Route::post('/update-category/{id}','CategoryController@update_category');
	//get post data
	Route::get('/post','PostController@allpost');
	Route::post('/save-new-post','PostController@saveNewPost');
	Route::get('/get-post-by-id/{id}','PostController@editPost');
	Route::get('/delete-post/{id}','PostController@postdelete');
	Route::post('/update-post/{id}','PostController@updatePost');
});
//Start here frontend route
Route::get("/blogpost","BlogController@getAllBlogPost");