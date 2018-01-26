<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/23/18
 * Time: 11:38 PM
 */

namespace App\Services;


use App\Repositories\LocationRepository;

class LocationService
{
    private $locationRepository;

    public function __construct(LocationRepository $locationRepository)
    {
        $this->locationRepository = $locationRepository;
    }

    /**
     * Get building loacations.
     *
     * @return array List of locations.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll()
    {
        return $this->locationRepository->getAll();
    }

    /**
     * Get all locatation by its parent building unique identifier.
     *
     * @param int $buildingId Unique parent building identifier.
     *
     * @return array Listo of locations.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByBuilding($buildingId) {
        return $this->locationRepository->getAllByBuilding($buildingId);
    }
}