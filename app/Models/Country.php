<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;
    protected $fillable = [
        "user_id",
        'code',
        // 'informacion',
        'title',
        'ciudades',
        'isActive',

    ];

    public static function search($query = ''){
        if(!$query){
            return self::all();
        }
        return self::where('code', 'like', "%$query%")
        ->orWhere('title', 'like', "%$query%")
        ->get();
    }
}
