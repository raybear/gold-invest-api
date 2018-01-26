<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 1:12 AM
 */

namespace App\Services;


use App\Models\Apartment;
use App\Repositories\ApartmentRepository;

class ApartmentService implements IApartmentService
{
    private $apartmentRepository;

    public function __construct(ApartmentRepository $apartmentRepository)
    {
        $this->apartmentRepository = $apartmentRepository;
    }

    /**
     * Get all available apartments.
     *
     * @return array List of apartments.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll()
    {
        return $this->apartmentRepository->getAll();
    }

    /**
     * Get apartment by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return array List of apartments.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getById($id)
    {
        return $this->apartmentRepository->getById($id);
    }

    /**
     * Get all floors by its parent building unique identifier.
     *
     * @param int $floorId Unique parent floor identifier.
     *
     * @return array List of apartments.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByFloor($floorId)
    {
        return $this->apartmentRepository->getAllByFloor($floorId);
    }


    /**
     * Updates the apartment properties.
     *
     * @param int $id Unique identifier.
     * @param Apartment $apartment Apartment object to be created.
     *
     * @return bool True if floor was successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function update($id, $apartment)
    {
        return $this->apartmentRepository->update($id, $apartment);
    }
}