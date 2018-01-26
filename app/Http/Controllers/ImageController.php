<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/24/18
 * Time: 2:13 AM
 */

namespace App\Http\Controllers;


use App\Services\ImageService;

class ImageController
{
    private $imageService;

    public function __construct(ImageService $imageService)
    {
        $this->imageService = $imageService;
    }

    public function getAll()
    {
        return response()->json($this->imageService->getAll(), 200);
    }

    public function getById($id)
    {
        // TODO: Handle not found exception
        return response()->json($this->imageService->getById($id), 200);
    }

    public function getAllByBuilding($buildingId)
    {
        // TODO: Handle not found exception
        return response()->json($this->imageService->getAllByBuilding($buildingId), 200);
    }
}