<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Content;
use App\Traits\CommonTrait;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    use CommonTrait;

    public function index()
    {
        $blogs = Content::where('type', 'blog')->get();
        return $this->sendResponse($blogs);
    }
}
