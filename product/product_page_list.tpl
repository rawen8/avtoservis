<nav class="visible-xs">
    <ul class="pager">
        <li class="previous"><a href="/shop/CID_@catalogId@.html"><span aria-hidden="true">&larr;</span> @catalogCategory@</a></li>
    </ul>
</nav>
<ol class="breadcrumb hidden-xs">
    @breadCrumbs@
</ol>
<div class="inner-page-header page-header hidden-xs">

    <h2>@catalogCategory@</h2>
</div>


<div class="hidden-xs">@catalogContent@</div>

<div class="well hidden-xs" id="filter-well">
    <div class="row">
        <div class="col-md-6">
            Вывод товаров:

            <div class="btn-group" data-toggle="buttons">
                <label class="btn btn-sm btn-default @gridSetAactive@" data-toggle="tooltip" data-placement="top" title="Товары списком">
                    <span class="glyphicon glyphicon-th-list"></span>
                    <input type="radio" name="gridChange" value="1"  autocomplete="off">
                </label>
                <label class="btn btn-sm btn-default @gridSetBactive@" data-toggle="tooltip" data-placement="top" title="Товары сеткой">
                    <span class="glyphicon glyphicon-th"></span>
                    <input type="radio" name="gridChange" value="2" autocomplete="off">
                </label>
            </div>

        </div>
        <div class="col-md-6 text-right">


            Сортировка:
            <div class="btn-group" data-toggle="buttons">
                <label class="btn btn-sm btn-default @sSetCactive@" data-toggle="tooltip" data-placement="top" title="По умолчанию">
                    <span class="glyphicon glyphicon-signal"></span>
                    <input type="radio" name="s" value="3" autocomplete="off">
                </label>
                <label class="btn btn-sm btn-default @sSetAactive@" data-toggle="tooltip" data-placement="top" title="Наименование">
                    <span class="glyphicon glyphicon-sort-by-alphabet"></span>
                    <input type="radio" name="s" value="1" autocomplete="off">
                </label>
                <label class="btn btn-sm btn-default @sSetBactive@" data-toggle="tooltip" data-placement="top" title="Цена">
                    <span class="glyphicon glyphicon-sort-by-order"></span>
                    <input type="radio" name="s" value="2" autocomplete="off">
                </label>

            </div>

            <div class="btn-group" data-toggle="buttons">
                <label class="btn btn-sm btn-default @fSetAactive@" data-toggle="tooltip" data-placement="top" title="По возрастанию">
                    <span class="glyphicon glyphicon-sort-by-attributes"></span>
                    <input type="radio" name="f" value="1"  autocomplete="off">
                </label>
                <label class="btn btn-sm btn-default @fSetBactive@" data-toggle="tooltip" data-placement="top" title="По убыванию">
                    <span class="glyphicon glyphicon-sort-by-attributes-alt"></span>
                    <input type="radio" name="f" value="2" autocomplete="off">
                </label>
            </div>


        </div>
    </div>
    <a name="sort"></a>
    <form method="post" action="/shop/CID_@productId@@nameLat@.html" name="sort" id="sorttable" class="hide">
        <table>@vendorDisp@ <td>&nbsp;</td><td>@vendorSelectDisp@</td></table>
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
                success: function(data)
                {
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
                error: function() {
                    $('#ajaxInProgress').removeClass('progress-scroll');
                }
            });
        }
    }

    // Блокировка вывода штатной пагинации [1-10]
    if (AJAX_SCROLL_HIDE_PAGINATOR) {
        $(".pagination").hide();
    }

    $(document).ready(function() {

        var inview = new Waypoint.Inview({
            element: $('.product-scroll-init'),
            enter: function(direction) {
                scroll_loader();
            }
        });


        $("#slider-range").slider({
            range: true,
            step: 5,
            min: new Number('@price_min@'),
            max: new Number('@price_max@'),
            values: [new Number('@price_min@'), new Number('@price_max@')],
            slide: function(event, ui) {
                $("input[name=min]").val(ui.values[ 0 ]);
                $("input[name=max]").val(ui.values[ 1 ]);
            }
        });
    });
</script>
