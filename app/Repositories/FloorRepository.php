<?php

namespace App\Repositories;

use App\Models\Floor;

class FloorRepository implements IFloorRepository
{
    /**
     * @var Floor Floor model.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    private $model;

    /**
     * FloorRepository constructor.
     *
     * @param Floor $floor Floor model.
     */
    public function __construct(Floor $floor)
    {
        $this->model = $floor;
    }

    /**
     * Get all available floors.
     *
     * @return array List of floors.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll()
    {
        return $this->model->all();
    }

    /**
     * Get floor by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return array List of floors.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getById($id)
    {
        return $this->model->find($id);
    }

    /**
     * Get all floors by its parent building unique identifier.
     *
     * @param int $buildingId Unique parent building identifier.
     *
     * @return array List of floors.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByBuilding($buildingId)
    {
        return $this->model->where('building', '=', $buildingId)->get();
    }

    /**
     * Creates a new building.
     *
     * @param Floor $floor Floor object to be created.
     *
     * @return Floor Object of newly created floor.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function create($floor)
    {
        return $this->model->create($floor);
    }

    /**
     * Updates the floor properties.
     *
     * @param int $id Unique identifier.
     * @param Floor $floor Floor object to be created.
     *
     * @return bool True if building was successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function update($id, $floor)
    {
        return $this->model->find($id)->update($floor);
    }

    /**
     * Deletes the floor.
     *
     * @param int $id Unique identifier
     * @return bool True if removal is successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     * @throws \Exception
     */
    function delete($id)
    {
        return $this->model->find($id)->delete();
    }
}