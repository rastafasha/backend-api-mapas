<?php

namespace App\Http\Resources\Pais;

use Illuminate\Http\Resources\Json\JsonResource;

class PaisResource extends JsonResource
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
            "user_id" =>$this->resource->user_id,
            "title" =>$this->resource->title,
            "code" =>$this->resource->code,
            "informacion" =>$this->resource->informacion,
            "ciudades" =>$this->resource->ciudades,
            "isActive" =>$this->resource->isActive,

            // "created_at"=>$this->resource->created_at ? Carbon::parse($this->resource->created_at)->format("Y-m-d h:i A") : NULL,
        ];
    }
}
