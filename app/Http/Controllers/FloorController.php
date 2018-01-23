<?php

namespace App\Http\Controllers;

use App\Services\FloorService;

class FloorController extends Controller
{
    private $floorService;

    public function __construct(FloorService $floorService)
    {
        $this->floorService = $floorService;
    }

    public function getAll()
    {
        return response()->json($this->floorService->getAll(), 200);
    }

    public function getById($id)
    {
        // TODO: Handle not found exception
        return response()->json($this->floorService->getById($id), 200);
    }

    public function getAllByBuilding($buildingId)
    {
        // TODO: Handle not found exception
        return response()->json($this->floorService->getAllByBuilding($buildingId), 200);
    }
}