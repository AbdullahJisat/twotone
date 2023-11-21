<?php

namespace App\Repositories;

use App\Models\HouseCategory;
use App\Repositories\Interfaces\IHouseCategory;

class HouseCategoryRepository extends Repository implements IHouseCategory
{
    protected $houseCategory;

    public function __construct(HouseCategory $houseCategory)
    {
        $this->houseCategory = $houseCategory;
    }

    public function getList(array $params)
    {
        // $this->model->setSearchValue($params['search']['regex']);
        // $this->model->setOrderValue($params['order']);
        // $this->model->setDirValue($params['direction']);
        // $this->model->setLengthValue($params['length']);
        // $this->model->setStartValue($params['start']);
        $list = $this->houseCategory->get();
        // dd($list);
        $data = array();
        foreach ($list as $key => $value) {
            $action = '';

            $action .= '<li class="kt-nav__item"><a class="kt-nav__link edit_data" data-id="' . $value->id . '" >edit</a></li>';



            $action .= '<li class="kt-nav__item"><a class="kt-nav__link delete_data" data-id="' . $value->id . '" >delete</a></li>';

            $btngroup = '<span style="overflow: visible; position: relative;">
                                <div class="dropdown">
                                    <a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-lg cursor-pointer"> <i class="flaticon-more-1 text-brand"></i> </a>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <ul class="kt-nav">
                                            ' . $action . '
                                        </ul>
                                    </div>
                                </div>
                            </span>';

            $row    = array();

            $row[]  = '<label class="kt-checkbox kt-checkbox--single kt-checkbox--all kt-checkbox--solid"><input type="checkbox" name="did[]" value="' . $value->id . '" class="select_data">&nbsp;<span></span></label> ';

            $row[]  = $key++;
            $row[] = $value->name;
            $row[]  = $btngroup;
            $data[] = $row;
        }
        return $data;
        // return $output = $this->dataTableDraw(
        //     $params['draw'],
        //     $this->model->count_all(),
        //     $this->model->count_filtered(),
        //     $data
        // );
    }

    public function houseCategoryList(array $params)
    {

        $list = $this->houseCategory->get();
        // dd($list);
        $data = array();
        $no = $params['start'];
        foreach ($list as $value) {
            $no++;
            $action = '';
            $action .= '<li class="kt-nav__item"><a class="kt-nav__link edit_data" data-id="' . $value->id . '" >edit</a></li>';



            $action .= '<li class="kt-nav__item"><a class="kt-nav__link delete_data" data-id="' . $value->id . '" >delete</a></li>';
            $btngroup = '<span style="overflow: visible; position: relative;">
                                    <div class="dropdown">
                                        <a data-toggle="dropdown" class="btn btn-sm btn-clean btn-icon btn-icon-lg cursor-pointer"> <i class="flaticon-more-1 text-brand"></i> </a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <ul class="kt-nav">
                                                ' . $action . '
                                            </ul>
                                        </div>
                                    </div>
                                </span>';

            $row    = array();
            $row[]  = '<label class="kt-checkbox kt-checkbox--single kt-checkbox--all kt-checkbox--solid"><input type="checkbox" name="did[]" value="' . $value->id . '" class="select_data">&nbsp;<span></span></label> ';
            $row[]  = $no;
            $row[] = $value->name;
            $row[]  = $btngroup;
            $data[] = $row;
        }
        return $output = $this->dataTableDraw(
            $params['draw'],
            50,
            50,
            $data
        );
    }

    protected function dataTableDraw($draw, $count_all, $count_filtered, $data)
    {
        return $output = array(
            "draw"            => $draw, //draw data
            "recordsTotal"    => $count_all, //total record
            "recordsFiltered" => $count_filtered, //total filtered record
            "data"            => $data //showing data
        );
    }
}
