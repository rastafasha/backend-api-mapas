<?php

namespace App\Http\Controllers;

use App\Models\Eventos;
use Illuminate\Http\Request;

class EventoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $eventos = Eventos::orderBy('id', 'DESC')
        
        ->get();

        return response()->json([
            'code' => 200,
            'status' => 'Listar todos los eventos',
            'eventos' => $eventos,
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
        $evento_is_valid = Eventos::where("user_id", $request->user_id)->first();
        $evento = Eventos::create($request->all());

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
        $evento = Eventos::findOrFail($id);

        return response()->json([
            "evento" => $evento,
            
        ]);
    }
    public function showPais($pais_id)
    {
        $evento = Eventos::where("pais_id",  $pais_id)->first();

        // $evento = Eventos::findOrFail($pais_id);
        

        return response()->json([
            "evento" => $evento,
            
        ]);
    }

    public function showCode($pais_code)
    {

        $evento = Eventos::where("pais_code",  $pais_code)->first();

        return response()->json([
            "evento" => $evento,
            
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
        $evento_is_valid = Eventos::where("id", "<>", $id)->first();
        
        $evento = Eventos::findOrFail($id);

        $evento->update($request->all());
        
        // error_log($slider);

        return response()->json([
            "message"=>200,
            "evento"=>$evento,
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
        $evento = Eventos::findOrFail($id);
        
        $evento->delete();
        return response()->json([
            "message"=>200
        ]);
    }
}
