<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 11:44 PM
 */

namespace App\Http\Controllers;


use App\Services\RoomService;

class RoomController
{
    private $roomService;

    public function __construct(RoomService $roomService)
    {
        $this->roomService = $roomService;
    }

    public function getAll()
    {
        return response()->json($this->roomService->getAll(), 200);
    }

    public function getById($id)
    {
        // TODO: Handle not found exception
        return response()->json($this->roomService->getById($id), 200);
    }

    public function getAllByApartment($apartmentId)
    {
        // TODO: Handle not found exception
        return response()->json($this->roomService->getAllByApartment($apartmentId), 200);
    }
}