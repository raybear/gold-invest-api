<?php

namespace App\Providers;

use App\Repositories\ApartmentRepository;
use App\Repositories\BuildingRepository;
use App\Repositories\FloorRepository;
use App\Repositories\IApartmentRepository;
use App\Repositories\IBuildingRepository;
use App\Repositories\IFloorRepository;
use App\Repositories\IImageRepository;
use App\Repositories\ILocationRepository;
use App\Repositories\ImageRepository;
use App\Repositories\IRoomRepository;
use App\Repositories\LocationRepository;

use App\Repositories\RoomRepository;
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
        $this->app->singleton(ILocationRepository::class, LocationRepository::class);
        $this->app->singleton(IImageRepository::class, ImageRepository::class);
        $this->app->singleton(IApartmentRepository::class, ApartmentRepository::class);
        $this->app->singleton(IRoomRepository::class, RoomRepository::class);
    }
}
