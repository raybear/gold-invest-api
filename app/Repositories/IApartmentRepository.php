<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 12:56 AM
 */

namespace App\Repositories;


use App\Models\Apartment;

interface IApartmentRepository
{

    /**
     * Get all available apartments.
     *
     * @return array List of apartments.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll();

    /**
     * Get apartment by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return array List of apartments.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getById($id);

    /**
     * Get all apartments by its parent floor unique identifier.
     *
     * @param int $floorId Unique parent building identifier.
     *
     * @return array List of floors.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByFloor($floorId);



    /**
     * Updates the floor properties.
     *
     * @param int $id Unique identifier.
     * @param Apartment $apartment Floor object to be created.
     *
     * @return bool True if building was successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function update($id, $apartment);

    function getAvailableApartments();

    function getSoldApartments();
}