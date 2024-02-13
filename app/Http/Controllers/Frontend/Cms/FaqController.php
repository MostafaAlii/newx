<?php

namespace App\Http\Controllers\Frontend\Cms;
use App\Models\{Faq, Service};
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class FaqController extends Controller {
    public function index() {
        $faqs = Faq::get();
        $title = 'ARTISTICRETOUCH.COM';
        $all_services = Service::latest()->get();
        return view('website.pages.faq', ['title' => $title, 'faqs' => $faqs, 'all_services' => $all_services]);
    } 
}
