<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/25/18
 * Time: 1:12 AM
 */

namespace App\Services;


use App\Models\Apartment;

interface IApartmentService
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
     * @param int $apartmentId Unique parent floor identifier.
     *
     * @return array List of apartments.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByFloor($apartmentId);



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
    function update($id, $apartment);
}