<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('negaras', function (Blueprint $table) {
            $table->id('id_negara');
            $table->foreignId('id_kawasan')->constrained('kawasans', 'id_kawasan');
            $table->foreignId('id_direktorat')->constrained('direktorats', 'id_direktorat');
            $table->string('nama_negara');
            $table->string('kode_negara');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('negaras');
    }
};
