<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Content;
use Illuminate\Http\Request;

class ContentController extends Controller
{
    public function index()
    {
        $contents = Content::all();
        // dd($contents);
        return view('content.index', ['contents' => $contents]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('content.create');
    }

    public function store(Request $request)
    {
        // dd($request->all());
        
        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'type' => 'required|string',
            'status' => 'required|string',
        ]);

        $content = new Content();
        $content->title = $request->title;
        $content->content = $request->content;
        $content->type = $request->type;
        $content->status = $request->status;

        $content->save();

        return redirect()->route('contents.index')->with('success', 'Content added successfully.');
    }

    public function edit(string $id)
    {
        $data['content'] = Content::find($id);
        // dd($content);
        return view('content.update', $data);
    }
    
    public function update(Request $request, string $id)
    {
        // dd($id);
        $content = new Content();
        $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'type' => 'required|string',
            'status' => 'required|string',
        ]);

        $content = Content::find($id);

        if (!$content) {
            return redirect()->route('contents.index')->with('error', 'Content not found.');
        }

        $content->title = $request->title;
        $content->content = $request->content;
        $content->type = $request->type;
        $content->status = $request->status;

        $content->save();

        return redirect()->route('contents.index')->with('success', 'Content added successfully.');
    }

    public function destroy(string $id)
    {
        // dd($id);
        $content = Content::find($id);
        $content->delete();
        return redirect()->route('contents.index')->with('message', 'Content Deleted Successfully');
    }
}
