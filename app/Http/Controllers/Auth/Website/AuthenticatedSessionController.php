<?php

namespace App\Http\Controllers\Auth\Website;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use App\Providers\RouteServiceProvider;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;
use App\Models\Service;

class AuthenticatedSessionController extends Controller {
    public function create(): View {
        $all_services = Service::latest()->get();
        return view('website.auth.login', ['all_services' => $all_services]);
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $request): RedirectResponse
    {
        $request->authenticate();
        $request->session()->regenerate();
        return redirect()->route('website.orders.index');
    }

    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->forget('guard.web');

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
