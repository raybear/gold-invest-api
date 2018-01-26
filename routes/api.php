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

Route::get('/buildings/locations', 'LocationController@getAll');
Route::get('/buildings/images', 'ImageController@getAll');
Route::get('/buildings', 'BuildingController@getAll');
Route::get('/buildings/{id}', 'BuildingController@getById');

// Floor routes
Route::get('/floors', 'FloorController@getAll');
Route::get('/floors/apartments', 'ApartmentController@getAll');
Route::get('/floors/apartments/rooms', 'RoomController@getAll');
Route::get('/floors/{id}', 'FloorController@getById');
Route::get('/buildings/{buildingId}/floors', 'FloorController@getAllByBuilding');

// Location routes
Route::get('/buildings/{buildingId}/location', 'LocationController@getAllByBuilding');

// Image routes
Route::get('/buildings/{buildingId}/image', 'ImageController@getAllByBuilding');
Route::get('/buildings/images/{id}', 'ImageController@getById');


// Apartments routes

Route::get('/floors/apartments/{id}', 'ApartmentController@getById');
Route::get('/floors/{floorId}/apartments', 'ApartmentController@getAllByFloor');


// Rooms routes

Route::get('/floors/apartments/room/{id}', 'RoomController@getById');
Route::get('floors/apartments/{apartmentId}/rooms', 'RoomController@getAllByApartment');

Route::get('/statistics', 'StatisticController@getStatistics');