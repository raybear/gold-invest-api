<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 1:20 AM
 */

namespace App\Http\Controllers;


use App\Services\ApartmentService;

class ApartmentController
{
    private $apartmentService;

    public function __construct(ApartmentService $apartmentService)
    {
        $this->apartmentService = $apartmentService;
    }

    public function getAll()
    {
        return response()->json($this->apartmentService->getAll(), 200);
    }

    public function getById($id)
    {
        // TODO: Handle not found exception
        return response()->json($this->apartmentService->getById($id), 200);
    }

    public function getAllByFloor($floorId)
    {
        // TODO: Handle not found exception
        return response()->json($this->apartmentService->getAllByFloor($floorId), 200);
    }
}