<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use App\Models\Kawasan;
use Illuminate\Http\Request;

class KawasanController extends Controller
{
    public function index()
    {
        $kawasan = Kawasan::with('direktorat')->get();
        return response()->json($kawasan);
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'nama_kawasan' => 'required|string',
            'id_direktorat' => 'required|integer|exists:direktorats,id_direktorat',
        ]);

        $kawasan = Kawasan::create($data);
        return response()->json($kawasan, 201);
    }

    public function destroy($id)
    {
        $kawasan = Kawasan::find($id);

        if ($kawasan) {
            $kawasan->delete();
            return response()->json(['message' => 'Kawasan deleted successfully']);
        }

        return response()->json(['message' => 'Kawasan not found'], 404);
    }
}
