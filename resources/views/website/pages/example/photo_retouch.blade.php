@extends('website.layouts.website')
@section('pageTitle')
Examples | {{$title}}
@endsection

@section('css')
<link href="{{ asset('website/resources/css/edits.css') }}" rel="stylesheet" />
<!--<link href="{{ asset('website/resources/lib/nivo/nivo-slider.css') }}" rel="stylesheet" />-->
<!--<script src="{{ asset('website/resources/lib/nivo/nivo.slider.pack.js') }}" type="text/javascript"></script>-->

<!--<link rel="stylesheet" href="{{ asset('website/resources/lib/vlightbox/vlightbox1.css') }}" type="text/css" />-->
<!--<link rel="stylesheet" href="{{ asset('website/resources/lib/vlightbox/visuallightbox.css') }}" type="text/css" media="screen" />-->
<!--<script src="{{ asset('website/resources/lib/vlightbox/visuallightbox.js') }}" type="text/javascript"></script>-->
@endsection

@section('content')
<!--<div id="vlightbox1">-->
<!--    <table width="200" align="center">-->
<!--        <tbody>      -->
<!--                <tr>-->
<!--                    @foreach ($examples as $example)-->
<!--                    <td>-->
<!--                        <div align="center" bis_skin_checked="1">-->
<!--                            @if ($example->type == 'photo_retouch')-->
<!--                                <a href="{{route('website.examples.index')}}" bis_skin_checked="{{$example?->id}}">-->
<!--                            @elseif($example->type == 'photo_album')-->
<!--                                <a href="{{route('website.photo_album')}}" bis_skin_checked="{{$example?->id}}">-->
<!--                            @elseif($example->type == 'photo_frame')-->
<!--                                <a href="{{route('website.photo_frame')}}" bis_skin_checked="{{$example?->id}}">-->
<!--                            @elseif($example->type == 'photo_flyer')-->
<!--                                <a href="{{route('website.photo_flyer')}}" bis_skin_checked="{{$example?->id}}">-->
<!--                            @endif-->
<!--                                <img src="{{ asset($example->ImagePath()) }}" alt="{{$example?->name}}" width="227" height="68">-->
<!--                            </a>-->
<!--                        </div>-->
<!--                    </td>-->
<!--                    <td>-->
<!--                        <div align="center" bis_skin_checked="1">-->
<!--                            <a href="{{route('website.examples.index')}}" bis_skin_checked="1">-->
<!--                                <img src="{{ asset('website/resources/photoretouch2.jpg') }}" width="14" height="14">-->
<!--                            </a>-->
<!--                        </div>-->
<!--                    </td>-->
<!--                    @endforeach-->
<!--                </tr>   -->
<!--        </tbody>-->
<!--    </table>-->
<!--    <p>-->
<!--        @isset($exampleImage)-->
<!--            @forelse($exampleImage->images as $image)-->
<!--                <a class="vlightbox1" href="{{asset('dashboard/img/example/' . $image->photo)}}" title="{{$image->photo}}" bis_skin_checked="{{$image->photo}}">-->
<!--                    <img src="{{asset('dashboard/img/example/' . $image->photo)}}" width="240" height="180" alt="{{$image->photo}}">-->
<!--                </a>-->
<!--            @empty-->
<!--                No Example Media Found in {{$example?->name}}-->
<!--            @endforelse-->
<!--        @endisset-->
<!--    </p>-->
<!--</div>-->


    <div class="services_content_page">
      <div class="container">
        <div class="page_header">
          <h1 class="title">our services</h1>
          <p class="desc">
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Magnam,
            nostrum earum iure rem quo ipsum esse delectus nobis!
          </p>
        </div>
        <div class="serices_filter">
          <a class="service_link active"> photo retouch </a>
          <a class="service_link"> photo album </a>
          <a class="service_link"> photo frame </a>
          <a class="service_link"> photo flyer </a>
        </div>
        <div class="service_examples">
          <div class="row">
            <div class="col-lg-3 col-md-6">
              <div class="service_example">
                <img
                  src="https://photo.tag-soft.com/dashboard/img/example/lTSILbkDQp7HjVnJzyBs05QAS7LbMj8EYu0IcMIQ.jpg"
                  alt="service img"
                />

                <div class="service_desc">
                  Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-6">
              <div class="service_example">
                <img
                  src="https://photo.tag-soft.com/dashboard/img/example/lTSILbkDQp7HjVnJzyBs05QAS7LbMj8EYu0IcMIQ.jpg"
                  alt="service img"
                />

                <div class="service_desc">
                  Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-6">
              <div class="service_example">
                <img
                  src="https://photo.tag-soft.com/dashboard/img/example/lTSILbkDQp7HjVnJzyBs05QAS7LbMj8EYu0IcMIQ.jpg"
                  alt="service img"
                />

                <div class="service_desc">
                  Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                </div>
              </div>
            </div>

            <div class="col-lg-3 col-md-6">
              <div class="service_example">
                <img
                  src="https://photo.tag-soft.com/dashboard/img/example/lTSILbkDQp7HjVnJzyBs05QAS7LbMj8EYu0IcMIQ.jpg"
                  alt="service img"
                />

                <div class="service_desc">
                  Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

@endsection

@section('js')
<!--<script src="{{ asset('website/resources/lib/lightbox/dist/js/lightbox.min.js') }}"></script>-->
<!--<script>-->
<!--  lightbox.option({-->
<!--    resizeDuration: 200,-->
<!--    wrapAround: true,-->
<!--  });-->
<!--</script>-->
@endsection