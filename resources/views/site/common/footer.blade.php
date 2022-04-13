<div class="module-small bg-dark">
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="widget">
                    <h5 class="widget-title font-alt">About us</h5>
                    {!! isset($information['text-footer']) ? $information['text-footer'] : '' !!}
                    @if(isset($information['so-dien-thoai']))
                    <p>Phone: {{ $information['so-dien-thoai'] }}</p>
                    @endif
                    @if(isset($information['email']))
                    <p>Email:<a href="#">{{ $information['email'] }}</a></p>
                    @endif
                </div>
            </div>
            <div class="col-sm-3">
                <div class="widget">
                    <h5 class="widget-title font-alt">Recent Comments</h5>
                    <ul class="icon-list">
                        @foreach(\App\Entity\Comment::getCommentHome() as $item)
                        <li>{{ $item->customer_name }} <a href="#">{{ $item->content }}</a></li>
                        @endforeach
                    </ul>
                </div>
            </div>
            <div class="col-sm-3">
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
            </div>
            <div class="col-sm-3">
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
                                        <a href="{{ route('post', ['cate_slug' => $category->slug, 'post_slug' => $item->slug]) }}">
                                            {{ isset($item->title) ? $item->title : '' }}</a></div>
                                    <div class="widget-posts-meta">
                                        {{ isset($item->created_at) ?  date("F j", strtotime($item->updated_at))  : date("F j") }}
                                    </div>
                                </div>
                            </li>
                        @endforeach
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<hr class="divider-d">
<footer class="footer bg-dark">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                @if(isset($information['copy-right']))
                <p class="copyright font-alt">
                    {{ $information['copy-right'] }}
                </p>
                @endif
            </div>
            <div class="col-sm-6">
                <div class="footer-social-links">
                    @if(\Auth::user())
                        Xin chào: {{ \Illuminate\Support\Facades\Auth::user()->name }}
                        <a href="/dang-xuat">
                            Đăng xuất
                        </a>
                    @else
                        <a href="/trang/dang-nhap">
                            Đăng nhập
                        </a>
                    @endif
                </div>
            </div>
        </div>
    </div>
</footer>