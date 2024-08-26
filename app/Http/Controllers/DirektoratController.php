<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\Direktorat;
use Illuminate\Http\Request;

class DirektoratController extends Controller
{
    public function index()
    {
        $direktorat = Direktorat::all();
        return response()->json($direktorat);
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'nama_direktorat' => 'required|string'
        ]);

        $direktorat = Direktorat::create($data);
        return response()->json($direktorat, 201);
    }

    public function destroy($id)
    {
        $direktorat = Direktorat::find($id);

        if ($direktorat) {
            $direktorat->delete();
            return response()->json(['message' => 'Direktorat deleted successfully']);
        }

        return response()->json(['message' => 'Direktorat not found'], 404);
    }
}
