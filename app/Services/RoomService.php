<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 11:37 PM
 */

namespace App\Services;


use App\Models\Room;
use App\Repositories\RoomRepository;

class RoomService implements IRoomService
{
    private $roomRepository;

    public function __construct(RoomRepository $roomRepository)
    {
        $this->roomRepository = $roomRepository;
    }

    /**
     * Get all  rooms.
     *
     * @return array List of rooms.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll()
    {
        return $this->roomRepository ->getAll();
    }

    /**
     * Get room by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return array List of rooms.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getById($id)
    {
        return $this->roomRepository ->getById($id);
    }

    /**
     * Get all floors by its parent building unique identifier.
     *
     * @param int $apartmentId Unique parent apartment identifier.
     *
     * @return array List of rooms.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByApartment($apartmentId)
    {
        return $this->roomRepository ->getAllByApartment($apartmentId);
    }


    /**
     * Updates the apartment properties.
     *
     * @param int $id Unique identifier.
     * @param Room $room Room object to be created.
     *
     * @return bool True if floor was successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function update($id, $room)
    {
        return $this->roomRepository ->update($id, $room);
    }
}