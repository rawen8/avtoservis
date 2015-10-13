<nav class="visible-xs">
    <ul class="pager">
        <li class="previous"><a href="/shop/CID_@catalogId@.html"><span aria-hidden="true">&larr;</span>
                @catalogCategory@</a></li>
    </ul>
</nav>
<!--product/product_page_list.tpl-->
<ol class="breadcrumb hidden-xs">
    @breadCrumbs@
</ol>
<!--<div class="inner-page-header page-header hidden-xs">
    <h2>@catalogCategory@</h2>
</div> -->

<div class="hidden-xs">@catalogContent@</div>

<div class="hidden-xs" id="filter-well">
    <div class="sort-bar row">

        <div class="col-md-3 col-sm-3">
            <div class="left-opt">
                <span>Вывод товаров:</span>
                <div class="btn-group display" data-toggle="buttons">
                    <label class="btn @gridSetBactive@" data-toggle="tooltip" data-placement="top"
                           title="Товары сеткой">
                        <input type="radio" name="gridChange" value="2" autocomplete="off"><i class="fa fa-th"></i>
                    </label>
                    <label class="btn @gridSetAactive@" data-toggle="tooltip" data-placement="top"
                           title="Товары списком">
                        <input type="radio" name="gridChange" value="1" autocomplete="off"><i class="fa fa-th-list"></i>
                    </label>
                </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-4 text-center">
            <div class="cmpr">
                <a href="/compare/">Сравнить товары (<span id="numcompare">@numcompare@</span> шт.)</a>
            </div>
        </div>

        <div class="col-md-5 col-sm-5 text-right">
            <div class="right-opt">
                <div class="sort">
                    <span>Сортировать по:</span>
                    <select class="text-left">
                        <option value="1" selected="selected">умолчанию</option>
                        <option value="2">наименованию (А-Я)</option>
                        <option value="5">наименованию (Я-А)</option>
                        <option value="3">цене (возростание) <i class="fa fa-long-arrow-up"></i></option>
                        <option value="4">цене (убывание) <i class="fa fa-long-arrow-down"></i></option>
                    </select>
                </div>
            </div>
        </div>

    </div>
    <div class="brand-opt">

    </div>





    <a name="sort"></a>

    <form method="post" action="/shop/CID_@productId@@nameLat@.html" name="sort" id="sorttable" class="hide">
        <table>@vendorDisp@
            <td>&nbsp;</td>
            <td>@vendorSelectDisp@</td>
        </table>
    </form>

</div>

<div class="template-product-list">@productPageDis@</div>

<div id="ajaxInProgress"></div>
<div class="product-scroll-init"></div>


@productPageNav@


<script type="text/javascript">

    var max_page = new Number('@max_page@');
    var current = '@productPageThis@';
    if (current !== 'ALL')
        var count = new Number('@productPageThis@');
    else
        var count = max_page;

    // Функция подгрузки товаров
    function scroll_loader() {

        if (count < max_page) {

            // Анимация загрузки
            $('#ajaxInProgress').addClass('progress-scroll');

            var next_page = new Number(count) + 1;
            url = "/shop/CID_@pcatalogId@@page_prefix@" + next_page + "@seomod@.html?@page_postfix@" + window.location.hash.split('#').join('').split(']').join('][]');

            $.ajax({
                type: "POST",
                url: url,
                data: {
                    ajax: true
                },
                success: function (data) {
                    // Анимация загрузки
                    $('#ajaxInProgress').removeClass('progress-scroll');

                    // Добавляем товары в общему списку
                    $(".template-product-list").append(data);

                    // Выравнивание ячеек товара
                    setEqualHeight($(".thumbnail .description"));

                    count = next_page;
                    $('.pagination li').removeClass('active');
                    $('#paginator-' + count).addClass('active');

                    Waypoint.refreshAll();
                },
                error: function () {
                    $('#ajaxInProgress').removeClass('progress-scroll');
                }
            });
        }
    }

    // Блокировка вывода штатной пагинации [1-10]
    if (AJAX_SCROLL_HIDE_PAGINATOR) {
        $(".pagination").hide();
    }

    $(document).ready(function () {

        var inview = new Waypoint.Inview({
            element: $('.product-scroll-init'),
            enter: function (direction) {
                scroll_loader();
            }
        });


        $("#slider-range").slider({
            range: true,
            step: 5,
            min: new Number('@price_min@'),
            max: new Number('@price_max@'),
            values: [new Number('@price_min@'), new Number('@price_max@')],
            slide: function (event, ui) {
                $("input[name=min]").val(ui.values[0]);
                $("input[name=max]").val(ui.values[1]);
            }
        });
    });
</script>
