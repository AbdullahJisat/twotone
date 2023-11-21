<?php

namespace App\Services;

class DepartmentService
{
    private $brand;

    public function __construct(IBrand $ibrand)
    {
        $this->brand = $ibrand;
    }

    public function index()
    {
        return $this->brand->all();
    }

    public function store(array $payload)
    {
        // unique check
        return $this->brand->create($payload);
    }

    public function edit($id)
    {
        return (!empty($id)) ? $this->brand->findById($id) : 'Not Found';
    }

    public function update(int $modelId, array $payload)
    {
        $this->brand->update($modelId, $payload);
    }

    public function destroy($id)
    {
        return (!empty($id)) ? $this->brand->deleteById($id) : 'Not Found';
    }

     public function listForDropDown($id = '')
    {
        $brands =  $this->brand->all();

       $option = "<option value="">Select Please</option>";
        foreach ($items as $item) {
            if ($item->id == $id) {
                $option .= "<option value='$item->id' selected>$item->name</option>";
            } else {
                $option .= "<option value='$value->id'>$value->name</option>";
            }
        }
        return $option;
    }
}
//    // get all for dropdown
//         public List<SelectListItem> GetCategoryForDropDown()
//         {
//             return GetAll().ConvertAll(x => new SelectListItem() { Text = x.Name, Value = x.Id.ToString() });
//         }
//     }
