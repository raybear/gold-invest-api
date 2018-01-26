<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 12:56 AM
 */

namespace App\Repositories;


use App\Models\Apartment;

class ApartmentRepository implements IApartmentRepository
{
    /**
     * @var Apartment Apartment model.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    private $model;

    /**
     * FloorRepository constructor.
     *
     * @param Apartment $apartment Floor model.
     */
    public function __construct(Apartment $apartment)
    {
        $this->model = $apartment;
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
        return $this->model->all();
    }

    /**
     * Get floor by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return array List of apartments.
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
     * @param int $floorId Unique parent building identifier.
     *
     * @return array List of apartments.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByFloor($floorId)
    {
        return $this->model->where('floor', '=', $floorId)->get();
    }


    /**
     * Updates the floor properties.
     *
     * @param int $id Unique identifier.
     * @param Apartment $apartment Apartment object to be created.
     *
     * @return bool True if building was successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function update($id, $apartment)
    {
        return $this->model->find($id)->update($apartment);
    }

    function getAvailableApartments()
    {
        // Return count and subtract garages statically
        // TODO: Split garage to separate repository to avoid static counts and hard code
        return $this->model->where('status', '!=', 'Prodato')->count() - 12;
    }

    function getSoldApartments()
    {
        // Return count and add static sold from first 3 buildings
        return $this->model->where('status', '=', 'Prodato')->count() + 35;
    }
}