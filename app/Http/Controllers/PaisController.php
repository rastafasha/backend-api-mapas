<?php

namespace App\Http\Controllers;

use App\Models\Pais;
use App\Models\Country;
use Illuminate\Http\Request;

class PaisController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $countries = Country::orderBy('id', 'DESC')
        
        ->get();

        return response()->json([
            'code' => 200,
            'status' => 'Listar todos los paises',
            'countries' => $countries,
        ], 200);
    }

    public function countriesCode()
    {
        $paises = Pais::orderBy('id', 'DESC')
        
        ->get();

        return response()->json([
            'code' => 200,
            'status' => 'Listar todos los paises',
            'paises' => $paises,
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $pais_is_valid = Country::where("user_id", $request->user_id)->first();
        $pais = Country::create($request->all());

        return response()->json([
            "message"=>200,
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $pais = Country::findOrFail($id);

        return response()->json([
            "pais" => $pais,
            
        ]);
    }
    public function showCode($code)
    {

        $pais = Country::where("code",  $code)->first();

        return response()->json([
            "pais" => $pais,
            
        ]);
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
        $pais_is_valid = Country::where("id", "<>", $id)->first();
        
        $pais = Country::findOrFail($id);

        $pais->update($request->all());
        
        // error_log($slider);

        return response()->json([
            "message"=>200,
            "pais"=>$pais,
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $pais = Country::findOrFail($id);
        
        $pais->delete();
        return response()->json([
            "message"=>200
        ]);
    }

    public function search(Request $request){
        return Country::search($request->buscar);
    }
}
