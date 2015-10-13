<div class="product-full">
    <div itemscope itemtype="http://schema.org/Product">

        <div class="row1">
            <div class="col-md-9">
                <h2 itemprop="name">@productName@</h2>
            </div>
            <div class="col-md-3">
                <div class="share42init pull-right"></div>
            </div>
        </div>

        <div id="iteminfo">
            <div class="row2">
                <div class="col-md-5 col-sm-12 align-center">
                    <div id="fotoload">
                        @productFotoList@
                    </div>

                </div>
                <div class="col-md-7 col-sm-12">
                    <div class="extra-button">
                        <div class="row"> <!--row с рейтингом и отложить / сравнить-->
                            <div class="review hidden-xs">
                                <div class="col-md-6">
                                    @rateUid@
                                </div>
                            </div>

                            <div class="users-opt hidden-xs">
                                <div class="col-md-6">
                                    <div class="addToWishList pull-left" role="button" data-uid="@productUid@"><i
                                                class="fa fa-heart" data-toggle="tooltip" data-placement="top"></i>Отложить
                                    </div>
                                    <div class="addToCompareList pull-right" data-uid="@productUid@">
                                        <i class="fa fa-paperclip" data-toggle="tooltip" data-placement="top"></i>Сравнить
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="orderinfo"><!--row с опциями выбора и кол. наличия-->
                        <div class="row">
                            <!-- ОПЦИИ / НАЛИЧИЕ-->
                            <div class="col-md-8">
                                <div class="tovar_optionsDisp">
                                    @optionsDisp@
                                </div>
                            </div>


                            <div class="col-xs-4">
                                <div class="small instock pull-right">@productSklad@</div>
                            </div>
                        </div>
                    </div>

                    <!-- ЦЕНА / КУПИТЬ-->

                    <div class="prod-row">
                        <div class="row">
                            <div class="col-md-6" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                                <div>
                                    <span class="specprice" itemprop="price">@productPrice@</span>
                                    <span class="specprice" itemprop="priceCurrency">@productValutaName@</span>
                                    <span class="defprice">@productPriceRub@</span>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="cart-actions">
                                     @ComStartCart@
                                    <div class="inputNum clearfix">
                                        <div class="dec"  onclick="javascript:addOrDeleteProduct(0, @productUid@)" ></div>
                                        <input class="addToCartListNum" style="width:70px" data-uid="@productUid@" id="n@productUid@" type="num" maxLength="3" size="5" value="1" name="n@productUid@">
                                        <div class="inc" onclick="javascript:addOrDeleteProduct(1, @productUid@)" ></div>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                    </div>
                                    <div class="input-group">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default btn-lg addToCartList" role="button"
                                                    data-num="1" data-uid="@productUid@">
                                                <i class="fa fa-shopping-cart"></i>@productSale@
                                            </button>
                                        </span>
                                    </div>
                                    @ComEndCart@

                                    @ComStartNotice@
                                    <a href="/users/notice.html?productId=@productUid@"
                                       title="@productNotice@"
                                       class="button-exclusive" id="button-cart">
                                        Уведомить
                                    </a>
                                    @ComEndNotice@
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <p>@promotionInfo@</p>
            </div>
        </div>
    </div>

    <div id="productinfo">
        <div class="row">
            <div role="tabpanel" class="col-xs-12 row3">
                <div class="tabs">
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="active hidden-xs" role="presentation"><a class="description" href="#home"
                                                                            aria-controls="home" role="tab"
                                                                            data-toggle="tab">Описание</a>
                        </li>

                        <li role="presentation" class="hidden-xs" id="settingsTab"><a href="#settings"
                                                                                           aria-controls="settings"
                                                                                           role="tab" data-toggle="tab">Характеристики</a></li>
                        <li class="hidden-xs" role="presentation"><a href="#messages" id="commentLoad"
                                                                     data-uid="@productUid@"
                                                                     aria-controls="messages" role="tab"
                                                                     data-toggle="tab">Отзывы</a>
                        </li>
                        <li id="filesTab" class="hide hidden-xs" role="presentation"><a href="#files"
                                                                                        aria-controls="files"
                                                                                        role="tab"
                                                                                        data-toggle="tab"><span
                                        class="glyphicon glyphicon-cloud-download"></span>Файлы</a></li>
                        <li id="pagesTab" class="hide hidden-xs" role="presentation"><a href="#pages" aria-controls="pages"
                                                                                   role="tab"
                                                                                   data-toggle="tab">Статьи</a>
                        </li>
                        <!--<li class="visible-lg" role="presentation"><a href="/print/UID_@productId@.html"  target="_blank"><span class="glyphicon glyphicon-print">
                                </span> Печатная форма</a>
                        </li>-->
                    </ul>
                    <br>
                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="home" itemprop="description">@productDes@</div>
                        <div role="tabpanel" class="tab-pane" id="settings">
                            <br>
                            <div class="row">
                                <div class="col-xs-6">@vendorDisp@</div>
                                <div class="col-xs-6">@brandUidDescription@</div>
                            </div>

                        </div>
                        <div role="tabpanel" class="tab-pane" id="settings">
                            <br>

                            <div class="row">
                                <div class="col-xs-6">@vendorDisp@</div>
                                <div class="col-xs-6">@brandUidDescription@</div>
                            </div>

                        </div>
                        <div role="tabpanel" class="tab-pane hidden-xs" id="messages">
                            <div id="commentList"></div>


                            <button role="button" class="btn btn-info pull-right" onclick="$('#addComment').slideToggle();
                            $(this).hide();"><span class="glyphicon glyphicon-plus-sign"></span> Новый комментарий
                            </button>

                            <div id='addComment' class="well well-sm" style='display:none;margin-top:30px;'>

                                <h3>Оставьте свой отзыв</h3>

                                <textarea id="message" class="form-control"></textarea>
                                <br>

                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-success btn-sm">
                                        <input type="radio" name="rate" value="1"> +1
                                    </label>
                                    <label class="btn btn-success btn-sm">
                                        <input type="radio" name="rate" value="2"> +2
                                    </label>
                                    <label class="btn btn-success btn-sm">
                                        <input type="radio" name="rate" value="3"> +3
                                    </label>
                                    <label class="btn btn-success btn-sm">
                                        <input type="radio" name="rate" value="4"> +4
                                    </label>
                                    <label class="btn btn-success btn-sm active">
                                        <input type="radio" name="rate" value="5" checked> +5
                                    </label>
                                    <button role="button" class="btn btn-info btn-sm pull-right"
                                            onclick="commentList('@productUid@', 'add', 1);">
                                        Проголосовать</span></button>
                                </div>

                            </div>
                        </div>
                        <div role="tabpanel" class="tab-pane hidden-xs" id="files">@productFiles@</div>
                        <div role="tabpanel" class="tab-pane hidden-xs" id="pages">@pagetemaDisp@</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script type="text/javascript"
        src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@/js/share/share42.js"></script>
</div>

