<?php

namespace App\Http\Controllers\Frontend\Cms;
use App\Models\{Contact, Service};
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use App\Mail\ContactFormMail;
class ContactController extends Controller {
    public function index() {
        $contact = Contact::first();
        $title = 'ARTISTICRETOUCH.COM';
        $all_services = Service::latest()->get();
        return view('website.pages.contact', ['title' => $title, 'contact' => $contact, 'all_services' => $all_services]);
    } 
    
    
    public function submitForm(Request $request) { 
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255',
            'website' => 'nullable|url|max:255',
            'phone' => 'nullable|string|max:20',
            'message' => 'required|string',
        ]);

        $name = $request->input('name');
        $email = $request->input('email');
        $website = $request->input('website');
        $phone = $request->input('phone');
        $message = $request->input('message');
        $mailData = [
            'name' => $name,
            'email' => $email,
            'website' => $website,
            'phone' => $phone,
            'message' => $message,
        ];
        Mail::to('photo@test.com')->send(new ContactFormMail($mailData));
        return redirect()->back()->with('success', 'تم إرسال النموذج بنجاح!');
    }
}
