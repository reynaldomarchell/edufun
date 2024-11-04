<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;

class PopularController extends Controller
{
    public function index()
    {
        $articles = Article::with('writer')->orderBy('view_count', 'desc')->paginate(3);
        return view("popular.index", ['articles' => $articles]);
    }
}
