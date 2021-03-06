@extends('site.layout.site')

@section('type_meta', 'website')
@section('title', !empty($post->meta_title) ? $post->meta_title : $post->title) 
@section('meta_description', !empty($post->meta_description) ? $post->meta_description : $post->description) @section('keywords', $post->meta_keyword ) @section('meta_image', asset($post->image) ) 
@section('meta_url', route('post', ['cate_slug' => $category->slug, 'post_slug' => $post->slug]) )
@section('meta_image', asset($post->image) ? $post->image : '' )
@section('meta_url', route('post', ['cate_slug' =>  $category->slug, 'post_slug' => $post->slug]) )

@section('content')

<section class="pdbottom20 bgwhite">
<div class="container">
    <div class="wrapper wrapper-news-detail row">

        <div class="breadcrumbs">
            <div class="wrapper col-xs-12">
                <ul>
                    <li class="breadcrumb-item">
                        <a class="home" href="/">Trang chủ</a>
                    </li>
        
                    <li class="breadcrumb-item">
                        <a itemprop="url" title="Làm đẹp và sức khỏe"><span itemprop="title">{{ isset($post['title']) ? $post['title'] : '' }}</span></a>
                    </li>
                </ul>
            </div>
        </div>
        <!--end: .breadcrumbs-->

        <div id="news-detail" class="col-xs-12">
            <h1 class="news-title">{{ isset($post['title']) ? $post['title'] : '' }}</h1>
            <div class="news-date">
                <span class="date">{{ isset($post['updated_at']) ? $post['updated_at'] : '' }}</span>
               
            </div>
            <div class="sumary_new">
                {!! isset($post['content']) ? $post['content'] : 'Đang cật nhập thông tin' !!}

            </div>
            @if(!empty($post['tags']))
                <div class="tags">
                    <p class="timkiem_dathang">Gợi ý tìm kiếm:</p>

                    @foreach(explode(',', $post['tags']) as $tag)
                        <a href="/tags?tags={{ $tag }}" title="{{ $tag }}"><span class="tag">{{ $tag }},</span></a>
                    @endforeach

                </div>
            @endif
            <div class="function mb30">
                @include('general.sub_comments', ['post_id' => $post->post_id] )
            </div>
            <!--end: #news-detail-->

            <div class="other-news">
                <div class="common-heading">
                    <span>Bài viết liên quan</span>
                </div>
                <!--end: .common-heading-->
                <div class="list-thumb">
                    @foreach(\App\Entity\Post::relativeProduct($post->slug,4) as $post)
                    <div class="item col-md-3 col-sm-6 col-xs-12 ">
						<div class="CropImg CropImg70">
                        <a class="thumbs" href="{{ route('post', ['cate_slug' => $category->slug, 'post_slug' => $post->slug]) }}" title="{{ isset($post['title']) ? $post['title'] : ''}}">
                            <img src="{{ isset($post['image']) ? $post['image'] : ''}}" alt="{{ isset($post['title']) ? $post['title'] : ''}}" />
                        </a>
						</div>
                        <div class="inf_new">
                            <h2 class="heading"><a href="{{ route('post', ['cate_slug' => $category->slug, 'post_slug' => $post->slug]) }}" title="{{ isset($post['title']) ? $post['title'] : ''}}">{{ isset($post['title']) ? $post['title'] : ''}}</a></h2>
                            <div class="date"><?php 
							 $date=date_create($post['updated_at']);
							 echo date_format($date,"Y/m/d");
							 ?> </div>
                            <p class="sumary">{{ isset($post['description']) ? \App\Ultility\Ultility::textLimit($post['description'], 20) : '' }} </p>
                        </div>

                    </div>
                    @endforeach
                </div>
                <!--end: .list-thumb-->
            </div>

            <div class="other-news">
            </div>

            <input id="category_id" type="hidden" value="1468" />

            <div class="clearfix"></div>

        </div>
</div>
</section>



@endsection