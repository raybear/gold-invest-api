<?php
/**
 * Created by PhpStorm.
 * User: slobodansekulic
 * Date: 1/24/18
 * Time: 1:52 AM
 */

namespace App\Repositories;


use App\Models\Image;

class ImageRepository implements IImageRepository
{
    /**
     * @var Image Image model.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    private $model;

    /**
     * FloorRepository constructor.
     *
     * @param Image $image Image model.
     */
    public function __construct(Image $image)
    {
        $this->model = $image;
    }

    /**
     * Get all Images.
     *
     * @return array List of images.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll()
    {
        return $this->model->all();
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
        return $this->model->find($id);
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
    function getAllByBuilding($buildingId)
    {
        return $this->model->where('building', '=', $buildingId)->get();
    }

}