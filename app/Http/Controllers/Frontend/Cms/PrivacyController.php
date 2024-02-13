<?php

namespace App\Http\Controllers\Frontend\Cms;
use App\Models\{Privacy, Service};
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PrivacyController extends Controller {
    public function index() {
        $privacies = Privacy::get();
        $title = 'ARTISTICRETOUCH.COM';
        $all_services = Service::latest()->get();
        return view('website.pages.privacies', ['title' => $title, 'privacies' => $privacies, 'all_services' => $all_services]);
    } 
}
