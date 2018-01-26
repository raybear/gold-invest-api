<?php

namespace App\Repositories;

use App\Models\Building;

class BuildingRepository implements IBuildingRepository
{
    /**
     * @var Building Building model.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    private $model;

    /**
     * BuildingRepository constructor.
     *
     * @param Building $building Building model.
     */
    public function __construct(Building $building) {
        $this->model = $building;
    }

    /**
     * Get all available buildings.
     *
     * @return array List of buildings.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getAll()
    {
        return $this->model->all();
    }

    /**
     * Get building by its unique identifier.
     *
     * @param int $id Unique identifier.
     * @return Building Single building object.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function getById($id)
    {
        return $this->model->find($id);
    }

    /**
     * Creates a new building.
     *
     * @param Building $building Building object to be created.
     * @return Building Object of newly created building.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function create($building)
    {
        return $this->model->create($building);
    }

    /**
     * Updates the building properties.
     *
     * @param int $id Unique identifier.
     * @param Building $building Building object to be created.
     * @return bool True if building was successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     */
    function update($id, $building)
    {
        return $this->model->find($id)->update($building);
    }

    /**
     * Deletes the building.
     *
     * @param int $id Unique identifier
     * @return bool True if removal is successful.
     *
     * @since 1.0
     * @author Slobodan Sekulic
     * @throws \Exception
     */
    function delete($id)
    {
        return $this->model->find($id)->delete();
    }

    function getBuildingFinishedCount()
    {
        return $this->model->where('block', '=', false)->count();
    }

    function getBuildingInProgressCount()
    {
        return $this->model->where('block', '=', true)->count();
    }
}