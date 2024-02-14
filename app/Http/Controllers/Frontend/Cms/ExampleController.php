<?php

namespace App\Http\Controllers\Frontend\Cms;
use App\Models\{Example, Service};
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
class ExampleController extends Controller {
    public function index() {
        $examples = Example::get();
        $exampleImage = Example::whereType('photo_retouch')->with('images')->first();
        $title = 'Photo Retouch';
        $all_services = Service::latest()->get();
        return view('website.pages.example.photo_retouch', ['title' => $title, 'examples' => $examples, 'exampleImage' => $exampleImage, 'all_services' => $all_services]);
    }
    
    public function photo_album() {
        $examples = Example::get();
        $exampleImage = Example::whereType('photo_album')->with('images')->first();
        $title = 'Photo Album';
        $all_services = Service::latest()->get();
        return view('website.pages.example.photo_album', ['title' => $title,'examples' => $examples, 'exampleImage' => $exampleImage, 'all_services' => $all_services]);
    }

    public function photo_frame() {
        $examples = Example::get();
        $exampleImage = Example::whereType('photo_frame')->with('images')->first();
        $title = 'Photo Frame';
        $all_services = Service::latest()->get();
        return view('website.pages.example.photo_frame', ['title' => $title,'examples' => $examples, 'exampleImage' => $exampleImage, 'all_services' => $all_services]);
    }

    public function photo_flyer() {
        $examples = Example::get();
        $exampleImage = Example::whereType('photo_flyer')->with('images')->first();
        $title = 'Photo Flyer';
        $all_services = Service::latest()->get();
        return view('website.pages.example.photo_flyer', ['title' => $title,'examples' => $examples, 'exampleImage' => $exampleImage, 'all_services' => $all_services]);
    }
}