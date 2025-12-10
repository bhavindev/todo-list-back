<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Task;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;

class TaskController extends Controller
{

    public function index()
    {

        $tasks = Task::where('user_id', Auth::id())
            ->orderByRaw("FIELD(priority, 'high', 'medium', 'low')")
            ->orderBy('created_at', 'desc')
            ->get();

        if ($tasks->isEmpty()) {
            return response()->json([
                'message' => 'No tasks found',
                'tasks' => []
            ]);
        }

        return response()->json([
            'message' => 'Tasks retrieved successfully',
            'total_tasks' => $tasks->count(),
            'tasks' => $tasks
        ]);
    }


    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'priority' => 'nullable|in:low,medium,high',
            'file' => 'nullable|file|mimes:pdf|max:2048',
        ]);

        $data = [
            'title' => $request->title,
            'description' => $request->description,
            'priority' => $request->priority ?? 'medium',
            'user_id' => Auth::id(),
        ];

        if ($request->hasFile('file')) {
            $file = $request->file('file');
            $fileName = time() . '_' . $file->getClientOriginalName();
            $filePath = $file->storeAs('tasks', $fileName, 'public');
            $data['file_path'] = $filePath;
        }

        $task = Task::create($data);

        return response()->json([
            'message' => 'Task created successfully',
            'task' => $task
        ], 201);
    }

    public function show($id)
    {
        $task = Task::findOrFail($id);

        if (Auth::id() !== $task->user_id) {
            return response()->json(['message' => 'Unauthorized'], 403);
        }

        return response()->json($task);
    }



    public function update(Request $request, $id)
    {
        // dd([
        //     'request_method' => $request->method(),
        //     'request_all' => $request->all(),
        //     'request_input' => $request->input(),
        //     'request_has_priority' => $request->has('priority'),
        //     'request_priority_value' => $request->input('priority'),
        //     'request_has_file' => $request->hasFile('file'),
        //     'request_file' => $request->file('file') ? $request->file('file')->getClientOriginalName() : null,
        //     'request_headers' => $request->headers->all(),
        //     'full_url' => $request->fullUrl(),
        //     'content_type' => $request->header('Content-Type'),
        //     'content' => $request->getContent()
        // ]);

        $task = Task::findOrFail($id);

        if (Auth::id() !== $task->user_id) {
            return response()->json(['message' => 'Unauthorized'], 403);
        }

        $request->validate([
            'title' => 'sometimes|required|string|max:255',
            'description' => 'nullable|string',
            'file' => 'nullable|file|mimes:pdf|max:2048',
            'priority' => 'nullable|in:low,medium,high',
        ]);

        $data = $request->only(['title', 'description', 'priority']);

        if ($request->hasFile('file')) {
            // Delete old file
            if ($task->file_path && Storage::disk('public')->exists($task->file_path)) {
                Storage::disk('public')->delete($task->file_path);
            }

            $file = $request->file('file');
            $fileName = time() . '_' . $file->getClientOriginalName();
            $filePath = $file->storeAs('tasks', $fileName, 'public');
            $data['file_path'] = $filePath;
        }

        $task->update($data);

        return response()->json([
            'message' => 'Task updated successfully',
            'task' => $task
        ]);
    }


    public function destroy($id)
    {
        $task = Task::findOrFail($id);

        if (Auth::id() !== $task->user_id) {
            return response()->json(['message' => 'Unauthorized'], 403);
        }

        if ($task->file_path && Storage::disk('public')->exists($task->file_path)) {
            Storage::disk('public')->delete($task->file_path);
        }

        $task->delete();

        return response()->json([
            'message' => 'Task deleted successfully'
        ]);
    }


    public function downloadFile($id)
    {
        $task = Task::findOrFail($id);

        if (Auth::id() !== $task->user_id) {
            return response()->json(['message' => 'Unauthorized'], 403);
        }

        if (!$task->file_path || !Storage::disk('public')->exists($task->file_path)) {
            return response()->json(['message' => 'File not found'], 404);
        }

        return Storage::disk('public')->download($task->file_path);
    }
}
