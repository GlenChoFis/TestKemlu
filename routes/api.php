<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NegaraController;
use App\Http\Controllers\DirektoratController;
use App\Http\Controllers\KawasanController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('home');
});

Route::get('/negara', [NegaraController::class, 'index']);
Route::post('/negara', [NegaraController::class, 'store']);
Route::delete('/negara/{id}', [NegaraController::class, 'destroy']);
