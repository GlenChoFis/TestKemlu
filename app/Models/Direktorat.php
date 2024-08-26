<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Direktorat extends Model
{
    use HasFactory;

    protected $table = 'direktorats';
    protected $primaryKey = 'id_direktorat';

    protected $fillable = [
        'nama_direktorat',
    ];

    // Relationship to Kawasan
    public function kawasan()
    {
        return $this->hasMany(Kawasan::class, 'id_direktorat');
    }

    // Relationship to Negara
    public function negara()
    {
        return $this->hasMany(Negara::class, 'id_direktorat');
    }
}

