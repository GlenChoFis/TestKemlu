<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Direktorat;

class DirektoratSeeder extends Seeder
{
    public function run()
    {
        $direktorats = [
            ['nama_direktorat' => 'Aspasaf'],
            ['nama_direktorat' => 'Amerop'],
        ];

        foreach ($direktorats as $direktorat) {
            Direktorat::create($direktorat);
        }
    }
}
