<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Kawasan;

class KawasanSeeder extends Seeder
{
    public function run()
    {
        $kawasans = [
            ['nama_kawasan' => 'Asia Timur', 'id_direktorat' => 1], // Aspasaf
            ['nama_kawasan' => 'Asia Tenggara', 'id_direktorat' => 1], // Aspasaf
            ['nama_kawasan' => 'Asia Selatan & Tengah', 'id_direktorat' => 1], // Aspasaf
            ['nama_kawasan' => 'Amerika 1', 'id_direktorat' => 2], // Amerop
            ['nama_kawasan' => 'Eropa 1', 'id_direktorat' => 2], // Amerop
            ['nama_kawasan' => 'Eropa 2', 'id_direktorat' => 2], // Amerop
            ['nama_kawasan' => 'Amerika 2', 'id_direktorat' => 2], // Amerop
        ];

        foreach ($kawasans as $kawasan) {
            Kawasan::create($kawasan);
        }
    }
}
