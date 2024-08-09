<?php

namespace App\Http\Resources\Pais;

use Illuminate\Http\Resources\Json\ResourceCollection;

class PaisCollection extends ResourceCollection
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            "data"=> PaisResource::collection($this->collection)
        ];
    }
}
