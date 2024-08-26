<?php

use App\Http\Controllers\Backend\ContentController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('app');
});

// Route::get('/admin', function () {
//     return view('content.index');
// });


// Route::get('/admin', [ContentController::class, 'index'])->name("admin.index");

// Backend route's
Route::get('/admin', [ContentController::class, 'index'])->name("admin.index");
Route::resource('/contents', ContentController::class);
Route::post('/content/{id}/edit', [ContentController::class, 'update'])->name("content.update");
Route::post('/content/{id}/delete', [ContentController::class, 'destroy'])->name("content.delete");


Route::get('/admin/content/create', function () {
    return view('content.create');
});

Route::get('/{any}', function () {
    return view('app');
})->where('any','.*');
