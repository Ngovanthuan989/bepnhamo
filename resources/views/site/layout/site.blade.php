<!DOCTYPE html >
<html mlns="http://www.w3.org/1999/xhtml"
      xmlns:fb="http://ogp.me/ns/fb#" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <meta name="description" content="@yield('meta_description')" />
    <meta name="keywords" content="@yield('keywords')" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:type" content="@yield('type_meta')"/>
    <meta property="og:title" content="@yield('title')" />
    <meta property="og:description" content="@yield('meta_description')" />
    <meta property="og:url" content="@yield('meta_url')" />
    <meta property="og:image" content="@yield('meta_image')" />
    <meta property="og:image:secure_url" content="@yield('meta_image')" />
    <meta property="og:image:width" content="300" />
    <meta property="og:image:height" content="300" />
    <!--
    Document Title
    =============================================
    -->
    <title>@yield('title')</title>
    <!--
    Favicons
    =============================================
    -->
    <link rel="apple-touch-icon" sizes="57x57" href="{{ !empty($information['icon']) ?  asset($information['icon']) : '' }}">
    <link rel="icon" type="image/png" sizes="16x16" href="{{ !empty($information['icon']) ?  asset($information['icon']) : '' }}">
    <link rel="manifest" href="{{ asset('/manifest.json')}}">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="{{ !empty($information['icon']) ?  asset($information['icon']) : '' }}">
    <meta name="theme-color" content="#ffffff">
    <!--
    Stylesheets
    =============================================
    -->
    <!-- Default stylesheets-->
    <link href="{{ asset('assets/lib/bootstrap/dist/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:400,700" rel="stylesheet">
    <link href="{{ asset('https://fonts.googleapis.com/css?family=Volkhov:400i')}}" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="{{ asset('assets/lib/animate.css/animate.css')}}" rel="stylesheet">
    <link href="{{ asset('assets/lib/components-font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    <link href="{{ asset('assets/lib/et-line-font/et-line-font.css')}}" rel="stylesheet">
    <link href="{{ asset('assets/lib/flexslider/flexslider.css')}}" rel="stylesheet">
    <link href="{{ asset('assets/lib/owl.carousel/dist/assets/owl.carousel.min.css')}}" rel="stylesheet">
    <link href="{{ asset('assets/lib/owl.carousel/dist/assets/owl.theme.default.min.css')}}" rel="stylesheet">
    <link href="{{ asset('assets/lib/magnific-popup/dist/magnific-popup.css')}}" rel="stylesheet">
    <link href="{{ asset('assets/lib/simple-text-rotator/simpletextrotator.css')}}" rel="stylesheet">
    <!-- Main stylesheet and color file-->
    <link href="{{ asset('assets/css/style.css')}}" rel="stylesheet">
    <link id="color-scheme" href="{{ asset('assets/css/colors/default.css')}}" rel="stylesheet">


    <!--
     JavaScripts
     =============================================
     -->

    <script src="{{ asset('assets/lib/jquery/dist/jquery.js') }}"></script>
    <script src="{{ asset('assets/lib/bootstrap/dist/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/lib/wow/dist/wow.js') }}"></script>
    <script src="{{ asset('assets/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js') }}"></script>
    <script src="{{ asset('assets/lib/isotope/dist/isotope.pkgd.js') }}"></script>
    <script src="{{ asset('assets/lib/imagesloaded/imagesloaded.pkgd.js') }}"></script>
    <script src="{{ asset('assets/lib/flexslider/jquery.flexslider.js') }}"></script>
    <script src="{{ asset('assets/lib/owl.carousel/dist/owl.carousel.min.js') }}"></script>
    <script src="{{ asset('assets/lib/smoothscroll.js') }}"></script>
    <script src="{{ asset('assets/lib/magnific-popup/dist/jquery.magnific-popup.js') }}"></script>
    <script src="{{ asset('assets/lib/simple-text-rotator/jquery.simple-text-rotator.min.js') }}"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/numeral.js/2.0.6/numeral.min.js"></script>
    {{--  <script async="" defer="" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDK2Axt8xiFYMBMDwwG1XzBQvEbYpzCvFU"></script>--}}
    <script src="{{ asset('assets/js/plugins.js') }}"></script>
    <script src="{{ asset('assets/js/main.js') }}"></script>

    <style>
      .rung {
        animation: shake 0.82s cubic-bezier(.36,.07,.19,.97) both;
        transform: translate3d(0, 0, 0);
        backface-visibility: hidden;
        perspective: 1000px;
      }

      @keyframes shake {
        10%, 90% {
          transform: translate3d(-1px, 0, 0);
        }

        20%, 80% {
          transform: translate3d(2px, 0, 0);
        }

        30%, 50%, 70% {
          transform: translate3d(-4px, 0, 0);
        }

        40%, 60% {
          transform: translate3d(4px, 0, 0);
        }
      }
    </style>
</head>

<body>
  {{--<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js"></script>--}}
  <!-- Load Facebook SDK for JavaScript -->
{{--  {!! isset($information['chat-facebook']) ? $information['chat-facebook'] : '' !!}--}}
  <main>
        <div class="page-loader">
            <div class="loader">Loading...</div>
        </div>

  @include('site.common.header')

    <!-- Phần nội dung -->
  @yield('content')

  @include('site.common.footer')

    <div class="scroll-up"><a href="#totop"><i class="fa fa-angle-double-up"></i></a></div>

  </main>

<!-- Bizweb javascript customer -->
<!-- Add to cart -->


<!-- DANG KI EMAIL VA THEM GIO HANG -->
<script>
    function subcribeEmailSubmit(e) {
        var email = $(e).find('.emailSubmit').val();
        var token =  $(e).find('input[name=_token]').val();

        $.ajax({
            type: "POST",
            url: '{!! route('subcribe_email') !!}',
            data: {
                email: email,
                _token: token
            },
            success: function(data) {
                var obj = jQuery.parseJSON(data);

                alert(obj.message);
            }
        });
        return false;
    }

    function addToOrder(e) {
        var data = $(e).serialize();

        $.ajax({
            type: "POST",
            url: '{!! route('addToCart') !!}',
            data: data,
            success: function(result){
                var obj = jQuery.parseJSON( result);

                var num = +$("#countOrder").text() + 1;
                $("#countOrder").text(num);
                $('#shopping-cart').addClass('rung');
                alert('Đặt hàng thành công');

                window.location.href = '/gio-hang';
            },
            error: function(error) {
                //alert('Lỗi gì đó đã xảy ra!')
            }

        });

        return false;
    }

	function contact(e) {
		var $btn = $(e).find('button').button('loading');
		var data = $(e).serialize();

		$.ajax({
            type: "POST",
            url: '{!! route('sub_contact') !!}',
            data: data,
            success: function(result){
                var obj = jQuery.parseJSON( result);
				// gửi thành công
                  alert(obj.message);
                  $btn.button('reset');

                  return;
            },
            error: function(error) {
                //alert('Lỗi gì đó đã xảy ra!')
            }

        });
	}
</script>

</body>
</html>