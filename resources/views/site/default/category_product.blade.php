@extends('site.layout.site')

@section('type_meta', 'website')
@section('title', isset($category['meta_title']) && !empty($category['meta_title']) ? $category['meta_title'] : $category->title)
@section('meta_description',  isset($category['meta_description']) && !empty($category['meta_description']) ? $category['meta_description'] : $category->description)
@section('keywords', isset($category['meta_keyword']) && !empty($category['meta_keyword']) ? $category['meta_keyword'] : '')
@section('meta_image', isset($category->image) && !empty($category->image) ?  asset($category->image) : $information['logo'] )
@section('meta_url', isset($category->slug) ? '/cua-hang/'.$category->slug : '/cua-hang/san-pham')

@section('content')
   <div class="main">
      <section class="module bg-dark-60 shop-page-header" data-background="{{ isset($category->image) ? $category->image : '' }}">
         <div class="container">
            <div class="row">
               <div class="col-sm-6 col-sm-offset-3">
                  <h2 class="module-title font-alt">{{ isset($category->title) ? $category->title : '' }}</h2>
                  <div class="module-subtitle font-serif">
                     {!!  isset($category->description) ? $category->description : '' !!}
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="module-small">
         <div class="container">
            <form class="row">
               <div class="col-sm-4 mb-sm-20">
                  <select class="form-control" name="sort">
                     <option>Default Sorting</option>
                     <option value="priceIncrease" {{ request()->input('sort') == 'priceIncrease' ? 'selected' : '' }}>Giá thấp đến cao</option>
                     <option value="priceReduction" {{ request()->input('sort') == 'priceReduction' ? 'selected' : '' }}>Giá cao đến thấp</option>
                     <option value="dateReduction" {{ request()->input('sort') == 'dateReduction' ? 'selected' : '' }}>Mới nhất</option>
                     <option value="dateIncrease" {{ request()->input('sort') == 'dateIncrease' ? 'selected' : '' }}>Cũ hơn</option>
                  </select>
               </div>
               <div class="col-sm-4 mb-sm-20">
                  <input type="text" name="word" class="form-control" placeholder="Tên sản phẩm" value="{{ request()->input('word') }}">
               </div>

               <div class="col-sm-4">
                  <button class="btn btn-block btn-round btn-g" type="submit">Apply</button>
               </div>
            </form>
         </div>
      </section>
      <hr class="divider-w">
      <section class="module-small">
         <div class="container">
            <div class="row multi-columns-row">
               @foreach($products as $item)
               <div class="col-sm-6 col-md-3 col-lg-3">
                  <div class="shop-item">
                     <div class="shop-item-image">
                        <img src="{{ isset($item->image) ? $item->image : '' }}" alt="{{ isset($item->title) ? $item->title : '' }}"/>
                        <div class="shop-item-detail">
                           <form onsubmit="return addToOrder(this);" enctype="multipart/form-data"
                                 id="add-to-cart-form" method="post" accept-charset="utf-8">
                              {{ csrf_field() }}
                              <input type="hidden" class="quantity" name="quantity[]" value="1"/>
                              <input type="hidden" class="product_id" name="product_id[]"
                                     value="{{ $item->product_id }}"/>
                              <button class="btn btn-round btn-b dat_hang add-cart-0"
                                      type="submit"><span class="icon-basket">Add To Cart</span>
                              </button>
                           </form>
                        </div>
                     </div>
                     <h4 class="shop-item-title font-alt">
                        <a href="{{ route('product', $item->slug) }}">{{ isset($item->title) ? $item->title : '' }}</a>
                     </h4>
                     {{ isset($item->price) ? number_format($item->price) : '0' }} VNĐ
                  </div>
               </div>
               @endforeach
            </div>
            <div class="row">
               <div class="col-sm-12">
                  <div class="pagination font-alt">
                     @if ($products->lastPage() > 1)
                        <a href="{{ $products->url(1) }}">
                           <i class="fa fa-angle-left"></i>
                        </a>

                           @for ($i = 1; $i <= $products->lastPage(); $i++)
                           <a class="{{ ($products->currentPage() == $i) ? ' active' : '' }}" href="{{ $products->url($i) }}">{{ $i }}</a>
                           @endfor
                        <a href="{{ $products->url($products->currentPage()+1) }}">
                           <i class="fa fa-angle-right"></i>
                        </a>
                     @endif
                  </div>
               </div>
            </div>
         </div>
      </section>
   </div>

@endsection