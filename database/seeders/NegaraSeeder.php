<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Negara;

class NegaraSeeder extends Seeder
{
    public function run()
    {
        $negaras = [
            ['nama_negara' => 'REP.RAKYAT CINA', 'kode_negara' => 'CN', 'id_kawasan' => 1, 'id_direktorat' => 1], // Asia Timur, Aspasaf
            ['nama_negara' => 'MALAYSIA', 'kode_negara' => 'MY', 'id_kawasan' => 2, 'id_direktorat' => 1], // Asia Tenggara, Aspasaf
            ['nama_negara' => 'INDIA', 'kode_negara' => 'IN', 'id_kawasan' => 3, 'id_direktorat' => 1], // Asia Selatan & Tengah, Aspasaf
            ['nama_negara' => 'AMERIKA SERIKAT', 'kode_negara' => 'US', 'id_kawasan' => 4, 'id_direktorat' => 2], // Amerika 1, Amerop
            ['nama_negara' => 'BELANDA', 'kode_negara' => 'NL', 'id_kawasan' => 5, 'id_direktorat' => 2], // Eropa 1, Amerop
            ['nama_negara' => 'JERMAN', 'kode_negara' => 'DE', 'id_kawasan' => 6, 'id_direktorat' => 2], // Eropa 2, Amerop
            ['nama_negara' => 'ARGENTINA', 'kode_negara' => 'RA', 'id_kawasan' => 7, 'id_direktorat' => 2], // Amerika 2, Amerop
        ];

        foreach ($negaras as $negara) {
            Negara::create($negara);
        }
    }
}
