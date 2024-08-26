<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Negara extends Model
{
    use HasFactory;

    protected $table = 'negaras';
    protected $primaryKey = 'id_negara';

    protected $fillable = [
        'id_kawasan',
        'id_direktorat',
        'nama_negara',
        'kode_negara',
    ];

    // Relationship to Direktorat
    public function direktorat()
    {
        return $this->belongsTo(Direktorat::class, 'id_direktorat');
    }

    // Relationship to Kawasan
    public function kawasan()
    {
        return $this->belongsTo(Kawasan::class, 'id_kawasan');
    }
}

