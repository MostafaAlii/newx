<?php

namespace App\Http\Controllers\Frontend\Cms;
use App\Models\{Offer, Service,Button};
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class OfferController extends Controller {
    public function index() {
        $offers = Offer::get();
        $btn = Button::whereType('offer_contact')->first();
        $title = 'ARTISTICRETOUCH.COM';
        $all_services = Service::latest()->get();
        return view('website.pages.offer', ['title' => $title, 'offers' => $offers, 'btn' => $btn, 'all_services' => $all_services]);
    } 
}
