<?php

namespace App\Services;

use App\Models\Floor;

interface IFloorService
{
    /**
     * Get all available floors.
     *
     * @return array List of floors.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll();

    /**
     * Get floor by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return array List of floors.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getById($id);

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
    function getAllByBuilding($buildingId);

    /**
     * Creates a new building.
     *
     * @param int $buildingId Unique identifier fo parent building.
     * @param Floor $floor Floor object to be created.
     *
     * @return Floor Object of newly created floor.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function create($buildingId, $floor);

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
    function update($id, $floor);

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
    function delete($id);
}