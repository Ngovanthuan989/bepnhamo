@extends('site.layout.site')

@section('type_meta', 'website')
@section('title', isset($category['meta_title']) && !empty($category['meta_title']) ? $category['meta_title'] : $category->title)
@section('meta_description',  isset($category['meta_description']) && !empty($category['meta_description']) ? $category['meta_description'] : $category->description)
@section('keywords', isset($category['meta_keyword']) && !empty($category['meta_keyword']) ? $category['meta_keyword'] : '')
@section('meta_image', !empty($category->image) ?  asset($category->image) : $information['logo'] )
@section('meta_url', '/danh-muc/'.$category->slug)

@section('content')
    <section class="module bg-dark-60 blog-page-header" data-background="{{ isset($category['image']) ? $category['image'] : ''  }}">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3">
                <h2 class="module-title font-alt">{{ isset($category['title']) ? $category['title'] : ''  }}</h2>
                <div class="module-subtitle font-serif">
                    {!! isset($category['description']) ? $category['description'] : ''  !!}
                </div>
            </div>
        </div>
    </div>
    </section>
    <section class="module">
        <div class="container">
            <div class="row multi-columns-row post-columns">
                @foreach($posts as $item)
                <div class="col-sm-6 col-md-3 col-lg-3">
                    <div class="post">
                        <div class="post-thumbnail">
                            <a href="#">
                                <img src="{{ isset($item->image) ? $item->image : '' }}" alt="{{ isset($item->title) ? $item->title : '' }}"/>
                            </a>
                        </div>
                        <div class="post-header font-alt">
                            <h2 class="post-title">
                                <a href="{{ route('post', ['cate_slug' => $category->slug, 'post_slug' => $item->slug] ) }}">
                                    {{ isset($item->title) ? $item->title : '' }}
                                </a>
                            </h2>
                            <div class="post-meta">By&nbsp;<a href="#">Admin</a>&nbsp;| {{ date("F j, Y", strtotime($item->updated_at)) }}
                            </div>
                        </div>
                        <div class="post-entry">
                            {{ isset($item->description) ? $item->description : '' }}
                        </div>
                        <div class="post-more">
                            <a class="more-link" href="{{ route('post', ['cate_slug' => $category->slug, 'post_slug' => $item->slug] ) }}">Read more</a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="pagination font-alt">
                @if ($posts->lastPage() > 1)
                    <a href="{{ $posts->url(1) }}">
                        <i class="fa fa-angle-left"></i>
                    </a>

                    @for ($i = 1; $i <= $posts->lastPage(); $i++)
                        <a class="{{ ($posts->currentPage() == $i) ? ' active' : '' }}" href="{{ $posts->url($i) }}">{{ $i }}</a>
                    @endfor
                    <a href="{{ $posts->url($posts->currentPage()+1) }}">
                        <i class="fa fa-angle-right"></i>
                    </a>
                @endif
            </div>
        </div>
    </section>
@endsection

