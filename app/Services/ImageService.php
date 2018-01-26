<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/24/18
 * Time: 2:05 AM
 */

namespace App\Services;


use App\Repositories\ImageRepository;

class ImageService
{
    private $imageRepository;

    public function __construct(ImageRepository $imageRepository)
    {
        $this->imageRepository = $imageRepository;
    }

    /**
     * Get building images.
     *
     * @return array List of images.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll()
    {
        return $this->imageRepository->getAll();
    }
    /**
     * Get image by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return array List of images.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getById($id)
    {
        return $this->imageRepository->getById($id);
    }

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
    function getAllByBuilding($buildingId) {
        return $this->imageRepository->getAllByBuilding($buildingId);
    }
}