@extends('site.layout.site')

@section('type_meta', 'website')
@section('title', !empty($post->meta_title) ? $post->meta_title : $post->title) 
@section('meta_description', !empty($post->meta_description) ? $post->meta_description : $post->description) @section('keywords', $post->meta_keyword ) @section('meta_image', asset($post->image) ) 
@section('meta_url', route('post', ['cate_slug' => $category->slug, 'post_slug' => $post->slug]) )
@section('meta_image', asset($post->image) ? $post->image : '' )
@section('meta_url', route('post', ['cate_slug' =>  $category->slug, 'post_slug' => $post->slug]) )

@section('content')
    <section class="module-small">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-md-3 sidebar">
{{--                    <div class="widget">--}}
{{--                        <form role="form">--}}
{{--                            <div class="search-box">--}}
{{--                                <input class="form-control" type="text" placeholder="Search..."/>--}}
{{--                                <button class="search-btn" type="submit"><i class="fa fa-search"></i></button>--}}
{{--                            </div>--}}
{{--                        </form>--}}
{{--                    </div>--}}
                    <div class="widget">
                        <h5 class="widget-title font-alt">Blog Categories</h5>
                        <ul class="icon-list">
                            @foreach(\App\Entity\Category::getCate('post', 5) as $category)
                            <li>
                                <a href="{{ route('site_category_post', ['slug' => $category->slug ]) }}">{{ isset($category->title) ? $category->title : '' }}</a>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                    <div class="widget">
                        <h5 class="widget-title font-alt">Popular Posts</h5>
                        <ul class="widget-posts">
                            @foreach(\App\Entity\Post::categoryShow($category->slug) as $item)
                            <li class="clearfix">
                                <div class="widget-posts-image">
                                    <a href="{{ route('post', ['cate_slug' => $category->slug, 'post_slug' => $item->slug]) }}">
                                        <img src="{{ isset($item->image) ? $item->image : '' }}" alt="Post Thumbnail"/>
                                    </a>
                                </div>
                                <div class="widget-posts-body">
                                    <div class="widget-posts-title">
                                        <a href="{{ route('post', ['cate_slug' => $category->slug, 'post_slug' => $item->slug]) }}">{{ isset($item->title) ? $item->title : '' }}</a></div>
                                    <div class="widget-posts-meta">
                                        {{ isset($item->created_at) ?  date("F j", strtotime($item->updated_at))  : date("F j") }}
                                    </div>
                                </div>
                            </li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="col-sm-8 col-sm-offset-1">
                    <div class="post">
                        <div class="post-thumbnail">
                            <img src="{{ isset($post->image) ? $post->image : '' }}" alt="Blog Featured Image"/>
                        </div>
                        <div class="post-header font-alt">
                            <h1 class="post-title">{{ isset($post->title) ? $post->title : '' }}</h1>
                            <div class="post-meta">By&nbsp;
                                <a href="#">Admin</a>&nbsp;| {{ date("F j, Y", strtotime($post->updated_at)) }}
                            </div>
                        </div>
                        <div class="post-entry">
                            {!!  isset($post->content) ? $post->content : ''  !!}
                        </div>
                    </div>
                    <div class="comments">
                        <h4 class="comment-title font-alt">There are {{ \App\Entity\Comment::getCountComment($post->post_id) }} comments</h4>
                        @foreach(\App\Entity\Comment::getAllComment($post->post_id) as $item)
                        <div class="comment clearfix">
                            <div class="comment-avatar">
                                <img src="{{ isset($item->user_image) ? $item->user_image  : ''}}" alt="avatar"/>
                            </div>
                            <div class="comment-content clearfix">
                                <div class="comment-author font-alt">
                                    <a href="#">{{ isset($item->customer_name) ? $item->customer_name  : ''}}</a>
                                </div>
                                <div class="comment-body">
                                    <p>
                                        {{ isset($item->content) ? $item->content  : ''}}
                                    </p>
                                </div>
                                <div class="comment-meta font-alt">
                                    {{ isset($item->created_at) ?  date("F j, Y", strtotime($item->updated_at))  : ''}}
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>
                    @if(\Illuminate\Support\Facades\Auth::user())
                    <div class="comment-form">
                        <h4 class="comment-form-title font-alt">Add your comment</h4>
                        <form method="POST" action="{{ route('add') }}">
                            <input type="hidden" name="_token" value="{{ csrf_token() }}">
                            <div class="form-group">
                                <label class="sr-only" for="name">Name</label>
                                <input class="form-control" id="post_id" type="hidden" name="post_id" value="{{ $post->post_id }}"/>
                                <input class="form-control" id="name" type="text" name="name" placeholder="Name"/>
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="email">Name</label>
                                <input class="form-control" id="email" type="text" name="email" placeholder="E-mail"/>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" id="comment" name="comment" rows="4" placeholder="Comment"></textarea>
                            </div>
                            <button class="btn btn-round btn-d" type="submit">Post comment</button>
                        </form>
                    </div>
                    @else
                        <div class="comment-form">
                            <h4 class="comment-form-title font-alt">Bạn cần đăng nhập để bình luận bài viết này</h4>
                        </div>
                    @endif
                </div>
            </div>
        </div>
    </section>
@endsection