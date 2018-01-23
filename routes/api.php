<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Building routes
Route::get('/buildings', 'BuildingController@getAll');
Route::get('/buildings/{id}', 'BuildingController@getById');

// Floor routes
Route::get('/floors', 'FloorController@getAll');
Route::get('/floors/{id}', 'FloorController@getById');
Route::get('/buildings/{buildingId}/floors', 'FloorController@getAllByBuilding');