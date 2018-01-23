<?php

namespace App\Http\Controllers;

use App\Exceptions\HttpErrorException;
use App\Services\BuildingService;

class BuildingController extends Controller
{
    private $buildingService;

    public function __construct(BuildingService $buildingService) {
        $this->buildingService = $buildingService;
    }

    public function getAll()
    {
        return response()->json($this->buildingService->getAll(), 200);
    }

    public function getById($id)
    {
        $building = $this->buildingService->getById($id);

        if(!$building)
        {
            $err = new HttpErrorException(404, 'Can\'t find building with specified ID');

            return response()->json($err->get(), 404);
        }

        return response()->json($building, 200);
    }
}