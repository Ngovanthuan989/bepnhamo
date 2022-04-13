@extends('site.layout.site')

@section('title', 'Đăng ký')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')

    <section class="module">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <h1 class="module-title font-alt">Đăng ký</h1>
                </div>
            </div>
            <section id="contact-content">
                <div class="">
                    <div class="contact-info col-xs-12 col-xs-offset-0 col-md-offset-2 col-md-8 col-lg-6 col-lg-offset-3">
                        <form  action="/dang-ky" method="post" enctype="multipart/form-data">
                            {!! csrf_field() !!}
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label"><span class="text-b700">Họ và tên</span><span class="clred pd-05">(*)</span></label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control f14" name="name" placeholder="Họ và tên" value="{{ old('name') }}" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label"><span class="text-b700">Điện thoại</span><span class="clred pd-05">(*)</span></label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control f14" name="phone" placeholder="Điện thoại" value="{{ old('phone') }}" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label"><span class="text-b700">Email:</span><span class="clred pd-05">(*)</span></label>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control f14" name="email" placeholder="email" value="{{ old('email') }}" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label"><span class="text-b700">Mật khẩu:</span><span class="clred pd-05">(*)</span></label>
                                <div class="col-sm-8">
                                    <input type="password" class="form-control f14" name="password" placeholder="Mật khẩu" value="" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label"><span class="text-b700">Nhập lại Mật khẩu:</span><span class="clred pd-05">(*)</span></label>
                                <div class="col-sm-8">
                                    <input type="password" class="form-control f14" name="password_confirmation" placeholder="Mật khẩu đăng nhập" value="" required>
                                </div>
                            </div>
                            @if ($errors->has('email'))
                                <div class="alert alert-danger" role="alert">
                                    Email đã tồn tại, hoặc bạn nhập sai địa chỉ email
                                </div>
                            @endif
                            @if ($errors->has('password'))
                                <div class="alert alert-danger" role="alert">
                                    <strong>Xác nhận mật khẩu không đúng. </strong>
                                </div>
                            @endif
                            <div class="form-group row">
                                <div class="col-sm-4"></div>
                                <div class="col-sm-8 pdtop30">
                                    <button type="submit" class="btn btn-primary">Đăng ký</button>

                                </div>
                            </div>
                        </form>
                    </div><!--end: .contact-info-->
                </div>
            </section><!--end: #content-->
        </div>
    </section>

@endsection
