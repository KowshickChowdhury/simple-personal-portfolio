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
        // $content->price = $request->price;
        // $content->preview_link = $request->preview_link;
        $content->status = $request->status;

        $content->save();

        return redirect()->route('contents.index')->with('success', 'Content added successfully.');
    }

    public function edit($id)
    {
        $content = Content::find($id);
        return view('content.update', $content);
    }
}
