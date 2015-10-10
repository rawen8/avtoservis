<!DOCTYPE html>
<html lang="ru" xmlns="http://www.w3.org/1999/html">
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
    <link id="bootstrap_theme"
          href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@css/@bootstrap_theme@.css"
          rel="stylesheet">
    <link href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@css/bar.css"
          rel="stylesheet">

    <!-- Font-awesome -->
    <link href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@css/font-awesome.min.css"
          rel="stylesheet">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0//css/font-awesome.min.css" rel="stylesheet">
    <link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow|PT+Sans&subset=latin,cyrillic" rel="stylesheet">

    <!-- Menu -->
    <link href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@css/menu.css"
          rel="stylesheet">

    <!-- Highslide -->
    <link href="java/highslide/highslide.css" rel="stylesheet">


    <!-- Formstyler -->
    <link href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@css/jquery.formstyler.css"
          rel="stylesheet"/>
    <link href="@pageCss@" type="text/css" rel="stylesheet">
    <!--[if IE]>
    <link href="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@/ie.css"
          media="screen, projection" rel="stylesheet" type="text/css"/>
    <![endif]-->
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

    <!-- Header -->
    <header class="visible-lg visible-md">
        <div class="top_line">
            <div class="col-md-6 col-sm-6">
                <ul class="page-catal">
                    @pageCatal@
                </ul>
            </div>
            <div class="col-md-6 col-sm-6">
                <ul class="nav nav-pills pull-right">
                    @usersDisp@
                    <li role="presentation">
                        <a href="/compare/">�������� ������ (<span id="numcompare">@numcompare@</span> ��.)</a>
                    </li>
                    <li role="presentation">@wishlist@</li>
                </ul>
            </div>
        </div>

        <!--HEADER_������-->
        <div id="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-4">
                        <div class="top-adr">
                            <span class="tel-num"><i class="fa fa-phone"></i> @telNum@</span>

                            <div>
                                <span class="shedule-days">���-���: 10:00 - 19:00</span> <span class="mail-adr">@adminMail@</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4 text-center">
                        <div class="logo-wrap">
                            <img class="logo" src="@logo@" alt="@name@" border="0" alt="@name@">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <form action="/search/" role="search" method="post">
                            <div class="input-group pull-right">
                                <input name="words" maxlength="50" id="search" class="form-control"
                                       placeholder="�����.." required="" type="search" data-trigger="manual"
                                       data-container="body" data-toggle="popover" data-placement="bottom"
                                       data-html="true" data-content="">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="submit"><span
                                                    class="glyphicon glyphicon-search"></span></button>
                                    </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
        <!--������� ���� - ���.2-->
        <nav class="top_menu">
            <div class="container">
                <div class="row" role="navigation" id="navigation">
                    <div id="navbar" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav pull-left">
                        <li class="home visible-lg visible-md">
                            <a class="home-link" href="/"
                               title="�����"></a>
                        </li>
                        <!-- dropdown catalog menu -->
                        <li id="catalog-dropdown" class="dropdown visible-lg visible-md visible-sm">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                �������
                            </a>
                            <ul class="dropdown-menu mega-menu">
                                @leftCatal@
                            </ul>
                        </li><!-- .dropdown catalog menu -->

                        <!-- dropdown catalog menu mobile-->
                        <li class="dropdown visible-xs">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                               aria-expanded="false">�������<span
                                        class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                @menuCatal@
                            </ul>
                        </li>
                        <li class="newtip">
                            <a href="/newtip">�������</a>
                        </li>
                        <li class="spec">
                            <a href="/spec">���������������</a>
                        </li>
                        <!--@topMenu@-->

                        <li class="visible-xs"><a href="/users/wishlist.html">���������� ������</a></li>
                        <li class="visible-xs"><a href="/news/">�������</a></li>
                        <li class="visible-xs"><a href="/gbook/">������</a></li>
                        <li class="visible-xs"><a href="/price/">�����-����</a></li>
                        <li class="visible-xs"><a href="/map/">����� �����</a></li>
                    </ul>
                        <div class="pull-right cart">
                            <ul class="nav navbar-nav visible-lg visible-md">
                                <li>
                                    <a id="cartlink" data-trigger="click" data-container="body" data-toggle="popover"
                                       data-placement="bottom" data-html="true" data-url="/order/"
                                       data-content='@visualcart@'>
                                        <span class="visible-lg-inline"><span id="num"
                                                                              class="label label-info">@num@</span> ������� - </span>
                                        <span id="sum" class="label label-info">@sum@</span>@productValutaName@<span
                                                class="vert-line"></span><img src="../images/cart_icon.png" alt=""/>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </nav>
        <br>
        <!--.������� ���� - ���.2-->
        <nav class="top_menu">
            <div class="container">
                <nav class="navbar navbar-default" role="navigation" id="navigation">
                    <div class="navbar-header">
                        <a class="navbar-brand visible-xs" href="tel:@telNum@">
                            <span class="glyphicon glyphicon-phone"></span> @telNum@
                        </a>
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#navbar"
                                aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="row">
                        <div id="navbar" class="collapse navbar-collapse col-md-6">
                            <ul class="nav navbar-nav col-md-12 pull-right">
                                <!-- dropdown catalog menu -->
                                <li class="active home visible-lg visible-md">
                                    <a class="home-link" href="/"
                                       title="�����"></a>
                                </li>
                                <li id="catalog-dropdown" class="dropdown visible-lg visible-md visible-sm">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                        �������
                                    </a>
                                    <ul class="dropdown-menu mega-menu">
                                        @leftCatal@
                                    </ul>
                                </li>
                                <!-- dropdown catalog menu mobile-->
                                <li class="dropdown visible-xs">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                       aria-expanded="false">�������<span
                                                class="caret"></span></a>
                                    <ul class="dropdown-menu" role="menu">
                                        @menuCatal@
                                    </ul>
                                </li>
                                <li class="newtip">
                                    <a href="/newtip">�������</a>
                                </li>
                                <li class="spec">
                                    <a href="/spec">���������������</a>
                                </li>
                                <!--@topMenu@-->

                                <li class="visible-xs"><a href="/users/wishlist.html">���������� ������</a></li>
                                <li class="visible-xs"><a href="/news/">�������</a></li>
                                <li class="visible-xs"><a href="/gbook/">������</a></li>
                                <li class="visible-xs"><a href="/price/">�����-����</a></li>
                                <li class="visible-xs"><a href="/map/">����� �����</a></li>

                            </ul>
                            <!--/.nav-collapse -->
                        </div>
                        <div class="col-md-6 pull-right">
                            <ul class="nav navbar-nav navbar-right visible-lg visible-md">
                                <li>
                                    <a id="cartlink" data-trigger="click" data-container="body" data-toggle="popover"
                                       data-placement="bottom" data-html="true" data-url="/order/"
                                       data-content='@visualcart@'>
                                        <span class="visible-lg-inline"><span id="num"
                                                                              class="label label-info">@num@</span> ������� - </span>
                                        <span id="sum" class="label label-info">@sum@</span>@productValutaName@<span
                                                class="vert-line"></span><img src="../images/cart_icon.png" alt=""/>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>
        </nav>

    </header>
    <!--/ Header -->

    <!-- Fixed navbar -->
    <!--������ ���������_������-->

    <div class="clr"></div>

    <!-- VisualCart Mod -->
    <div id="visualcart_tmp" class="hide">@visualcart@</div>
    <!-- Notification -->
    <div id="notification" class="success-notification" style="display:none">
        <div class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span
                        class="sr-only">Close</span></button>
            <span class="notification-alert"> </span>
        </div>
    </div>
    <!--/ Notification -->

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="main-spec">
                    <div class="page-header">
                        <h2>���������������</h2>
                    </div>
                    <div id="spec-list">
                        <div class="owl">@specMain@</div>
                        <a class="owl-carousel-control left"></a>
                        <a class="owl-carousel-control right"></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">


            <div class="col-md-3 sidebar col-xs-3 visible-lg visible-md">

                <!-- ���� ����������� ��������� -->
                <ul class="list-group" id="catalog-menu">
                    
                    @leftCatalNt@
                </ul>
                <div id="guaranty" class="">
                    <div class="row">
                        <div class="col-md-7">
                            <p>����������� ������� � ������� <br><span class="term">30 ����</span></p>
                        </div>
                        <div class="col-md-5 stamp">
                            <img src="../images/garantiya.png">
                        </div>
                    </div>
                </div>
                <!--/ ���� ����������� ��������� -->

            </div>
            <div class="col-md-9 col-xs-12 main">
                <div class="bar-padding-top-fix visible-md"></div>
                <div class="template-slider ">
                    @imageSlider@
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">

                <div class="visible-xs visible-sm">@leftCatalTable@</div>
                <div class="page-header">
                    <h2>�������</h2>
                </div>
                <div id="new-list">
                    <div class="owl">@specMain@</div>
                    <a class="owl-carousel-control left"></a>
                    <a class="owl-carousel-control right"></a>
                </div>

                <div class="page-header">
                    <h2>� ���</h2>
                </div>
                <div id="new-list">
                    <div class="main-content">@mainContent@</div>
                </div>

                <!-- toTop -->
                <div class="visible-lg visible-md">
                    <a href="#" id="toTop"><span id="toTopHover"></span>������</a>
                </div>
                <!--/ toTop -->
            </div>

        </div>

        <footer class="footer well visible-lg visible-md">
            <div class="">
                <ul id="bottom-menu">
                    <li class="contacts">
                        <div class="group">��������</div>
                        <ul>
                            <li>
                                <i class="fa fa-map-marker"></i>

                                <div>@streetAddress@</div>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i>

                                <div class="info">@telNum@</div>
                                <div class="info">��-���: 10:00 - 19:00</div>
                            </li>
                            <li>
                                <i class="fa fa-envelope"></i>

                                <div class="info">@adminMail@</div>
                            </li>
                        </ul>
                    </li>
                    <li class="cabinet">
                        <div class="group">��� �������</div>
                        <ul>
                            <li><a href="/users/order.html">��������� �����</a></li>
                            <li><a href="/users/notice.html">����������� � �������</a></li>
                            <li><a href="/users/wishlist.html">���������� ������</a></li>
                            <li><a href="/users/message.html">����� � �����������</a></li>
                            <li><a href="javascript:UserLogOut();">�����</a></li>
                        </ul>
                    </li>
                    <li class="menu">
                        <div class="group">����</div>
                        <ul>
                            <li><a href="/page/purchase.html">������</a></li>
                            <li><a href="/page/developers.html">�������������</a></li>
                            <li><a href="/page/admin.html">�����������������</a></li>
                            <li><a href="/page/design.html">������</a></li>
                        </ul>
                    </li>
                    <li class="articles">
                        <div class="group">������</div>
                        <ul>
                            <li><a href="/page/CID_4.html">������� ���������</a></li>
                            <li><a href="/page/CID_3.html">���� ������</a></li>

                        </ul>
                    </li>
                    <li class="navigation">
                        <div class="group">���������</div>
                        <ul>
                            <li><a href="/price/">�����-����</a></li>
                            <li><a href="/news/">�������</a></li>
                            <li><a href="/gbook/">������</a></li>
                            <li><a href="/map/">����� �����</a></li>
                            <li><a href="/forma/">����� �����</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </footer>
    </div>

    <!-- ��������� ���� ���������� ������ -->
    <div class="modal fade bs-example-modal-sm" id="searchModal" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                                aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">�����</h4>
                </div>
                <div class="modal-body">
                    <form action="/search/" role="search" method="post">
                        <div class="input-group">
                            <input name="words" maxlength="50" class="form-control" placeholder="������.." required=""
                                   type="search">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit"><span
                                                class="glyphicon glyphicon-search"></span></button>
                                </span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--/ ��������� ���� ���������� ������ -->

    <!-- ��������� ���� �����������-->
    <div class="modal fade bs-example-modal-sm" id="userModal" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                                aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="myModalLabel">��������������</h4>
                    <span id="usersError" class="hide">@usersError@</span>
                </div>
                <div class="modal-body">
                    <font color="#FF0000"></font>

                    <form role="form" method="post" name="user_forma">

                        <div class="form-group">
                            <label>Email</label>
                            <input type="email" name="login" class="form-control" placeholder="Email..." required="">
                            <span class="glyphicon glyphicon-remove form-control-feedback hide"
                                  aria-hidden="true"></span>
                        </div>

                        <div class="form-group">
                            <label>������</label>
                            <input type="password" name="password" class="form-control" placeholder="������..."
                                   required="">
                            <span class="glyphicon glyphicon-remove form-control-feedback hide"
                                  aria-hidden="true"></span>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" value="1" name="safe_users" @UserChecked> ���������
                            </label>
                        </div>

                        <input type="hidden" value="1" name="user_enter">
                        @facebookAuth@ @twitterAuth@
                        <div class="reg" role="presentation"><a href="/users/register.html">������������������</a></div>
                </div>
                <div class="modal-footer">
                                <span class="pull-left"><a href="/users/sendpassword.html" class="btn btn-default">������?</a>
                                </span>
                    <button type="submit" class="btn btn-primary">�����</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!--/ ��������� ���� �����������-->

<!-- Fixed mobile bar -->
<div class="bar-padding-fix visible-xs visible-sm"></div>
<nav class="navbar navbar-default navbar-fixed-bottom bar bar-tab visible-xs visible-sm" role="navigation">
    <a class="tab-item active" href="/">
        <span class="icon icon-home"></span>
        <span class="tab-label">�����</span>
    </a>
    <a class="tab-item @user_active@" @user_link@ data-target="#userModal">
        <span class="icon icon-person"></span>
        <span class="tab-label">�������</span>
    </a>
    <a class="tab-item @cart_active@" href="/order/" id="bar-cart">
        <span class="icon icon-download"></span> <span class="badge badge-positive"
                                                       id="mobilnum">@cart_active_num@</span>
        <span class="tab-label">�������</span>
    </a>
    <a class="tab-item" href="#" data-toggle="modal" data-target="#searchModal">
        <span class="icon icon-search"></span>
        <span class="tab-label">�����</span>
    </a>
    <a class="tab-item non-responsive-switch" href="#" data-skin="non-responsive">
        <span class="icon icon-pages"></span>
        <span class="tab-label">���</span>
    </a>
</nav>
<!--/ Fixed mobile bar -->

<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/bootstrap.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/jquery.formstyler.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/owl.carousel.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@/js/phpshop.js"></script>
<script src="java/jqfunc.js"></script>
<script src="java/highslide/highslide-p.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin']; php@/js/jquery.cookie.js"></script>
<script src="@php echo $GLOBALS['SysValue']['dir']['templates'].chr(47).$_SESSION['skin'].chr(47); php@js/jquery.waypoints.min.js"></script>
@visualcart_lib@
<div class="visible-lg visible-md container copyright">
    <div class="pull-right">@button@</div>

