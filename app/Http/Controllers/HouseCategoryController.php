<?php

namespace App\Http\Controllers;

use App\Services\HouseCategoryService;
use Illuminate\Http\Request;

class HouseCategoryController extends Controller
{
    private $houseCategoryService;
    public function __construct(HouseCategoryService $houseCategoryService)
    {
        $this->houseCategoryService = $houseCategoryService;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('house_category.index');
    }

    public function list(Request $request)
    {
        if ($request->ajax()) {
            $params              = $request->except('_token');
            $params['order']     = $request->input('order.0.column');
            $params['direction'] = $request->input('order.0.dir');
            $params['length']    = $request->input('length');
            $params['start']     = $request->input('start');
            $data                = $this->houseCategoryService->list($params);
        }
        return response($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
