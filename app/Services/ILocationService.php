<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/23/18
 * Time: 11:38 PM
 */

namespace App\Services;


interface ILocationService
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