<!-- Start New Navbar -->
  <!--<link href="{{ asset('website/resources/css/edits.css') }}" rel="stylesheet" />-->
<div class="welcome_statement"></div>
    <div class="border_top_container">
      <div class="block1"></div>
      <div class="block2"></div>
      <div class="block3"></div>
      <div class="block4"></div>
      <div class="block5"></div>
      <div class="block6"></div>
      <div class="block7"></div>
      <div class="block8"></div>
      <div class="block7"></div>
      <div class="block8"></div>
      <div class="block7"></div>
      <div class="block8"></div>
      <div class="block7"></div>
      <div class="block14"></div>
      <div class="block15"></div>
      <div class="block16"></div>
      <div class="block17"></div>
      <div class="block18"></div>
      <div class="block19"></div>
      <div class="block20"></div>
      <div class="block21"></div>
      <div class="block22"></div>
      <div class="block23"></div>
      <div class="block24"></div>
      <div class="block25"></div>
      <div class="block26"></div>
      <div class="block27"></div>
    </div>

<header class="header_mmx">
  <div class="container">
    <nav class="navbar navbar-expand-lg py-0">
      <a href="{{route('website.home')}}" class="logo">
        <img src="{{ asset('website/resources/dashboard/resource/img/logo.png') }}" alt="company logo" />
      </a>

      <ul class="main_menu">
        <li class="nav_item {{ request()->routeIs('website.home')  ? 'active' : null }}">
          <a href="{{route('website.home')}}" class="nav_link">Home</a>
          <span class="page_name">Go to home</span>
        </li>
        <li class="nav_item {{ request()->routeIs('website.prices.index')  ? 'active' : null }}">
          <a href="{{route('website.prices.index')}}" class="nav_link">Price</a>
          <span class="page_name">Go to price</span>
        </li>

        <li class="nav-item dropdown megamenu-li list-unstyled">
          <a class="nav-link list-unstyled_nav_link dropdown-toggle" href="#" role="button" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Service
          </a>
          <span class="page_name">Go to Service</span>
          <div class="dropdown-menu megamenu" aria-labelledby="dropdown01">
            <div class="row">
              @foreach($all_services as $service)
                  <div class="col-sm-6 col-lg-3 service">
                      <div class="serviceBox">
                          <img src="{{$service->ImagePath()}}" alt="{{ $service->name }}" style="width: 100%; max-height:150px;">
                          <a href="{{route('website.all_services.show', ['service' => $service->id])}}">{{ $service->name }}</a>
                      </div>
                  </div>
              @endforeach
            </div>
          </div>
        </li>
      

        


        <li class="nav_item {{ request()->routeIs('website.tour.step_one')  ? 'active' : null }}">
          <a href="{{route('website.tour.step_one')}}" class="nav_link">Tour</a>
          <span class="page_name">Go to tour</span>
        </li>

        <li class="nav_item {{ request()->routeIs('website.faq')  ? 'active' : null }}">
          <a href="{{route('website.faq')}}" class="nav_link">FAQ</a>
          <span class="page_name">Go to faq</span>
        </li>

        <!--Code NavBar-->
        @guest('web')
        <li class="nav_item dropdown">
          <a class="nav_link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            user
          </a>
          <ul class="dropdown-menu">
            <li class="{{ request()->routeIs('login')  ? 'active' : null }}">
              <a class="dropdown-item" href="{{ route('login') }}">Sign In</a>
            </li>
            <li>
              <a class="dropdown-item" href="{{ route('register') }}">Register</a>
            </li>
          </ul>
        </li>
        @endguest

        @auth('web')
        <li class="nav_item dropdown">
          <a class="nav_link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            {{ get_user_data()->name }}
          </a>
          <ul class="dropdown-menu">
            <li class="{{ request()->routeIs('website.client.dashboard')  ? 'active' : null }}">
              <a class="dropdown-item" href="{{ route('website.client.dashboard') }}">Dashboard</a>
            </li>
            <li>
              <a href="#" onclick="event.preventDefault(); document.getElementById('user-log-out').submit();" class="dropdown-item">Sign-Out</a>
              <form id="user-log-out" action="{{ route(get_guard_name().'.logout') }}" method="POST">
                @csrf
              </form>
            </li>
          </ul>
        </li>
        @endauth
      </ul>
    </nav>
  </div>
</header>
<!-- End New Navbar -->