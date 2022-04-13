@extends('site.layout.site')

@section('title', 'Đăng nhập')
@section('meta_description', isset($information['meta_description']) ? $information['meta_description'] : '')
@section('keywords', isset($information['meta_keyword']) ? $information['meta_keyword'] : '')

@section('content')

    <section class="module">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3">
                    <h1 class="module-title font-alt">Đăng nhập</h1>
                </div>
            </div>
            <section id="contact-content">
                <div class="">
                    <div class="contact-info col-xs-12 col-xs-offset-0 col-md-offset-2 col-md-8 col-lg-6 col-lg-offset-3">
                        <form  action="/dang-nhap" method="post" enctype="multipart/form-data">
                            {!! csrf_field() !!}
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label"><span class="text-b700">Tài khoản</span><span class="clred pd-05">(*)</span></label>
                                <div class="col-sm-8">
                                    <input type="email" class="form-control f14" name="email" placeholder="Tài khoản đăng nhập" value="{{ old('name') }}" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="staticEmail" class="col-sm-4 col-form-label"><span class="text-b700">Mật khẩu</span><span class="clred pd-05">(*)</span></label>
                                <div class="col-sm-8">
                                    <input type="password" class="form-control f14" name="password" placeholder="Mật khẩu đăng nhập" value="" required>
                                </div>

                            </div>

                            <div class="form-group">
                                <div class="checkbox col-md-8 col-md-offset-4">
                                    <div class="checkbox tiny m-b-2">
                                        <div class="checkbox-overlay">
                                            <input type="checkbox" />
                                            <div class="checkbox-container">
                                                <div class="checkbox-checkmark"></div>
                                            </div>
                                            <label>Ghi nhớ mật khẩu</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="form-group">

                                @if($errors->any())
                                    @foreach ($errors->all() as $error)
                                        <div class="alert alert-danger" role="alert">
                                            <strong>Thông tin đăng nhập không chính xác. </strong>
                                        </div>
                                    @endforeach
                                @endif
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-4"></div>
                                <div class="col-sm-8 pdtop30">
                                    <button type="submit" class="btn btn-primary">Đăng nhập</button>

                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-8 offset-4">
                                    <span class="left mgright20"><a href="/trang/quen-mat-khau" title="Quên mật khẩu">Quên mật khẩu ? </a></span>
                                    <span class="right"><a href="dang-ky" title="">Bạn chưa có tài khoản ? </a></span>
                                </div>
                            </div>
                        </form>
                    </div><!--end: .contact-info-->
                </div>
            </section><!--end: #content-->
        </div>
    </section>

@endsection
