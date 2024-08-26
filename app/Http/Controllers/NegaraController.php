<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Negara;
use Illuminate\Http\Request;

class NegaraController extends Controller
{
    public function index()
{
    $negara = Negara::with('direktorat', 'kawasan')->get();

    $negaradata = $negara->map(function ($negara) {
        return [
            "id" => $negara->id_negara,
            "country_name" => $negara->nama_negara,
            "created_at" => $negara->created_at,
            "latitude" => $negara->latitude,
            "longitude" => $negara->longitude,
            "direktorat" => [
                "id" => $negara->direktorat->id_direktorat,
                "nama_direktorat" => $negara->direktorat->nama_direktorat,
            ],
            "region" => [
                "id" => $negara->kawasan->id_kawasan,
                "nama_kawasan" => $negara->kawasan->nama_kawasan,
            ]
        ];
    });

    // Return the data as a JSON response
    return response()->json([
        'status' => 'success',
        'data' => ['negara' => $negaradata]
    ]);
}


    // Create a new Negara entry
    public function store(Request $request)
    {
        $data = $request->validate([
            'nama_negara' => 'required|string',
            'kode_negara' => 'required|string|size:2',
            'id_kawasan' => 'required',
            'id_direktorat' => 'required',

        ]);

        $negara = Negara::create($data);

        return response()->json($negara, 201);
    }

    // Delete an existing Negara entry
    public function destroy($id)
    {
        $negara = Negara::find($id);

        if ($negara) {
            $negara->delete();
            return response()->json(['message' => 'Negara deleted successfully']);
        }

        return response()->json(['message' => 'Negara not found'], 404);
    }
}
