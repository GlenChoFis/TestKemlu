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
        Schema::table('negaras', function (Blueprint $table) {
            $table->float('latitude', 10, 7)->nullable(); // Example: latitude with 7 float places
            $table->float('longitude', 10, 7)->nullable(); // Example: longitude with 7 decimal places
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('negaras', function (Blueprint $table) {
            $table->dropColumn(['latitude', 'longitude']);
        });
    }
};
