<?php

namespace App\Services;

use App\Repositories\Interfaces\IHouseCategory;

class HouseCategoryService
{
    private $houseCategory;

    public function __construct(IHouseCategory $ihouseCategory)
    {
        $this->houseCategory = $ihouseCategory;
    }

    public function index()
    {
        return $this->houseCategory->all();
    }

    public function list(array $params)
    {
        return $this->houseCategory->houseCategoryList($params);
    }

    public function store(array $payload)
    {
        // unique check
        return $this->houseCategory->create($payload);
    }

    public function edit($id)
    {
        return (!empty($id)) ? $this->houseCategory->findById($id) : 'Not Found';
    }

    public function update(int $modelId, array $payload)
    {
        $this->houseCategory->update($modelId, $payload);
    }

    public function destroy($id)
    {
        return (!empty($id)) ? $this->houseCategory->deleteById($id) : 'Not Found';
    }

    public function listForDropDown($id = '')
    {
        $houseCategories =  $this->houseCategory->all();

        $option = '<option value="">Select Please</option>';
        foreach ($houseCategories as $item) {
            if ($item->id == $id) {
                $option .= "<option value='$item->id' selected>$item->name</option>";
            } else {
                $option .= "<option value='$item->id'>$item->name</option>";
            }
        }
        return $option;
    }
}
