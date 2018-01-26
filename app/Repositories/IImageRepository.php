<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/24/18
 * Time: 1:52 AM
 */

namespace App\Repositories;


interface IImageRepository

{
    /**
     * Get all images.
     *
     * @return array List of imgaes.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll();

    /**
     * Get image by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return array List of images.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getById($id);

    /**
     * Get all images by its parent building unique identifier.
     *
     * @param int $buildingId Unique parent building identifier.
     *
     * @return array List of images.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAllByBuilding($buildingId);


}