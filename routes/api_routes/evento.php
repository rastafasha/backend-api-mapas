<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EventoController;

Route::get('eventos', [EventoController::class, 'index'])->name('evento.index');
Route::get('evento/show/{id}', [EventoController::class, 'show'])->name('evento.show');
Route::get('evento/show/pais/{pais_id}', [EventoController::class, 'showPais'])->name('evento.showPais');
Route::get('evento/code/{code}', [EventoController::class, 'showCode'])->name('evento.showCode');

Route::post('evento/store', [EventoController::class, 'store'])->name('evento.store');
Route::post('evento/update/{evento}', [EventoController::class, 'update'])->name('evento.update');
Route::delete('evento/destroy/{id}', [EventoController::class, 'destroy'])->name('evento.destroy');

