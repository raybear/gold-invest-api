<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 11:18 PM
 */

namespace App\Repositories;


use App\Models\Room;

class RoomRepository implements IRoomRepository
{
    /**
     * @var Room Room model.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    private $model;

    /**
     * FloorRepository constructor.
     *
     * @param Room $room Room model.
     */
    public function __construct(Room $room)
    {
        $this->model = $room;
    }

    /**
     * Get all available rooms.
     *
     * @return array List of aparroomstments.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll()
    {
        return $this->model->all();
    }

    /**
     * Get rooms by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return array List of rooms.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getById($id)
    {
        return $this->model->find($id);
    }

    /**
     * Get all apartments by its parent floor unique identifier.
     *
     * @param int $apartmentId Unique parent floor identifier.
     *
     * @return array List of apartments.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByApartment($apartmentId)
    {
        return $this->model->where('apartment', '=', $apartmentId)->get();
    }


    /**
     * Updates the room properties.
     *
     * @param int $id Unique identifier.
     * @param Room $room Room object to be created.
     *
     * @return bool True if building was successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function update($id, $room)
    {
        return $this->model->find($id)->update($room);
    }
}