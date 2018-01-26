<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/23/18
 * Time: 11:46 PM
 */

namespace App\Http\Controllers;


use App\Services\LocationService;

class LocationController
{
    private $locationService;

    public function __construct(LocationService $locationService)
    {
        $this->locationService = $locationService;
    }

    public function getAll()
    {
        return response()->json($this->locationService->getAll(), 200);
    }

    public function getAllByBuilding($buildingId)
    {
        // TODO: Handle not found exception
        return response()->json($this->locationService->getAllByBuilding($buildingId), 200);
    }
}