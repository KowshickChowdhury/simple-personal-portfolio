<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Content;
use App\Traits\CommonTrait;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    use CommonTrait;

    public function index()
    {
        $about = Content::where('title', 'about')->where('status', 'published')->first();
        return $this->sendResponse($about);
    }
}
