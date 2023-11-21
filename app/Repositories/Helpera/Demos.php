<?php

// namespace App\Repositories;
namespace App\Repositories\Helpera;

// use App\Models\MaterialCategory;
use App\Models\;
use App\Repositories\Interfaces\I;

// class MaterialCategoryRepository extends Repository implements IMaterialCategory
class DummyRepository extends Repository implements I
{
    protected $model;
    /**
     * Instantiate reporitory
     *
     * @param  $model
     */
    public function __construct( $model)
    {
        // $this->materialCategory = $materialCategory;
        $this->model = $model;
    }
}
