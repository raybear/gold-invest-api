<?php

namespace App\Providers;

use App\Repositories\BuildingRepository;
use App\Repositories\FloorRepository;
use App\Repositories\IBuildingRepository;
use App\Repositories\IFloorRepository;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->singleton(IBuildingRepository::class, BuildingRepository::class);
        $this->app->singleton(IFloorRepository::class, FloorRepository::class);
    }
}
