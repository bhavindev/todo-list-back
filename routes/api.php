<?php

use App\Http\Controllers\Api\AuthController;
use App\Http\Controllers\Api\TaskController;
use Illuminate\Support\Facades\Route;

// Public routes
Route::post('/register', [AuthController::class, 'register']);
Route::post('/login', [AuthController::class, 'login']);

// Protected routes
// Route::middleware('auth:sanctum')->group(function () {
//     Route::post('/logout', [AuthController::class, 'logout']);
    
//     // Task routes
//     Route::apiResource('tasks', TaskController::class);
//     Route::get('/tasks/{task}/download', [TaskController::class, 'downloadFile']);
// });



// Protected routes
Route::middleware('auth:sanctum')->group(function () {
    Route::post('/logout', [AuthController::class, 'logout']);
    
   
    Route::get('/tasks', [TaskController::class, 'index']);           
    Route::post('/tasks', [TaskController::class, 'store']);          
    Route::get('/tasks/{id}', [TaskController::class, 'show']);      
    Route::post('/tasks/{id}', [TaskController::class, 'update']);     

    Route::delete('/tasks/{id}', [TaskController::class, 'destroy']); 
    

    Route::get('/tasks/{id}/download', [TaskController::class, 'downloadFile']);
});