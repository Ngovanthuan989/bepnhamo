<nav class="navbar navbar-custom navbar-fixed-top " role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#custom-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            @if($information['logo'])
            <a class="navbar-brand" href="/">{{ $information['logo'] }}</a>
            @endif
        </div>
        <div class="collapse navbar-collapse" id="custom-collapse">
            <ul class="nav navbar-nav navbar-right">
                @foreach (\App\Entity\Menu::showWithLocation('menu-chinh') as $Mainmenu)
                    @foreach (\App\Entity\MenuElement::showMenuPageArray($Mainmenu->slug) as $id=>$menuelement)
                        <li class="dropdown">
                            <a {{ !empty($menuelement['children']) ? 'class=dropdown-toggle data-toggle=dropdown' : '' }} href="{{ $menuelement['url'] }}" >
                                {{ $menuelement['title_show'] }}
                            </a>
                            @if (!empty($menuelement['children']))
                                <ul class="dropdown-menu">
                                    @foreach ($menuelement['children'] as $elementparent)
                                        <li><a href="{{ $elementparent['url'] }}">{{ $elementparent['title_show'] }}</a></li>
                                    @endforeach
                                </ul>
                            @endif
                        </li>
                    @endforeach
                @endforeach
                    <li class="dropdown" id="shopping-cart">
                    <a href="{{ route('order') }}">
                        Giỏ hàng <i class="fa fa-shopping-cart"></i>
                        <?php $countOrder = \App\Entity\Order::countOrder();?>
                        @if($countOrder <= 0)
                            <span id="countOrder">0</span>
                        @else
                            <span id="countOrder">
                               {{ $countOrder }}
                            </span>
                        @endif
                    </a>
                    </li>
            </ul>

        </div>
    </div>
</nav>