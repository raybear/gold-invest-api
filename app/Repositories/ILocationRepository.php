<?php

namespace App\Repositories;

use App\Models\Location;

interface ILocationRepository
{
    /**
     * Get all  location.
     *
     * @return array List of floors.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll();



    /**
     * Get all location by its parent building unique identifier.
     *
     * @param int $buildingId Unique parent building identifier.
     *
     * @return array List of location.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByBuilding($buildingId);

}