<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Content;
use App\Traits\CommonTrait;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    use CommonTrait;

    public function index()
    {
        $contact = Content::where('title', 'contact')->where('status', 'published')->first();
        return $this->sendResponse($contact);
    }
}
