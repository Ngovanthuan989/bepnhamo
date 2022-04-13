@extends('site.layout.site')

@section('type_meta', 'article')
@section('title', isset($product->meta_title) ? $product->meta_title : $product->title )
@section('meta_description',  !empty($product->meta_description) ? $product->meta_description : $product->description)
@section('keywords', $product->meta_keyword)
@section('meta_image', !empty($product->image) ? asset($product->image) : $information['logo'] )
@section('meta_url', route('product', [ 'post_slug' => $product->slug]) )

@section('content')
        <section class="module">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 mb-sm-40"><a class="gallery" href="{{ isset($product['image']) ? $product['image'] : ''}}">
                            <img src="{{ isset($product['image']) ? $product['image'] : ''}}" alt="{{ isset($product['title']) ? $product['title'] : ''}}"/></a>
                        <ul class="product-gallery">
                            @if(!empty($product->image_list))
                                @foreach(explode(',', $product->image_list) as $idImage => $imageProduct)
                                    <li>
                                        <a class="gallery" href="{{ isset($imageProduct) ? $imageProduct : ''}}">
                                            <img src="{{ isset($imageProduct) ? $imageProduct : ''}}" alt="{{ isset($product['title']) ? $product['title'] : ''}}"/>
                                        </a>
                                    </li>
                                @endforeach
                            @endif
                        </ul>
                    </div>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-12">
                                <h1 class="product-title font-alt">{{ isset($product['title']) ? $product['title'] : ''}}</h1>
                            </div>
                        </div>
                        <div class="row mb-20">
                            <div class="col-sm-12"><span><i class="fa fa-star star"></i>
                                </span><span><i class="fa fa-star star"></i></span><span>
                                    <i class="fa fa-star star"></i></span><span>
                                    <i class="fa fa-star star"></i></span><span><i class="fa fa-star star-off"></i></span><a class="open-tab section-scroll" href="#reviews">-2customer reviews</a>
                            </div>
                        </div>
                        <div class="row mb-20">
                            <div class="col-sm-12">
                                <div class="price font-alt"><span class="amount">{{ isset($product['price']) ? number_format($product['price']) : ''}}</span></div>
                            </div>
                        </div>
                        <div class="row mb-20">
                            <div class="col-sm-12">
                                <div class="description">
                                    {!! isset($product['description']) ? $product['description'] : '' !!}
                                </div>
                            </div>
                        </div>
                        <div class="row mb-20">
                            <form onsubmit="return addToOrder(this);" enctype="multipart/form-data"
                                  id="add-to-cart-form" method="post" accept-charset="utf-8">
                                {{ csrf_field() }}
                                <input type="hidden" class="quantity" name="quantity[]" value="1"/>
                                <input type="hidden" class="product_id" name="product_id[]"
                                       value="{{ $product->product_id }}"/>
                                <div class="col-sm-8"><button class="btn btn-lg btn-block btn-round btn-b">Add To Cart</button></div>
                            </form>


                        </div>
                        <div class="row mb-20">
                            <div class="col-sm-12">
                                <div class="product_meta">Categories:<a href="#"> Man, </a><a href="#">Clothing, </a><a href="#">T-shirts</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-70">
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs font-alt" role="tablist">
                            <li class="active"><a href="#description" data-toggle="tab"><span class="icon-tools-2"></span>Description</a></li>
                            <li><a href="#data-sheet" data-toggle="tab"><span class="icon-tools-2"></span>Data sheet</a></li>
                            <li><a href="#reviews" data-toggle="tab"><span class="icon-tools-2"></span>Reviews ({{ \App\Entity\Comment::getCountComment($product->post_id) }})</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="description">
                                {!! isset($product['content']) ? $product['content'] : '' !!}
                            </div>
                            <div class="tab-pane" id="data-sheet">
                                {!! isset($product['properties']) ? $product['properties'] : '' !!}
                            </div>
                            <div class="tab-pane" id="reviews">
                                <div class="comments">
                                    @foreach(\App\Entity\Comment::getAllComment($product->post_id) as $item)
                                        <div class="comment clearfix">
                                            <div class="comment-avatar">
                                                <img src="{{ isset($item->user_image) ? $item->user_image  : asset('assets/member.jpg')}}" alt="avatar"/>
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
                                                <input class="form-control" id="post_id" type="hidden" name="post_id" value="{{ $product->post_id }}"/>
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
                                @endif
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <hr class="divider-w">
        <section class="module-small">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <h2 class="module-title font-alt">Related Products</h2>
                    </div>
                </div>
                <div class="row multi-columns-row">
                    @foreach(\App\Entity\Product::relativeProduct($product['slug'], $product['id'], $countProduct= 4) as $item )
                    <div class="col-sm-6 col-md-3 col-lg-3">
                        <div class="shop-item">
                            <div class="shop-item-image">
                                <img src="{{ isset($item->image) ? $item->image : '' }}" alt="{{ isset($item->title) ? $item->title : '' }}"/>
                                <div class="shop-item-detail">
                                    <a class="btn btn-round btn-b"><span class="icon-basket">Add To Cart</span>
                                    </a>
                                </div>
                            </div>
                            <h4 class="shop-item-title font-alt">
                                <a href="{{ isset($item->slug) ? $item->slug : '' }}">{{ isset($item->title) ? $item->title : '' }}</a>
                            </h4>
                            {{ isset($item->price) ? number_format($item->price) : '' }}
                        </div>
                    </div>
                    @endforeach

            </div>
        </section>
        <hr class="divider-w">
        <section class="module">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3">
                        <h2 class="module-title font-alt">Exclusive products</h2>
                        <div class="module-subtitle font-serif">The languages only differ in their grammar, their pronunciation and their most common words.</div>
                    </div>
                </div>
                <div class="row">
                    <div class="owl-carousel text-center" data-items="5" data-pagination="false" data-navigation="false">
                        @foreach(\App\Entity\Product::newProduct(10) as $item )

                        <div class="owl-item">
                            <div class="col-sm-12">
                                <div class="ex-product">
                                    <a href="{{ isset($item->slug) ? $item->slug : '' }}">
                                        <img src="{{ isset($item->image) ? $item->image : '' }}" alt="Leather belt"/></a>
                                    <h4 class="shop-item-title font-alt">
                                        <a href="{{ isset($item->slug) ? $item->slug : '' }}">{{ isset($item->title) ? $item->title : '' }}</a>
                                    </h4>
                                    {{ isset($item->price) ? number_format($item->price) : '' }}
                                </div>
                            </div>
                        </div>
                        @endforeach

                    </div>
                </div>
            </div>
        </section>
@endsection