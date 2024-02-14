<?php
namespace App\Http\Controllers\Auth\Website;
use App\Http\Controllers\Controller;
use App\Models\{User, Service};
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\{RedirectResponse,Request};
use Illuminate\Support\Facades\{Auth,Hash};
use Illuminate\Validation\Rules;
use Illuminate\View\View;
class RegisteredUserController extends Controller {
    public function create(): View {
        $all_services = Service::latest()->get();
        return view('website.auth.register', ['all_services' => $all_services]);
    }

    public function store(Request $request): RedirectResponse {
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:'.User::class],
            'website' => ['required', 'string', 'max:255', 'unique:'.User::class],
            'password' => ['required', 'confirmed', Rules\Password::defaults()],
        ]);

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'website' => $request->website,
            'password' => Hash::make($request->password),
            'type' => 'user',
            'status' => true,
        ]);

        event(new Registered($user));
        auth('web')->login($user);

        return redirect()->route('website.client.retouchingStyle');
    }
}
