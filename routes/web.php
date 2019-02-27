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
Route::get('/', [
    'as' => 'home',
    'uses' => 'PageController@index',
]);

// Catch all page controller (place at the very bottom)
Route::get('{slug}', [
    'uses' => 'PageController@getPage',
])->where('slug', '([A-Za-z0-9\-\/]+)');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
