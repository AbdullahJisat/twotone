<?php

namespace App\Services;

use App\Contracts\MaterialCategoryContract;

class MaterialCategoryService implements MaterialCategoryContract
{
    private $materialCategory;

    public function __construct(MaterialCategoryContract $materialCategory)
    {
        $this->materialCategory = $materialCategory;
    }

    public function index()
    {
        return $this->materialCategory->all();
    }

    public function list(array $params)
    {
        return $this->materialCategory->materialCategoryList($params);
    }

    public function store(array $payload)
    {
        // unique check
        return $this->materialCategory->create($payload);
    }

    public function edit($id)
    {
        return (!empty($id)) ? $this->materialCategory->findById($id) : 'Not Found';
    }

    public function update(int $modelId, array $payload)
    {
        $this->materialCategory->update($modelId, $payload);
    }

    public function destroy($id)
    {
        return (!empty($id)) ? $this->materialCategory->deleteById($id) : 'Not Found';
    }

    public function listForDropDown($id = '')
    {
        $materialCategories =  $this->materialCategory->all();

        $option = '<option value="">Select Please</option>';
        foreach ($materialCategories as $item) {
            if ($item->id == $id) {
                $option .= "<option value='$item->id' selected>$item->name</option>";
            } else {
                $option .= "<option value='$item->id'>$item->name</option>";
            }
        }
        return $option;
    }
}
