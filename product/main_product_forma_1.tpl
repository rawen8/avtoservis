<div class="panel panel-default">
    <div class="panel-body">
        <div class="media">
            <span class="sale-icon-content">
                @specIcon@
                @newtipIcon@
            </span>

            <a class="media-left highslide" href="@productImgBigFoto@" title="@productName@"><img src="@productImg@" alt="@productName@"></a>
            <div class="media-body">
                <h3 class="media-heading"><a href="/shop/UID_@productUid@.html" title="@productName@">@productName@</a></h3>
                <p>@productDes@</p>
                <div class="row orderinfo">
                    <div class="col-xs-4" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                        <div class="btn btn-warning">
                            <h3>@productPrice@ @productValutaName@ <sup class="text-muted small">@productPriceRub@</sup></h3>
                        </div>
                    </div>
                    <div class="pull-left">
                        <div class="more-actions">
                            <button class="btn btn-default addToWishList btn-sm" role="button" data-uid="@productUid@"><i class="fa fa-heart"></i>
                                Отложить
                            </button>
                            <button class="btn btn-default addToCompareList btn-sm" role="button" data-uid="@productUid@"><i class="fa fa-paperclip"></i>
                                Сравнить
                            </button>
                            @ComStartCart@
                                <button class="btn btn-default addToCartList btn-sm" role="button" data-uid="@productUid@"><i class="fa fa-shopping-cart"></i>
                                @productSale@
                                </button>
                            @ComEndCart@
                            @ComStartNotice@
                                <button class="btn btn-default notify"><a href="/users/notice.html?productId=@productUid@" title="@productNotice@" class="button-exclusive" id="button-cart">
                                Уведомить</a>
                                </button>
                            @ComEndNotice@
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>