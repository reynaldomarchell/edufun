<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ArticleController;
use App\Http\Controllers\PopularController;
use App\Http\Controllers\WriterController;
use Illuminate\Support\Facades\Route;

Route::get('/', [HomeController::class,'index'])->name('home.index');
Route::get('/article/{category}', [ArticleController::class,'index'])->name('article.index');
Route::get('/article/{category}/{id}', [ArticleController::class, 'show'])->name('article.show');
Route::get('/writer', [WriterController::class, 'index'])->name('writer.index');
Route::get('/writer/{id}', [WriterController::class, 'show'])->name('writer.show');
Route::get('/about', [AboutController::class, 'index'])->name('about.index');
Route::get('/popular', [PopularController::class, 'index'])->name('popular.index');

