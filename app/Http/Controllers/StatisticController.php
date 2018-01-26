<?php

namespace App\Http\Controllers;

use App\Services\StatisticService;

class StatisticController
{
    private $statisticService;

    public function __construct(StatisticService $statisticService)
    {
        $this->statisticService = $statisticService;
    }

    public function getStatistics()
    {
        return response()->json($this->statisticService->getStatistics(), 200);
    }
}