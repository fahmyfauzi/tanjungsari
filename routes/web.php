<?php

use Illuminate\Support\Facades\Route;

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

Auth::routes();

Route::get('/', 'PageController@home')->name('homepage');
Route::get('visi-misi', 'PageController@visimisi');
Route::get('sejarah', 'PageController@sejarah');
Route::get('wilayah', 'PageController@wilayah');

Route::get('pemerintah-desa', 'PageController@pd');
Route::get('bpd', 'PageController@bpd');
Route::get('lpm', 'PageController@lpm');
Route::get('pkk', 'PageController@pkk');
Route::get('karang-taruna', 'PageController@kt');
Route::get('bumdes', 'PageController@bumdes');

// Route::get('transparansi', 'PageController@transparansi');
Route::get('produk-desa', 'ProductController@display');
Route::get('produk-desa/{id}', 'ProductController@show')->name('products.product');

Route::get('kabar-desa/search', 'PostsController@search')->name('search.posts');
Route::get('kabar-desa', 'PostsController@all');
Route::get('kabar-desa/{slug}', 'PostsController@show')->name('posts.post');
Route::post('/comments', 'PostsController@comment');

Route::get('transparansi', 'TransparansiController@show');

Route::get('layanan', 'ServiceController@create');
Route::post('layanan/store', 'ServiceController@store')->name('layanan.store');



// ADMIN
Route::group(['middleware' => 'auth'], function () {
  Route::get('admin', 'AdminController@adminpage');
  Route::get('admin/pd', 'AdminController@pd');
  Route::get('admin/bpd', 'AdminController@bpd');
  Route::get('admin/lpm', 'AdminController@lpm');
  Route::get('admin/pkk', 'AdminController@pkk');
  Route::get('admin/kt', 'AdminController@kt');
  Route::get('admin/bumdes', 'AdminController@bumdes');
  Route::patch('lembagas/{id}', 'AdminController@editProses');
  Route::resource('admin/posts', 'PostsController');
  Route::get('home', 'HomeController@index')->name('home');
  Route::get('admin/layanan', 'ServiceController@index')->name('layanan.index');
  Route::resource('admin/transparansi', 'TransparansiController');
  Route::resource('admin/produk', 'ProductController');
});
