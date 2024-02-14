<?php

namespace App\Http\Controllers\Frontend\Cms;
use App\Models\{AboutUs, Service};
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AboutController extends Controller {
    public function index() {
        $abouts = AboutUs::get();
        $title = 'ARTISTICRETOUCH.COM';
        $all_services = Service::latest()->get();
        return view('website.pages.about', ['title' => $title, 'abouts' => $abouts, 'all_services' => $all_services]);
    } 
}
