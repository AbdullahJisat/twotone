<?php

namespace App\Contracts;

interface MaterialCategoryContract extends Contract
{
    public function materialCategoryList(array $params);
}
