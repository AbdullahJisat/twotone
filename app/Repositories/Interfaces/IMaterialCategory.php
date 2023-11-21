<?php

namespace App\Repositories\Interfaces;

interface IMaterialCategory extends IRepository
{
    public function materialCategoryList(array $params);
}
