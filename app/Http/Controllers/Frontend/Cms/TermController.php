<?php

namespace App\Http\Controllers\Frontend\Cms;
use App\Models\{Term, Service};
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class TermController extends Controller {
    public function index() {
        $terms = Term::get();
        $title = 'ARTISTICRETOUCH.COM';
        $all_services = Service::latest()->get();
        return view('website.pages.terms', ['title' => $title, 'terms' => $terms, 'all_services' => $all_services]);
    } 
}
