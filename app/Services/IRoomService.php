<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 11:36 PM
 */

namespace App\Services;


use App\Models\Room;

interface IRoomService
{
    /**
     * Get all available rooms.
     *
     * @return array List of rooms.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll();

    /**
     * Get room by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return array List of rooms.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getById($id);

    /**
     * Get all rooms by its parent apartment unique identifier.
     *
     * @param int $roomId Unique parent apartment identifier.
     *
     * @return array List of rooms.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByApartment($roomId);



    /**
     * Updates the apartment properties.
     *
     * @param int $id Unique identifier.
     * @param Room $room Room object to be created.
     *
     * @return bool True if apartment was successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function update($id, $room);
}