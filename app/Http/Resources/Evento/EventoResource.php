<?php

namespace App\Http\Resources\Evento;

use Illuminate\Http\Resources\Json\JsonResource;

class EventoResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            "id" =>$this->resource->id,
            "pais_id" =>$this->resource->pais_id,
            "user_id" =>$this->resource->user_id,
            "pais_code" =>$this->resource->pais_code,
            "fecha" =>$this->resource->fecha,
            "lugar" =>$this->resource->lugar,
            "hora" =>$this->resource->hora,
            "direccion" =>$this->resource->direccion,
            "ciudad" =>$this->resource->ciudad,

            // "created_at"=>$this->resource->created_at ? Carbon::parse($this->resource->created_at)->format("Y-m-d h:i A") : NULL,
        ];
    }
}
