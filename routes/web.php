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

Route::get('/', function () {
    return view('auth.login');
});

Route::get('/user/dashboard', function () {
    return view('app');
});


Route::post('login', 'Auth\LoginController@login')->name('user.login');
Route::post('logout', 'Auth\LoginController@logout')->name('user.logout');

Route::resource('house-category', 'HouseCategoryController');
Route::post('house-category-list', 'HouseCategoryController@list')->name('house-category.list');

Route::resource('material-category', 'MaterialCategoryController');
Route::post('material-category-list', 'MaterialCategoryController@list')->name('material-category.list');
