<ol class="breadcrumb hidden-xs">
    <li><a href="/" >Главная</a></li>
    <li>Подбор товаров</li>
    <li class="active">@sortName@</li>
</ol>

<div class="page-header">
    <h2>@sortName@</h2>
</div>



<div> @sortDes@ </div>

<div class="well hidden-xs" id="filter-selection-well">
    <div class="row">
        <div class="col-md-6">
            Вывод товаров:

            <div class="btn-group" data-toggle="buttons">
                <label class="btn btn-sm btn-default glyphicon @gridSetAactive@" data-toggle="tooltip" data-placement="top" title="Товары списком">
                    <span class="glyphicon glyphicon-th-list"><input type="radio" name="gridChange" value="1"  autocomplete="off" data-url="?@productVendor@@php if(isset($_GET['f'])) echo '&f='.$_GET['f']; if(isset($_GET['s'])) echo  '&s='.$_GET['s']; php@&gridChange=1">
                </label>
                <label class="btn btn-sm btn-default glyphicon @gridSetBactive@" data-toggle="tooltip" data-placement="top" title="Товары сеткой">
                    <span class="glyphicon glyphicon-th"><input type="radio" name="gridChange" value="2" autocomplete="off" data-url="?@productVendor@@php if(isset($_GET['f'])) echo '&f='.$_GET['f']; if(isset($_GET['s'])) echo  '&s='.$_GET['s']; php@&gridChange=2">
                </label>
            </div>

        </div>
        <div class="col-md-6 text-right">


            Сортировка:
            <div class="btn-group" data-toggle="buttons">
                <label class="btn btn-sm btn-default glyphicon glyphicon glyphicon @sSetCactive@" data-toggle="tooltip" data-placement="top" title="Рейтинг">
                    <span class="glyphicon glyphicon-equalizer"><input type="radio" name="s" value="3" autocomplete="off" data-url="?@productVendor@&s=3@php if(isset($_GET['f'])) echo  '&f='.$_GET['f']; if(isset($_GET['gridChange'])) echo '&gridChange='.$_GET['gridChange']; php@">
                </label>
                <label class="btn btn-sm btn-default glyphicon @sSetBactive@" data-toggle="tooltip" data-placement="top" title="Наименование">
                     <span class="glyphicon glyphicon-sort-by-alphabet"><input type="radio" name="s" value="1"  autocomplete="off" data-url="?@productVendor@&s=1@php if(isset($_GET['f'])) echo  '&f='.$_GET['f']; if(isset($_GET['gridChange'])) echo '&gridChange='.$_GET['gridChange']; php@">
                </label>
                <label class="btn btn-sm btn-default glyphicon glyphicon @sSetAactive@" data-toggle="tooltip" data-placement="top" title="Цена">
                    <span class="glyphicon glyphicon-sort-by-order"><input type="radio" name="s" value="2" autocomplete="off" data-url="?@productVendor@&s=2@php if(isset($_GET['f'])) echo  '&f='.$_GET['f']; if(isset($_GET['gridChange'])) echo '&gridChange='.$_GET['gridChange']; php@">
                </label>

            </div>

            <div class="btn-group" data-toggle="buttons">
                <label class="btn btn-sm btn-default glyphicon @fSetBactive@" data-toggle="tooltip" data-placement="top" title="По возрастанию">
                    <span class="glyphicon glyphicon-sort-by-attributes"><input type="radio" name="f" value="1"  autocomplete="off" data-url="?@productVendor@&f=1@php if(isset($_GET['s'])) echo  '&s='.$_GET['s']; if(isset($_GET['gridChange'])) echo '&gridChange='.$_GET['gridChange']; php@">
                </label>
                <label class="btn btn-sm btn-default glyphicon @fSetAactive@" data-toggle="tooltip" data-placement="top" title="По убыванию">
                    <span class="glyphicon glyphicon-sort-by-attributes-alt"><input type="radio" name="f" value="2" autocomplete="off" data-url="?@productVendor@&f=2@php if(isset($_GET['s'])) echo  '&s='.$_GET['s']; if(isset($_GET['gridChange'])) echo '&gridChange='.$_GET['gridChange']; php@">
                </label>
            </div>


        </div>
    </div> 
    <a name="sort"></a>  
</div>


@productPageDis@

@productPageNav@
