<?php

$_SESSION['Memory']["rateForComment"]["oneStarWidth"] = 16; // ������ ����� ��������
$_SESSION['Memory']["rateForComment"]["oneSpaceWidth"] = 0;




function create_theme_menu($file) {
    static $i;
    $return = null;
    $color = array(
        'cerulean' => '#178ACC',
        'cyborg' => '#000',
        'flatly' => '#D9230F',
        'spacelab' => '#46709D',
        'slate' => '#4E5D6C',
        'yeti' => '#008CBA',
        'simplex' => '#DF691A',
        'sardbirds' => '#45B3AF',
        'wordless' => '#468966',
        'wildspot' => '#564267',
        'loving' => '#FFCAEA'
    );
    if (preg_match("/^bootstrap-theme-([a-zA-Z0-9_]{1,30}).css$/", $file, $match)) {
        $icon = $color[$match[1]];
        if (empty($icon))
            $icon = $match[1];

        return '<div class="bootstrap-theme" style="background:' . $icon . '" title="' . $match[1] . '" data-skin="bootstrap-theme-' . $match[1] . '"></div>';
    }
}

// �������� ��� ����������
if ($GLOBALS['SysValue']['template_theme']['user'] == 'true' or !empty($_SESSION['logPHPSHOP'])) {
    $theme_menu = ' 
  
<div class="panel panel-success">
  <div class="panel-heading">
    <a href="http://faq.phpshop.ru/page/template-theme.html" target="_blank" title="������" class="pull-right"><span class="glyphicon glyphicon-info-sign"></span></a>
    <h3 class="panel-title">����������</h3>
  </div>
  <div class="panel-body">
                    <div class="center-block">
                        <div class="bootstrap-theme" style="background:#CCC;" title="default" data-skin="bootstrap"></div>
                        ' . PHPShopFile::searchFile($GLOBALS['SysValue']['dir']['templates'] . chr(47) . $_SESSION['skin'] . '/css/', 'create_theme_menu') . '
                            </div>
                            
<div class="clearfix"><br></div>
    <a href="?skin=bootstrap_fluid" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="��������� ������"><span class="glyphicon glyphicon-fullscreen"></span> Fluid</a> <a href="?skin=bootstrap" class="btn btn-default active" data-toggle="tooltip" data-placement="bottom" title="������������� ������"><span class="glyphicon glyphicon-retweet"></span> Fixed</a>

                    <div class="clearfix"></div>';
    if (!empty($_SESSION['logPHPSHOP']))
        $theme_menu.='<br>
                <button class="btn btn-success btn-sm saveTheme" role="button"><span class="glyphicon glyphicon-floppy-disk"></span> ���������</button>';
    $theme_menu.=' 
                </div>
</div>
                            ';
    if (!empty($GLOBALS['SysValue']['other']['skinSelect']) or !empty($_SESSION['logPHPSHOP']))
        $GLOBALS['SysValue']['other']['skinSelect'].= $theme_menu;
}

// ��������� �������
if (!empty($_SESSION['cart'])) {
    $PHPShopCart = new PHPShopCart();
    $GLOBALS['SysValue']['other']['cart_active_num'] = $PHPShopCart->getNum();
    $GLOBALS['SysValue']['other']['cart_active'] = 'active';
}

// ������ �������
if (!empty($_SESSION['UsersId'])) {
    $GLOBALS['SysValue']['other']['user_link'] = 'href="/users/"';
    $GLOBALS['SysValue']['other']['user_active'] = 'active';
} else {
    $GLOBALS['SysValue']['other']['user_link'] = 'href="#"  data-toggle="modal"';
}

// �������� ���� CSS
if (isset($_COOKIE['bootstrap_theme'])) {
    if (PHPShopSecurity::true_skin($_COOKIE['bootstrap_theme'])) {
        $GLOBALS['SysValue']['other']['bootstrap_theme'] = $_COOKIE['bootstrap_theme'];
    }
    else
        $GLOBALS['SysValue']['other']['bootstrap_theme'] = 'bootstrap';
} /* elseif (!empty($GLOBALS['SysValue']['other']['template_theme']))
  $GLOBALS['SysValue']['other']['bootstrap_theme'] = $GLOBALS['SysValue']['other']['template_theme']; */
elseif (empty($GLOBALS['SysValue']['other']['bootstrap_theme']))
    $GLOBALS['SysValue']['other']['bootstrap_theme'] = 'bootstrap';


$sign = 1423218824;
if (!empty($GLOBALS['RegTo']['SupportExpires']) and $GLOBALS['RegTo']['SupportExpires'] < $sign)
    echo ('<div class="alert alert-danger alert-dismissible text-center" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <span class="glyphicon glyphicon-exclamation-sign"></span> <strong>��������!</strong> ��� ������������� ����� ������� ��������� �������� <a href="http://phpshop.ru/order/?from=' . $_SERVER['SERVER_NAME'] . '&action=pay_new_template" target="_blank" class="alert-link">����������� ���������</a>.</div>');

// ���� �������
$PHPShopBrandsElement = new PHPShopBrandsElement();
$PHPShopBrandsElement->init('topBrands');
?>