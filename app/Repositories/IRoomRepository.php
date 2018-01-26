<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 11:18 PM
 */

namespace App\Repositories;


use App\Models\Room;

interface IRoomRepository
{
    /**
     * Get all rooms.
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
     * @param int $apartmentId Unique parent floor identifier.
     *
     * @return array List of rooms.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByApartment($apartmentId);



    /**
     * Updates the floor properties.
     *
     * @param int $id Unique identifier.
     * @param Room $room Apartment object to be created.
     *
     * @return bool True if building was successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function update($id, $room);
}