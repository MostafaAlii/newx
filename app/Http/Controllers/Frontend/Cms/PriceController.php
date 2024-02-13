<?php

namespace App\Http\Controllers\Frontend\Cms;

use App\Models\{Price, Service};
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class PriceController extends Controller {
    public function index() {
        $prices = Price::with(['advantages', 'gallary'])->get()->toArray();
        $all_services = Service::latest()->get();
        return view('website.pages.price', ['prices' => $prices, 'all_services' => $all_services]);
    }
}