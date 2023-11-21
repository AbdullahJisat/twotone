<?php

namespace App\Providers;

use App\Repositories\HouseCategoryRepository;
use App\Repositories\Interfaces\IHouseCategory;
use App\Repositories\Interfaces\IMaterialCategory;
use App\Repositories\Interfaces\IRepository;
use App\Repositories\MaterialCategoryRepository;
use App\Repositories\Repository;
use Illuminate\Support\ServiceProvider;

class RepositoryServiceProvider extends ServiceProvider
{
    protected $repositories = [
        // ToolsContract::class => ToolsRepository::class,
        IRepository::class => Repository::class,
        IHouseCategory::class => HouseCategoryRepository::class,
        IMaterialCategory::class => MaterialCategoryRepository::class,
    ];
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        foreach ($this->repositories as $interface => $implementation) {
            $this->app->bind($interface, $implementation);
        }
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
