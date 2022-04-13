@extends('site.layout.site')

@section('title', isset($information['meta_title']) ? $information['meta_title'] : '')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')
        @include('site.partials.slider')
        <div class="main">
            <section class="module" id="services">
                <div class="container">
                    @if(isset($information['title_1']))
                    <div class="row">
                        <div class="col-sm-2 col-sm-offset-5">
                            <div class="alt-module-subtitle"><span class="holder-w"></span>
                                <h5 class="font-serif">{{ $information['title_1'] }}</h5><span class="holder-w"></span>
                            </div>
                        </div>
                    </div>
                    @endif
                    @if(isset($information['sub_title_1']))
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2">
                            <h2 class="module-title font-alt">{{ $information['sub_title_1'] }}</h2>
                        </div>
                    </div>
                    @endif
                    <div class="row multi-columns-row">
                        @foreach(\App\Entity\SubPost::showSubPost('service', 4) as $id => $service)
                        <div class="col-sm-6 col-md-3 col-lg-3">
                            <div class="features-item">
                                <div class="features-icon"><span class=" {{ isset($service['icon']) ? $service['icon'] : '' }}"></span></div>
                                <h3 class="features-title font-alt"> {{ isset($service['title']) ? $service['title'] : '' }}</h3>
                                {{ isset($service['description']) ? $service['description'] : '' }}
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </section>
            <hr class="divider-w">
            <section class="module" id="specialities">
                <div class="container">
                    @if(isset($information['title_2']))
                    <div class="row">
                        <div class="col-sm-2 col-sm-offset-5">
                            <div class="alt-module-subtitle"><span class="holder-w"></span>
                                <h5 class="font-serif">Take a look at</h5><span class="holder-w"></span>
                            </div>
                        </div>
                    </div>
                    @endif
                    @if(isset($information['sub_title_2']))
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2">
                            <h2 class="module-title font-alt">{{ $information['sub_title_2'] }}</h2>
                        </div>
                    </div>
                    @endif
                    <div class="row multi-columns-row">
                        @foreach(\App\Entity\SubPost::showSubPost('our-specialities', 4) as $id => $specialities	)
                        <div class="col-sm-6 col-md-3 col-lg-3">
                            <div class="content-box">
                                <div class="content-box-image">
                                    <img src="{{ isset($specialities['image']) ? $specialities['image'] : '' }}" alt="{{ isset($specialities['title']) ? $specialities['title'] : '' }}"/>
                                </div>
                                <h3 class="content-box-title font-serif">{{ isset($specialities['title']) ? $specialities['title'] : '' }}</h3>
                                {{ isset($specialities['description']) ? $specialities['description'] : '' }}
                            </div>
                        </div>
                        @endforeach
                    </div>
                </div>
            </section>
            @if(isset($information['title_trong_video']))
            <section class="module module-video bg-dark-30" data-background="{{ asset('assets/images/restaurant/coffee_bg.png') }}">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3">
                            <h2 class="module-title font-alt mb-0">{{ $information['title_trong_video'] }}</h2>
                        </div>
                    </div>
                </div>
                <div class="video-player" data-property="{videoURL:'{{  $information['link_video'] }}', containment:'.module-video', startAt:3, mute:true, autoPlay:true, loop:true, opacity:1, showControls:false, showYTLogo:false, vol:25}"></div>
            </section>
            @endif
            <section class="module" id="menu">
                <div class="container">
                    @if(isset($information['title_3']))
                    <div class="row">
                        <div class="col-sm-2 col-sm-offset-5">
                            <div class="alt-module-subtitle"><span class="holder-w"></span>
                                <h5 class="font-serif">{{ $information['title_3'] }}</h5><span class="holder-w"></span>
                            </div>
                        </div>
                    </div>
                    @endif
                    @if(isset($information['sub_title_3']))
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2">
                            <h2 class="module-title font-alt">{{ $information['sub_title_3'] }}</h2>
                        </div>
                    </div>
                    @endif
                    <div class="row multi-columns-row">
                        <div class="col-sm-12 ">
                            @foreach(\App\Entity\SubPost::showSubPost('menu-san-pham', 10) as $id => $menu)
                            <div class="col-sm-6">
                                <div class="row">
                                    <div class="col-sm-8">
                                        <h4 class="menu-title font-alt"> {{ isset($menu['title']) ? $menu['title'] : '' }}</h4>
                                        <div class="menu-detail font-serif">{{ isset($menu['description']) ? $menu['description'] : '' }}</div>
                                    </div>
                                    <div class="col-sm-4 menu-price-detail">
                                        <h4 class="menu-price font-alt">{{ isset($menu['gia']) ? $menu['gia'] : '' }}</h4>
                                    </div>
                                </div>
                                <div class="menu"></div>
                            </div>
                            @endforeach
                    </div>
                    @if(isset($information['button_title_3']))
                    <div class="text-center">
                        <a class="btn btn-border-d mt-50" href="{{ $information['button_link'] }}">{{ $information['button_title_3'] }}</a>
                    </div>
                    @endif
                </div>
            </section>
            <section class="module pt-0 pb-0">
                <div class="row position-relative m-0">
                    <div class="col-xs-12 col-md-6 side-image-text">
                        <div class="row">
                            <div class="col-sm-12">
                                @if(isset($information['title_form']))
                                <h2 class="module-title font-alt align-left">{{ $information['title_form'] }}</h2>
                                @endif
                                @if(isset($information['sub_title_form']))
                                <p class="module-subtitle font-serif align-left">
                                    {{ $information['sub_title_form'] }}
                                </p>
                                @endif
                            </div>
                        </div>
{{--                        <form class="reservation-form" id="reservationForm" action="php/reservation.php" method="post">--}}
{{--                            <div class="form-group">--}}
{{--                                <div class="input-group">--}}
{{--                                    <div class="input-group-addon"><i class="icon-calendar"></i></div>--}}
{{--                                    <input class="form-control input-lg" id="date" type="date" name="date" placeholder="dd/mm/yyyy" required=""/>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="form-group">--}}
{{--                                <div class="input-group">--}}
{{--                                    <div class="input-group-addon"><i class="icon-clock"></i></div>--}}
{{--                                    <select class="form-control input-lg" id="time" name="time" type="text" required="required">--}}
{{--                                        <option value="time" disabled="" selected="">Select Time</option>--}}
{{--                                        <option value="1.30">1:30 pm</option>--}}
{{--                                        <option value="3.00">3:00 pm</option>--}}
{{--                                        <option value="4.30">4:30 pm</option>--}}
{{--                                        <option value="6.00">6:00 pm</option>--}}
{{--                                        <option value="7.30">7:30 pm</option>--}}
{{--                                    </select>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="form-group">--}}
{{--                                <div class="input-group">--}}
{{--                                    <div class="input-group-addon"><i class="icon-profile-male"></i></div>--}}
{{--                                    <input class="form-control input-lg" id="people" type="number" name="people" min="1" max="50" step="1" placeholder="Number of people" required=""/>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="form-group">--}}
{{--                                <div class="input-group">--}}
{{--                                    <div class="input-group-addon"><i class="icon-envelope"></i></div>--}}
{{--                                    <input class="form-control input-lg" type="email" id="email" name="email" placeholder="Your Email*" required="required" data-validation-required-message="Please enter your email address."/>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                            <div class="form-group">--}}
{{--                                <button class="btn btn-g btn-round btn-block btn-lg mt-20" id="rfsubmit" type="submit"><i class="fa fa-paper-plane-o"></i> Reserve</button>--}}
{{--                            </div>--}}
{{--                            <div id="reservationFormResponse"></div>--}}
{{--                        </form>--}}
                        <form id="contactForm" onSubmit="return contact(this);">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="form-group">
                                <label class="sr-only" for="name">Name</label>
                                <input class="form-control" type="text" id="name" name="name" placeholder="Your Name*" required="required" data-validation-required-message="Please enter your name."/>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="email">Email</label>
                                <input class="form-control" type="email" id="email" name="email" placeholder="Your Email*" required="required" data-validation-required-message="Please enter your email address."/>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" rows="7" id="message" name="message" placeholder="Your Message*" required="required" data-validation-required-message="Please enter your message."></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="text-center">
                                <button class="btn btn-block btn-round btn-d" id="" type="submit">Submit</button>
                            </div>
                        </form>
                    </div>
                    <div class="col-xs-12 col-md-6 col-md-offset-6 side-image restaurant-image-overlay"
                         data-background="{{ $information['image_form'] }}">
                    </div>
                </div>
            </section>
            @if(isset($information['nhung-ban-do']))
            <section id="map-section">
                <div id="map">
                    {!!  $information['nhung-ban-do'] !!}
                </div>
            </section>
            @endif
        </div>
@endsection


<!--END  MODAL -->