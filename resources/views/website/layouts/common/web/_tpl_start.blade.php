<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <title>@yield('pageTitle')</title>
  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="{{ asset('website/resources/imgs/favicon.ico') }}" />
  <!-- Core theme CSS (includes Bootstrap)-->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
  <link href="{{ asset('website/resources/css/styles.css') }}" rel="stylesheet" />
  
 
  <!--<link href="{{ asset('website/resources/css/new.css') }}" rel="stylesheet" />-->
  <link href="{{ asset('website/resources/css/edits.css') }}" rel="stylesheet" />
  
  <style>
    /* Add custom CSS for the fixed navbar */
    .fixed-top-scroll {
      transition: all 0.3s ease-in-out;
    }

    /* Style the background color when the navbar is fixed */
    .fixed-top-scroll.navbar-dark {
      background-color: #333;
      /* Change to your preferred background color */
    }
    /************************************************************/
    header .navbar {
      min-height: 95px !important;
    }
    .dashboard_icon_dropdown_menu {
        display: none;
        position: relative;
        top: 100%;
        left: 0;
        width: 150px;
        background-color: #fff;
        border: 1px solid #ddd;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
    }
    .nav_item:hover .dashboard_icon_dropdown_menu {
      display: block;
    }

    .dashboard_icon_dropdown_menu li {
        padding: 10px;
        background-color: #fff;
        border-bottom: 1px solid #ddd;
    }
    .dashboard_icon_dropdown_menu li a {
        text-decoration: none;
        color: #333;
        display: block;
        padding: 8px;
        transition: background-color 0.3s;
    }

    .dashboard_icon_dropdown_menu li a:hover {
        background-color: #f5f5f5;
    }
    /* Service Menu */
    .megamenu-li {
      position: static;
      display: flex;
      justify-content: center;
      flex-direction: column;
      padding-block: 28px;
      cursor: pointer;
      min-width: 120px;
      padding-inline: 0.6rem;
      overflow: hidden;
    }

    .megamenu {
      position: absolute;
      width: 100%;
      left: 0;
      right: 0;
    }
    .megamenu .service{
      padding: 1px;
      max-width: 235px;
      max-height: 150px !important;
      margin-left: 12px;
    }
    .megamenu-li.list-unstyled {
        list-style: none;
        padding: 0;
    }
    .megamenu-li.list-unstyled .page_name {
      text-align: center;
      color: #777777;
      font-size: 10px;
    }
    .megamenu-li.list-unstyled .list-unstyled_nav_link{
      text-decoration: none;
      text-align: center;
      text-transform: uppercase;
      font-size: 18px;
      display: block;
      color: currentColor;
      position: relative;
      z-index: 2;
    }
    .serviceBox {
      position: relative;
      overflow: hidden;
      border: 1px solid #ccc;
      padding: 1px !important;
      max-height: 250px;
    }

  .serviceBox img {
    width: 100%;
    display: block;
    max-height: 250px;
    transition: transform 0.3s ease-in-out;
  }

  .serviceBox:hover img {
    transform: scale(1.1);
  }

  .serviceBox a {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    text-align: center;
    padding: 10px;
    background-color: white;
    color: black;
    transition: background-color 0.3s ease-in-out, color 0.3s ease-in-out;
  }

  .serviceBox:hover a {
    background-color: red;
    color: white;
  }
  </style>
  <script>
    // Function to check if the screen width is below a certain threshold

    // Initial call to set the initial class name based on screen size
    toggleClassName();

    // Listen for window resize events to update the class name
    window.addEventListener("resize", toggleClassName);

    function initComparisons() {
      var x, i;
      /*find all elements with an "overlay" class:*/
      x = document.getElementsByClassName("img-comp-overlay");
      for (i = 0; i < x.length; i++) {
        /*once for each "overlay" element:
              pass the "overlay" element as a parameter when executing the compareImages function:*/
        compareImages(x[i]);
      }
      function compareImages(img) {
        var slider,
          img,
          clicked = 0,
          w,
          h;
        /*get the width and height of the img element*/
        w = img.offsetWidth;
        h = img.offsetHeight;
        /*set the width of the img element to 50%:*/
        img.style.width = w / 2 + "px";
        /*create slider:*/
        slider = document.createElement("DIV");
        slider.setAttribute("class", "img-comp-slider");
        /*insert slider*/
        img.parentElement.insertBefore(slider, img);
        /*position the slider in the middle:*/
        slider.style.top = h / 2 - slider.offsetHeight / 2 + "px";
        slider.style.left = w / 2 - slider.offsetWidth / 2 + "px";
        /*execute a function when the mouse button is pressed:*/
        slider.addEventListener("mousedown", slideReady);
        /*and another function when the mouse button is released:*/
        window.addEventListener("mouseup", slideFinish);
        /*or touched (for touch screens:*/
        slider.addEventListener("touchstart", slideReady);
        /*and released (for touch screens:*/
        window.addEventListener("touchend", slideFinish);
        function slideReady(e) {
          /*prevent any other actions that may occur when moving over the image:*/
          e.preventDefault();
          /*the slider is now clicked and ready to move:*/
          clicked = 1;
          /*execute a function when the slider is moved:*/
          window.addEventListener("mousemove", slideMove);
          window.addEventListener("touchmove", slideMove);
        }
        function slideFinish() {
          /*the slider is no longer clicked:*/
          clicked = 0;
        }
        function slideMove(e) {
          var pos;
          /*if the slider is no longer clicked, exit this function:*/
          if (clicked == 0) return false;
          /*get the cursor's x position:*/
          pos = getCursorPos(e);
          /*prevent the slider from being positioned outside the image:*/
          if (pos < 0) pos = 0;
          if (pos > w) pos = w;
          /*execute a function that will resize the overlay image according to the cursor:*/
          slide(pos);
        }
        function getCursorPos(e) {
          var a,
            x = 0;
          e = e.changedTouches ? e.changedTouches[0] : e;
          /*get the x positions of the image:*/
          a = img.getBoundingClientRect();
          /*calculate the cursor's x coordinate, relative to the image:*/
          x = e.pageX - a.left;
          /*consider any page scrolling:*/
          x = x - window.pageXOffset;
          return x;
        }
        function slide(x) {
          /*resize the image:*/
          img.style.width = x + "px";
          /*position the slider:*/
          slider.style.left = img.offsetWidth - slider.offsetWidth / 2 + "px";
        }
      }
    }
  </script>
  @yield('css')
</head>
<body>
    <div class="container boddy" id="myDiv">