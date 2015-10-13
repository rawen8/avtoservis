
<div class="product col-md-4 col-sm-6">
  <div class="thumbnail">
        <span class="sale-icon-content">
            @newtipIcon@
            @specIcon@
        </span>
    <a href="/shop/UID_@productUid@.html" title="@productName@">
      <img src="@productImg@" alt="@productName@">

      <div class="caption description">
        <h4>@productName@</h4>

      </div>

    </a>
    <div id="raiting_star" >
      <div id="raiting">
        <div id="raiting_blank"></div> <!--блок пустых звезд-->
        <div id="raiting_votes" style="width:@avgRateWidth@px"></div> <!--блок с итогами голосов -->
      </div>
    </div>
    <div class="hr"></div>
    <div class="btn-sale">
      <h3>@productPrice@ @productValutaName@ <sup class="text-muted small">@productPriceRub@</sup></h3>
      <div class="more-actions">
        @ComStartCart@<div class="btn btn-primary addToCartList btn-sm" data-uid="@productUid@" role="button"><i class="fa fa-shopping-cart"></i>
          @productSale@</div>@ComEndCart@
        @ComStartNotice@<div><a href="/users/notice.html?productId=@productUid@" title="@productNotice@" class="button-exclusive" id="button-cart">Уведомить</a></div>@ComEndNotice@
        <div class="btn btn-default addToWishList btn-sm" role="button" data-uid="@productUid@"><i class="fa fa-heart"></i>Отложить
        </div>
        <button class="btn btn-default addToCompareList btn-sm" data-uid="@productUid@" role="button"><i class="fa fa-paperclip"></i>Сравнить</button>

      </div>
    </div>
  </div>
</div>

