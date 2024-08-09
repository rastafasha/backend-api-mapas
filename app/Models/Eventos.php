<?php

namespace App\Models;

use App\Models\Pais;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Eventos extends Model
{
    use HasFactory;
    protected $fillable = [
        "user_id",
        'pais_code',
        'fecha',
        'lugar',
        'hora',
        'direccion',
        'ciudad',
        'pais_id',

    ];

    public function envento(){
        return $this->belongsTo(Pais::class, 'pais_id');
    }
}
