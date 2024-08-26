<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Kawasan extends Model
{
    use HasFactory;

    protected $table = 'kawasans';
    protected $primaryKey = 'id_kawasan';

    protected $fillable = [
        'id_direktorat',
        'nama_kawasan',
    ];

    // Relationship to Direktorat
    public function direktorat()
    {
        return $this->belongsTo(Direktorat::class, 'id_direktorat');
    }

    // Relationship to Negara
    public function negara()
    {
        return $this->hasMany(Negara::class, 'id_kawasan');
    }
}
