<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="windows-1251">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>@pageTitl@</title>
  <meta name="description" content="@pageDesc@">
  <meta name="keywords" content="@pageKeyw@">
  <meta name="copyright" content="@pageReg@">
  <meta name="engine-copyright" content="PHPSHOP.RU, @pageProduct@">
  <meta name="domen-copyright" content="@pageDomen@">
  <meta content="General" name="rating">
  <meta name="ROBOTS" content="ALL">
  <link href="@pageCss@" type="text/css" rel="stylesheet">
  <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
  <link rel="icon" href="/favicon.ico" type="image/x-icon">

  <!-- Bootstrap -->
  <link id="bootstrap_theme" href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@css/@bootstrap_theme@.css" rel="stylesheet">
  <link href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@css/bar.css" rel="stylesheet">

  <!-- Font-awesome -->
  <link href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@css/font-awesome.min.css" rel="stylesheet">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0//css/font-awesome.min.css" rel="stylesheet">
  <link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow|PT+Sans&subset=latin,cyrillic" rel="stylesheet">

  <!-- Menu -->
  <link href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@css/menu.css" rel="stylesheet">
  <link href="@pageCss@" type="text/css" rel="stylesheet">
  <!-- Highslide -->
  <link href="java/highslide/highslide.css" rel="stylesheet">

  <!-- Formstyler -->
  <link href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@css/jquery.formstyler.css" rel="stylesheet" />

  <!-- UI -->
  <link href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@css/jquery-ui.min.css" rel="stylesheet" />

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->


</head>

<body role="document" id="body">
<div class="page-wrap">
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/jquery-1.11.0.min.js"></script>

  <script src="java/jqfunc.js"></script>


  <!-- Header -->
  <header class="container visible-lg visible-md">
    <!--ПАНЕЛЬ ТЕЛЕФОН / ГРАФИК_начало-->
    <div class="row vertical-align">
      <div class="col-md-12">
        <div class="row topbar">
          <div class="col-md-12">
            <ul class="nav nav-pills pull-left">
              <span class="telnum"><i class="fa fa-phone"></i> @telNum@</span> <span class="worktime">пнд-птн: 10:00-19:00</span>
            </ul>
            <ul class="nav nav-pills pull-right">
              @usersDisp@
              <li role="presentation">@wishlist@</li>
			  <li role="presentation"><a href="/compare/"> Сравнить (<span id="numcompare">@numcompare@</span>)</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!--ПАНЕЛЬ ЛОГО_начало-->
    <div class="row">
      <div class="col-md-12 background gradient logopanel">
        <div class="background-inner">
          <div class="col-md-4">
            <h4 class="pull-left">Системы бесперебойного питания</h4>
          </div>
          <div class="col-md-4 text-center">
            <a href="/"><img  class="logo" src="@logo@" alt="@name@" border="0" alt="@name@" ></a>
            <!-- <i class="fa fa-envelope"></i>
             <div>напишите нам</div>
             <div class="info">@adminMail@</div>-->
          </div>
          <div class="col-md-4 ">
            <h4 class="pull-right">10 лет успешной работы</h4>
          </div>
        </div>
      </div>
    </div>
    <br>
    <!--ПАНЕЛЬ КОРЗИНА_начало-->
    <!--	<div class="navbar-collapse collapse vertical-align">
        <ul class="nav navbar-nav navbar-right visible-lg visible-md">
          <li>
            <a id="cartlink" data-trigger="click" data-container="body" data-toggle="popover" data-placement="bottom" data-html="true" data-url="/order/" data-content='@visualcart@'>
              <span class="visible-lg-inline"><span id="num" class="label label-info">@num@</span> товаров на </span>
              <span id="sum" class="label label-info">@sum@</span>@productValutaName@<span class="vert-line"></span><img src="../images/cart_icon.png" alt=""/>
            </a>
          </li>
                </ul>
            </div> -->

  </header>
  <!--/ Header -->

  <!-- Fixed navbar -->
  <!--ПАНЕЛЬ НАВИГАЦИИ_НАЧАЛО-->
  <div class="container">
    <nav class="navbar navbar-default" role="navigation" id="navigation">

      <div class="navbar-header">

        <a class="navbar-brand visible-xs" href="tel:@telNum@">
          <span class="glyphicon glyphicon-phone"></span> @telNum@
        </a>
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>

      </div>
      <div class="col-md-3 col-sm-3">
        <form method="post" role="search" action="/search/">
          <div class="input-group">
            <input id="search" class="form-control" type="search" data-content="" data-html="true" data-placement="bottom" data-toggle="popover" data-container="body" data-trigger="manual" required="" placeholder="Я ищу..." maxlength="50" name="words" data-original-title="" title=""></input>
                                    <span class="input-group-btn">
                                        <button class="btn" type="submit">
                                            <span class="glyphicon glyphicon-search">
                                            </span>
                                        </button>
                                    </span>
          </div>
        </form>
      </div>

      <div id="navbar" class="collapse navbar-collapse col-md-6">
        <ul class="nav navbar-nav col-md-12 pull-right">
          <!-- dropdown catalog menu -->
          <li id="catalog-dropdown" class="dropdown visible-lg visible-md visible-sm">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">КАТАЛОГ
            </a>
            <ul class="dropdown-menu mega-menu">
              @leftCatal@
            </ul>
          </li>
          @topBrands@
          <!-- dropdown catalog menu mobile-->
          <li class="dropdown visible-xs">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Каталог<span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              @menuCatal@
            </ul>
          </li>

          @topMenu@
          <li class="visible-xs"><a href="/users/wishlist.html">Отложенные товары</a></li>
          <li class="visible-xs"><a href="/news/">Новости</a></li>
          <li class="visible-xs"><a href="/gbook/">Отзывы</a></li>
          <li class="visible-xs"><a href="/price/">Прайс-лист</a></li>
          <li class="visible-xs"><a href="/map/">Карта сайта</a></li>
          <li class="about-company">
            <a href="#">О компании</a>
          </li>
        </ul>
        <!--/.nav-collapse -->
      </div>
      <div class="col-md-3 pull-right">
        <ul class="nav navbar-nav navbar-right visible-lg visible-md">
          <li>
            <a id="cartlink" data-trigger="click" data-container="body" data-toggle="popover" data-placement="bottom" data-html="true" data-url="/order/" data-content='@visualcart@'>
              <span class="visible-lg-inline"><span id="num" class="label label-info">@num@</span> товаров на </span>
              <span id="sum" class="label label-info">@sum@</span>@productValutaName@<span class="vert-line"></span><img src="../images/cart_icon.png" alt=""/>
            </a>
          </li>
        </ul>
      </div>


    </nav>
  </div>

<div class="clr"></div>
  <!-- VisualCart Mod -->
  <div id="visualcart_tmp" class="hide">@visualcart@</div>
  <!-- Notification -->
  <div id="notification" class="success-notification" style="display:none">
    <div  class="alert alert-success alert-dismissible" role="alert">
      <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
      <span class="notification-alert"> </span>
    </div>
  </div>
  <!--/ Notification -->

  <div class="container">
    <div class="row">
      <div class="col-md-3 sidebar col-xs-3 hidden-xs visible-lg visible-md">

        <!-- Меню дублирующих категорий -->
        <ul class="list-group" id="catalog-menu">
            <li class="list-group-item active"><i class="fa fa-bars"></i>Каталог оборудования</li>
            @leftCatalNt@
        </ul>
        <!--/ Меню дублирующих категорий -->
		
          <div id="guaranty" class="">
              <div class="row">
                  <div class="col-md-7">
                      <p>Гарантируем возврат в течении <br><span class="term">30 дней</span></p>
                  </div>
                  <div class="col-md-5 stamp">
                      <img src="../images/garantiya.png">
                  </div>
              </div>
          </div>

        <!-- Фасетный фильтр -->
        <div class="panel panel-info" id="faset-filter">
          <div class="panel-heading">
              <span class="pull-right"><a href="?" id="faset-filter-reset" data-toggle="tooltip" data-placement="top" title="Сбросить фильтр"><span class="glyphicon glyphicon-remove"></span>сброс</a></span>
              <h3 class="panel-title"><i class="fa  fa-align-left"></i> Фильтр товаров</h3>
          </div>
          <div class="panel-body">

            <div id="faset-filter-body">Загрузка...</div>

            <div id="price-filter-body">
              <h4>Цена</h4>
              <form method="get" id="price-filter-form">
                <div class="row">
                  <div class="col-md-6" id="price-filter-val-min">
                    от <input type="text" class="form-control input-sm" name="min" value="@price_min@" >
                  </div>
                  <div class="col-md-6" id="price-filter-val-max">
                    до <input type="text" class="form-control input-sm" name="max" value="@price_max@">
                  </div>
                </div>
              </form>
              <p>
              <div id="slider-range"></div>
              </p>
            </div>
          </div>
        </div>
        <!--/ Фасетный фильтр -->
        @oprosDisp@
        @cloud@
        @productlastview@



      </div>

      <div class="bar-padding-top-fix visible-xs visible-sm"> </div>
      <div class="col-md-9 col-xs-12 main border-bottom">
        @DispShop@
      </div>


    </div>
    <div class="page-header">
      <h2>Новые поступления</h2>
    </div>
    <div id="inner-new-list">
      <div class="owl">
        @specMainIcon@
      </div>
      <a class="owl-carousel-control left"></a>
      <a class="owl-carousel-control right"></a>
    </div>


    <!-- toTop -->
    <div class="visible-lg visible-md">
      <a href="#" id="toTop"><span id="toTopHover"></span>Наверх</a>
    </div>
    <!--/ toTop -->

    <footer class="footer well visible-lg visible-md">
      <ul id="bottom-menu">
        <li class="contacts">
          <div class="group">Контакты</div>
          <ul>
            <li>
              <i class="fa  fa-align-left"></i>
              <div>@streetAddress@</div>
            </li>
            <li>
              <i class="fa fa-phone"></i>
              <div class="info">@telNum@</div>
              <div class="info">ПН-ПТН: 10:00 - 19:00</div>
            </li>
            <li>
              <i class="fa fa-envelope"></i>
              <div class="info">@adminMail@</div>
            </li>
          </ul>
        </li>
        <li class="cabinet">
          <div class="group">Мой кабинет</div>
          <ul>
            <li><a href="/users/order.html">Отследить заказ</a></li>
            <li><a href="/users/notice.html">Уведомления о товарах</a></li>
            <li><a href="/users/wishlist.html">Отложенные товары</a></li>
            <li><a href="/users/message.html">Связь с менеджерами</a></li>
            <li><a href="javascript:UserLogOut();">Выход</a></li>
          </ul>
        </li>
        <li class="menu">
          <div class="group">Меню</div>
          <ul>
            <li><a href="/page/purchase.html">Купить</a></li>
            <li><a href="/page/developers.html">Разработчикам</a></li>
            <li><a href="/page/admin.html">Администрирование</a></li>
            <li><a href="/page/design.html">Дизайн</a></li>
          </ul>
        </li>
        <li class="articles">
          <div class="group">Статьи</div>
          <ul>
            <li><a href="/page/CID_4.html">Учебные материалы</a></li>
            <li><a href="/page/CID_3.html">Наши бренды</a></li>

          </ul>
        </li>
        <li class="navigation">
          <div class="group">Навигация</div>
          <ul>
            <li><a href="/price/">Прайс-лист</a></li>
            <li><a href="/news/">Новости</a></li>
            <li><a href="/gbook/">Отзывы</a></li>
            <li><a href="/map/">Карта сайта</a></li>
            <li><a href="/forma/">Форма связи</a></li>
          </ul>
        </li>
      </ul>
    </footer>
  </div>

  <!-- Модальное окно мобильного поиска -->
  <div class="modal fade bs-example-modal-sm" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
          <h4 class="modal-title" id="myModalLabel">Поиск</h4>
        </div>
        <div class="modal-body">
          <form  action="/search/" role="search" method="post">
            <div class="input-group">
              <input name="words" maxlength="50" class="form-control" placeholder="Искать.." required="" type="search">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span></button>
                                </span>
            </div>
          </form>

        </div>
      </div>
    </div>
  </div>
  <!--/ Модальное окно мобильного поиска -->

  <!-- Модальное окно авторизации-->
  <div class="modal fade bs-example-modal-sm" id="userModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
          <h4 class="modal-title" id="myModalLabel">Авторизация</h4>
          <span id="usersError" class="hide">@usersError@</span>
        </div>
        <div class="modal-body">
          <font color="#FF0000"></font>
          <form role="form" method="post" name="user_forma">

            <div class="form-group">
              <label>Email</label>
              <input type="email" name="login" class="form-control" placeholder="Email..." required="">
              <span class="glyphicon glyphicon-remove form-control-feedback hide" aria-hidden="true"></span>
            </div>

            <div class="form-group">
              <label>Пароль</label>
              <input type="password" name="password" class="form-control" placeholder="Пароль..." required="">
              <span class="glyphicon glyphicon-remove form-control-feedback hide" aria-hidden="true"></span>
            </div>
            <div class="checkbox">
              <label>
                <input type="checkbox" value="1" name="safe_users" @UserChecked> Запомнить
              </label>
            </div>

            <input type="hidden" value="1" name="user_enter">
            @facebookAuth@ @twitterAuth@
        </div>
        <div class="modal-footer">
                                <span class="pull-left"><a href="/users/sendpassword.html" class="btn btn-default">Забыли?</a>
                                </span>
          <button type="submit" class="btn btn-primary">Войти</button>
        </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!--/ Модальное окно авторизации-->

<!-- Fixed mobile bar -->
<div class="bar-padding-fix visible-xs visible-sm"> </div>
<nav class="navbar navbar-default navbar-fixed-bottom bar bar-tab visible-xs visible-sm" role="navigation">
  <a class="tab-item" href="/">
    <span class="icon icon-home"></span>
    <span class="tab-label">Домой</span>
  </a>
  <a class="tab-item @user_active@" @user_link@ data-target="#userModal">
    <span class="icon icon-person"></span>
    <span class="tab-label">Кабинет</span>
  </a>
  <a class="tab-item @cart_active@" href="/order/" id="bar-cart">
    <span class="icon icon-download"></span> <span class="badge badge-positive" id="mobilnum">@cart_active_num@</span>
    <span class="tab-label">Корзина</span>
  </a>
  <a class="tab-item" href="#" data-toggle="modal" data-target="#searchModal">
    <span class="icon icon-search"></span>
    <span class="tab-label">Поиск</span>
  </a>
  <a class="tab-item non-responsive-switch" href="#" data-skin="non-responsive">
    <span class="icon icon-pages"></span>
    <span class="tab-label">Вид</span>
  </a>
</nav>
<!--/ Fixed mobile bar -->

<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/bootstrap.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/jquery.formstyler.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/jquery.maskedinput.min.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/owl.carousel.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@/js/phpshop.js"></script>
<script src="java/highslide/highslide-p.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@/js/jquery.cookie.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/jquery.waypoints.min.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/inview.min.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/jquery-ui.min.js"></script>


@visualcart_lib@
<div class="visible-lg visible-md container copyright">
    <div class="pull-right">@button@</div>
