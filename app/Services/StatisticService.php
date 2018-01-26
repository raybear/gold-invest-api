<?php

namespace App\Services;

use App\Repositories\ApartmentRepository;
use App\Repositories\BuildingRepository;

class StatisticService implements IStatisticService
{
    private $buildingRepository;
    private $apartmentRepository;

    public function __construct(BuildingRepository $buildingRepository, ApartmentRepository $apartmentRepository)
    {
        $this->buildingRepository = $buildingRepository;
        $this->apartmentRepository = $apartmentRepository;
    }

    public function getStatistics()
    {
        $response = [
            'buildingsFinished' => 0,
            'buildingsInProgress' => 0,
            'apartmentSold' => 0,
            'apartmentAvailable' => 0
        ];

        $response['buildingsFinished'] = $this->buildingRepository->getBuildingFinishedCount();
        $response['buildingsInProgress'] = $this->buildingRepository->getBuildingInProgressCount();

        $response['apartmentSold'] = $this->apartmentRepository->getSoldApartments();
        $response['apartmentAvailable'] = $this->apartmentRepository->getAvailableApartments();

        return $response;
    }
}