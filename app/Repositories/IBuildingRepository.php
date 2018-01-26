<?php

namespace App\Repositories;

use App\Models\Building;

interface IBuildingRepository
{
    /**
     * Get all available buildings.
     *
     * @return array List of buildings.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll();

    /**
     * Get building by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return Building Single building object.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getById($id);

    /**
     * Creates a new building.
     *
     * @param Building $building Building object to be created.
     * @return Building Object of newly created building.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function create($building);

    /**
     * Updates the building properties.
     *
     * @param int $id Unique identifier.
     * @param Building $building Building object to be created.
     * @return bool True if building was successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function update($id, $building);

    /**
     * Deletes the building.
     *
     * @param int $id Unique identifier
     * @return bool True if removal is successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     * @throws \Exception
     */
    function delete($id);

    function getBuildingFinishedCount();

    function getBuildingInProgressCount();
}