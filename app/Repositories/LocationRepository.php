<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/23/18
 * Time: 11:11 PM
 */

namespace App\Repositories;

use App\Models\Location;

class LocationRepository implements ILocationRepository
{
    /**
     * @var Location Location model.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    private $model;

    /**
     * LocationRepository constructor.
     *
     * @param Location $location Location model.
     */
    public function __construct(Location $location)
    {
        $this->model = $location;
    }

    /**
     * Get all available location.
     *
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll()
    {
        return $this->model->all();
    }
    /**
     * Get Location by its parent building unique identifier.
     *
     * @param int $buildingId Unique parent building identifier.
     *
     * @return array list of Locations.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByBuilding($buildingId)
    {
        return $this->model->where('building', '=', $buildingId)->get();
    }
}