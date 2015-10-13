// �����������
function commentList(xid, comand, page, cid) {
    var message = "";
    var rateVal = 0;
    var cid = 0;
    var page = 0;
    if (comand == "add") {
        message = $('#message').val();
        if (message == "")
            return false;
        if (document.getElementById('rate')) {
            var radios = document.getElementsByName('rate');
            for (var i = 0, length = radios.length; i < length; i++) {
                if (radios[i].checked) {
                    rateVal = radios[i].value;
                    break;
                }
            }
        }
    }

    if (comand == "edit_add") {
        message = $('#message').val();
        cid = $('#commentEditId').val();
        $('#commentButtonAdd').show();
        $('#commentButtonEdit').hide();
    }

    if (comand == "dell") {
        if (confirm("�� ������������� ������ ������� �����������?")) {
            cid = $('#commentEditId').val();
            $('#commentButtonAdd').show();
            $('commentButtonEdit').hide();
        }
        else
            cid = 0;
    }

    $.ajax({
        url: ROOT_PATH + '/phpshop/ajax/comment.php',
        type: 'post',
        data: 'xid=' + xid + '&comand=' + comand + '&type=json&page=' + page + '&rateVal=' + rateVal + '&message=' + message + '&cid=' + cid,
        dataType: 'json',
        success: function(json) {
            if (json['success']) {

                if (comand == "edit") {
                    $('#message').val(json['comment']);
                    $('#commentButtonAdd').hide();
                    $('#commentButtonEdit').show();
                    $('#commentButtonEdit').show();
                    $('#commentEditId').val(cid);
                }
                else
                {
                    document.getElementById('message').value = "";
                    if (json['status'] == "error") {
                        mesHtml = "������� ���������� ����������� �������� ������ ��� �������������� �������������.\n<a href='/users/?from=true'>������������� ��� �������� �����������</a>.";
                        mesSimple = "������� ���������� ����������� �������� ������ ��� �������������� �������������.\n������������� ��� �������� �����������.";

                        showAlertMessage(mesHtml);

                        if ($('#evalForCommentAuth')) {
                            eval($('#evalForCommentAuth').val());
                        }
                    }
                    $('#commentList').html(json['comment']);
                }
                if (comand == "edit_add") {
                    mes = "��� ����������������� ����������� ����� �������� ������ ������������� ������ ����� ����������� ���������...";
                    showAlertMessage(mes);

                }
                if (comand == "add" && json['status'] != "error") {
                    mes = "����������� �������� � ����� �������� ����� ����������� ���������...";
                    showAlertMessage(mes);
                }
            }
        }
    });
}

// ���������� ������ � �������
function addToCartList(product_id, num, parent, addname) {

    if (num === undefined)
        num = 1;

    if (addname === undefined)
        addname = '';

    $.ajax({
        url: ROOT_PATH + '/phpshop/ajax/cartload.php',
        type: 'post',
        data: 'xid=' + product_id + '&num=' + num + '&xxid=0&type=json&addname=' + addname + '&xxid=' + parent,
        dataType: 'json',
        success: function(json) {
            if (json['success']) {
                showAlertMessage(json['message']);
                $("#num, #mobilnum").html(json['num']);
                $("#sum").html(json['sum']);
                $("#bar-cart, #order").addClass('active');
            }
        }
    });
}

// ���������� ������ � �������
function addToCompareList(product_id) {

    $.ajax({
        url: ROOT_PATH + '/phpshop/ajax/compare.php',
        type: 'post',
        data: 'xid=' + product_id + '&type=json',
        dataType: 'json',
        success: function(json) {
            if (json['success']) {
                showAlertMessage(json['message']);
                $("#numcompare").html(json['num']);
            }
        }
    });
}


// �����������
function fotoload(xid, fid) {

    $.ajax({
        url: ROOT_PATH + '/phpshop/ajax/fotoload.php',
        type: 'post',
        data: 'xid=' + xid + '&fid=' + fid + '&type=json',
        dataType: 'json',
        success: function(json) {
            if (json['success']) {
                $("#fotoload").fadeOut('slow', function() {
                    $("#fotoload").html(json['foto']);
                    $("#fotoload").fadeIn('slow');
                });
            }
        }
    });
}

// ���������� ������
$(".ok").addClass('btn btn-default btn-sm');
$("input:button").addClass('btn btn-default btn-sm');
$("input:submit").addClass('btn btn-primary');
$("input:text,input:password, textarea").addClass('form-control');


// �������� ������
function ButOn(Id) {
    Id.className = 'imgOn';
}

function ButOff(Id) {
    Id.className = 'imgOff';
}

function ChangeSkin() {
    document.SkinForm.submit();
}

// ����� ������
function ChangeValuta() {
    document.ValutaForm.submit();
}

// �������� ������ ��� ����������
function ReturnSortUrl(v) {
    var s, url = "";
    if (v > 0) {
        s = document.getElementById(v).value;
        if (s != "")
            url = "v[" + v + "]=" + s + "&";
    }
    return url;
}

// �������� ������� ����� ��������, ������ ��������
function NoFoto2(obj) {
    obj.height = 0;
    obj.width = 0;
}

// �������� ������� ����� ��������, ��������� ��������
function NoFoto(obj, pathTemplate) {
    obj.src = pathTemplate + '/images/shop/no_photo.gif';
}

// ���������� �� ���� ��������
function GetSortAll() {
    var url = ROOT_PATH + "/shop/CID_" + arguments[0] + ".html?";

    var i = 1;
    var c = arguments.length;

    for (i = 1; i < c; i++)
        if (document.getElementById(arguments[i]))
            url = url + ReturnSortUrl(arguments[i]);

    location.replace(url.substring(0, (url.length - 1)) + "#sort");

}

// �������������� ������� ��������
var trans = [];
for (var i = 0x410; i <= 0x44F; i++)
    trans[i] = i - 0x350; // �-��-�
trans[0x401] = 0xA8;    // �
trans[0x451] = 0xB8;    // �

// ��������� ����������� ������� escape()
var escapeOrig = window.escape;

// �������������� ������� escape()
window.escape = function(str)
{
    var ret = [];
    // ���������� ������ ����� ��������, ������� ��������� ���������
    for (var i = 0; i < str.length; i++)
    {
        var n = str.charCodeAt(i);
        if (typeof trans[n] != 'undefined')
            n = trans[n];
        if (n <= 0xFF)
            ret.push(n);
    }
    return escapeOrig(String.fromCharCode.apply(null, ret));
}

// ������� ��������� � �������
function auto_layout_keyboard(str) {
    replacer = {
        "q": "�", "w": "�", "e": "�", "r": "�", "t": "�", "y": "�", "u": "�",
        "i": "�", "o": "�", "p": "�", "[": "�", "]": "�", "a": "�", "s": "�",
        "d": "�", "f": "�", "g": "�", "h": "�", "j": "�", "k": "�", "l": "�",
        ";": "�", "'": "�", "z": "�", "x": "�", "c": "�", "v": "�", "b": "�",
        "n": "�", "m": "�", ",": "�", ".": "�", "/": "."
    };

    return str.replace(/[A-z/,.;\'\]\[]/g, function(x) {
        return x == x.toLowerCase() ? replacer[ x ] : replacer[ x.toLowerCase() ].toUpperCase();
    });
}


// Ajax ������ ���������� ������
function filter_load(filter_str, obj) {

    $.ajax({
        type: "POST",
        url: '?' + filter_str.split('#').join(''),
        data: {
            ajax: true
        },
        success: function(data)
        {
            if (data) {
                $(".template-product-list").html(data);
                $('#price-filter-val-max').removeClass('has-error');
                $('#price-filter-val-min').removeClass('has-error');

                // ������������ ����� ������
                setEqualHeight($(".description"));

                // ����� Waypoint
                Waypoint.refreshAll();
            }
        },
        error: function(data) {
            $(obj).attr('checked', false);
            //$(obj).attr('disabled', true);

            if ($(obj).attr('name') == 'max')
                $('#price-filter-val-max').addClass('has-error');
            if ($(obj).attr('name') == 'min')
                $('#price-filter-val-min').addClass('has-error');

            window.location.hash = window.location.hash.split($(obj).attr('data-url') + '&').join('');
        }


    });
}

// ������� �������
function price_slider_load(min, max, obj) {


    var hash = window.location.hash.split('min=' + $.cookie('slider-range-min') + '&').join('');
    hash = hash.split('max=' + $.cookie('slider-range-max') + '&').join('');
    hash += 'min=' + min + '&max=' + max + '&';
    window.location.hash = hash;

    filter_load(hash, obj);

    $.cookie('slider-range-min', min);
    $.cookie('slider-range-max', max);

    $(".pagination").hide();

}

// Ajax ������ ������� �����
function faset_filter_click(obj) {

    if (AJAX_SCROLL) {

        $(".pagination").hide();

        if ($(obj).prop('checked')) {
            window.location.hash += $(obj).attr('data-url') + '&';

        }
        else {
            window.location.hash = window.location.hash.split($(obj).attr('data-url') + '&').join('');
            if (window.location.hash == '')
                $('html, body').animate({scrollTop: $("a[name=sort]").offset().top - 100}, 500);

        }

        filter_load(window.location.hash.split(']').join('][]'), obj);
    }
    else {

        var href = window.location.href.split('?')[1];

        if (href == undefined)
            href = '';


        if ($(obj).prop('checked')) {
            var last = href.substring((href.length - 1), href.length);
            if (last != '&' && last != '')
                href += '&';

            href += $(obj).attr('data-url').split(']').join('][]');

        }
        else {
            href = href.split($(obj).attr('data-url').split(']').join('][]') + '&').join('');
        }

        window.location.href = '?' + href;
    }
}

// ������������ ����� ������
function setEqualHeight(columns) {
    var tallestcolumn = 0;
    columns.each(function() {
        currentHeight = $(this).height()+10;
        if (currentHeight > tallestcolumn) {
            tallestcolumn = currentHeight;
        }
    });

    if (tallestcolumn > 0) {
        columns.height(tallestcolumn);
    }

}


$(document).ready(function() {

    // ������ ������ ���������� ������ 
    $("button.orderCheckButton").on("click", function(e) {
        e.preventDefault();
        OrderChekJq();
    });

    // ������������ ����� ������
    setEqualHeight($(".thumbnail .description"));

    // ������������� ������ ����
    $('.mega-more-parent').each(function() {
        if ($(this).hasClass('hide') || $(this).hasClass('hidden'))
            $(this).prev().removeClass('template-menu-line');
    });

    // ����� ���� ��������� � ��������
    $('.mega-more').on('click', function(event) {
        event.preventDefault();
        $(this).hide();
        $($(this).attr('data-sub') + "  li").removeClass('hide');
    });


    // ����������� ���������� � �������
    $('#filter-selection-well input:radio').on('change', function() {
        window.location.href = $(this).attr('data-url');
    });

    $('#price-filter-body input').on('change', function() {
        if (AJAX_SCROLL) {
            price_slider_load($('#price-filter-body input[name=min]').val(), $('#price-filter-body input[name=max]').val(), $(this));
        } else {
            $('#price-filter-form').submit();
        }

    });


    // ������� �������
    $("#slider-range").on("slidestop", function(event, ui) {

        if (AJAX_SCROLL) {

            // ����� ������� ��������
            count = current;

            price_slider_load(ui.values[ 0 ], ui.values[ 1 ]);
        }
        else {
            $('#price-filter-form').submit();
        }
    });

    // �������� ������
    if (FILTER && $("#sorttable table td").html()) {

        $("#faset-filter-body").html($("#sorttable table td").html());
        $("#faset-filter").removeClass('hide');
        var $checkboxItems = $("#sorttable table td input[type='checkbox']");
        var brandId = "51-";
        var selectHtml = "<select><option value=''>�������� �����</option>";
        $checkboxItems.each(function(){
            if($(this).attr('data-name').indexOf(brandId) == 0) {
                selectHtml+="<option value='"+$(this).attr('data-name')+"'>" + $(this).next().html() + "</option>";
            }
        });
        selectHtml+='</select><button class=" confirm btn btn-default btn-sm">���������</button><button class=" void btn btn-default btn-sm">��������</button>';
        $('.brand-opt').html(selectHtml);
        $('.brand-opt select').styler();
    } else {
        $("#faset-filter").hide();
    }

    if (!FILTER) {
        $("#faset-filter").hide();
        $("#sorttable").removeClass('hide');
    }

    $('.brand-opt button.confirm').on('click',function(){
        var brandId= '51-';
        var brandPath = $('.brand-opt select').val();
        $('#faset-filter-body input').each(function() {
            if ($(this).prop('checked')) {
                $(this).prop('checked', false);
                window.location.hash = window.location.hash.replace($(this).attr('data-url') + '&', '');

            }
        });
        var $check = $('#faset-filter-body input[data-name="'+brandPath+'"]');

        $check.prop('checked', true);
        faset_filter_click($check);

    });
    $('.brand-opt button.void').on('click',function(){
        window.location.hash ='';
        faset_filter_click();
        $('.brand-opt .jq-selectbox__dropdown li').first().click();
        $('#faset-filter-body input').each(function() {
            if ($(this).prop('checked')) {
                $(this).prop('checked', false);
            }
        });
    });

    // ����������� ����������
    $('#filter-well .sort select').on('change', function() {
        if (AJAX_SCROLL) {

            count = current;


            window.location.hash = window.location.hash.split($(this).attr('name') + '=2&').join('');



            var sort = "";

            switch ($(this).val()) {
                case '1' :
                    sort = "s=3";
                    break;
                case '2' :
                    sort = "s=1&f=1";
                    break;
                case '3' :
                    sort = "s=2&f=1";
                    break;
                case '4' :
                    sort = "s=2&f=2";
                    break;
                case '5':
                    sort = "s=1&f=2";
                    break;
                default:
                    sort = "";
            }


            filter_load(window.location.hash+sort+'&');
        }
        /*else {

            var href = window.location.href.split('?')[1];

            if (href == undefined)
                href = '';

            var last = href.substring((href.length - 1), href.length);
            if (last != '&' && last != '')
                href += '&';

            href = href.split($(this).attr('name') + '=1&').join('');
            href = href.split($(this).attr('name') + '=2&').join('');
            href += $(this).attr('name') + '=' + $(this).attr('value');
            window.location.href = '?' + href;
        }*/
    });


    // �������� ���������� ������ ��� ��������
    if (window.location.hash != "" && $("#sorttable table td").html()) {

        var filter_str = window.location.hash.split(']').join('][]');

        // �������� ���������� �������
        filter_load(filter_str);

        // ������������ ���������
        $.ajax({
            type: "POST",
            url: '?' + filter_str.split('#').join(''),
            data: {
                ajaxfilter: true
            },
            success: function(data)
            {
                if (data) {
                    $("#faset-filter-body").html(data);
                    $("#faset-filter-body").html($("#faset-filter-body").find('td').html());
                }
            }
        });
    }

    // Ajax ������
    $('#faset-filter-body').on('change', 'input:checkbox', function() {

        // ����� ������� ��������
        count = current;

        faset_filter_click($(this));
    });


    // ����� �������
    $('#faset-filter-reset').on('click', function(event) {
        if (AJAX_SCROLL) {
            event.preventDefault();
            $("#faset-filter-body").html($("#sorttable table td").html());
            filter_load('');
            $('html, body').animate({scrollTop: $("a[name=sort]").offset().top - 100}, 500);
            window.location.hash = '';
            $.removeCookie('slider-range-min');
            $.removeCookie('slider-range-max');
            $(".pagination").show();

            // ����� ������� ��������
            count = current;
        }

    });


    // ��������� �������
    $('.pagination a').on('click', function(event) {
        if (AJAX_SCROLL) {
            event.preventDefault();
            window.location.href = $(this).attr('href') + window.location.hash;
        }
    });


    // toTop
    $('#toTop').on('click', function(event) {
        event.preventDefault();
        $('html, body').animate({scrollTop: $("header").offset().top - 100}, 500);
    });

    // ����������� ���������
    $('.breadcrumb, .main-spec').waypoint(function() {
        if (FIXED_NAVBAR)
            $('#navigation').toggleClass('navbar-fixed-top');

        // toTop          
        $('#toTop').fadeToggle();
    });

    // ������� �������
    $(document).on('keydown', function(e) {
        if (e == null) { // ie
            key = event.keyCode;
            var ctrl = event.ctrlKey;
        } else { // mozilla
            key = e.which;
            var ctrl = e.ctrlKey;
        }
        if ((key == '123') && ctrl)
            window.location.replace(ROOT_PATH + '/phpshop/admpanel/');
        if (key == '120') {
            $.ajax({
                url: ROOT_PATH + '/phpshop/ajax/info.php',
                type: 'post',
                data: 'type=json',
                dataType: 'json',
                success: function(json) {
                    if (json['success']) {
                        confirm(json['info']);
                    }
                }
            });
        }
    });


    // ����� �������� ������
    $(".cat-menu-search").on('click', function() {
        $('#cat').val($(this).attr('data-target'));
        $('#catSearchSelect').html($(this).html());
    });

    hs.registerOverlay({html: '<div class="closebutton" onclick="return hs.close(this)" title="�������"></div>', position: 'top right', fade: 2});
    hs.graphicsDir = ROOT_PATH+'/java/highslide/graphics/';
    hs.wrapperClassName = 'borderless';


    // ���������� ����������� ������
    $("body").on('click', '.highslide', function() {
        return hs.expand(this);
    });

    // ������ �������� �����������
    $('.highslide img').on('error', function() {
        $(this).attr('src', '/phpshop/templates/bootstrap/images/shop/no_photo.gif');
        return true;
    });


    // ��������� ������������
    $("body").on('click', '#commentLoad', function() {
        commentList($(this).attr('data-uid'), 'list');
    });

    // ����� ����������
    $(".bootstrap-theme, .non-responsive-switch").on('click', function() {
        skin = $(this).attr('data-skin');
        var cookie = $.cookie('bootstrap_theme');

        // ������� �� responsive
        if (skin == 'non-responsive' && cookie == 'non-responsive')
            skin = 'bootstrap';

        $('#body').fadeOut('slow', function() {
            $('#bootstrap_theme').attr('href', ROOT_PATH +'/phpshop/templates/bootstrap/css/' + skin + '.css');
        });

        setTimeout(function() {
            $('#body').fadeIn();
        }, 1000);

        $.cookie('bootstrap_theme', skin, {
            path: '/'
        });
    });

    // ���������� ����������
    $(".saveTheme").on('click', function() {

        $.ajax({
            url: ROOT_PATH + '/phpshop/ajax/skin.php',
            type: 'post',
            data: 'template=bootstrap&type=json',
            dataType: 'json',
            success: function(json) {
                if (json['success']) {
                    showAlertMessage(json['status']);
                }
            }
        });
    });

    // ������� ������ �������� ���������� ��������
    if ($('#files').html() != '��� ������')
        $('#filesTab').addClass('show');

    if ($('#vendorenabled').html() != '')
        $('#settingsTab').addClass('show');

    if ($('#pages').html() != '')
        $('#pagesTab').addClass('show');

    /*
     if ($('#vendorActionButton').val() == '���������') {
     $('#sorttable').addClass('show');
     }*/

    // ������� ���� �������
    if (BRAND_MENU === false) {
        $('#brand-menu').hide();
    }

    if (CATALOG_MENU === false) {
        $('#catalog-menu').hide();
    }
    else {
        $('#catalog-menu').removeClass('hide');
    }


    // ���������� � �������
    $('body').on('click', '.addToCartList', function() {
        addToCartList($(this).attr('data-uid'), $(this).attr('data-num'));
    });

    // ��������� ���������� ������ ��� ���������� � �������
    $(".addToCartListNum").on('change', function() {
        var num = (Number($(this).val()) || 1);
        var id = $(this).attr('data-uid');
        /*
         if (num > 0 && $('.addToCartList').attr('data-uid') === $(this).attr('data-uid'))
         $('.addToCartList').attr('data-num', num);*/
        if (num > 0) {
            $(".addToCartList").each(function() {
                if ($(this).attr('data-uid') === id)
                    $('.addToCartList').attr('data-num', num);
            });
        }

    });

    // ���������� � ������� �������
    $(".addToCartListParent").on('click', function() {
        addToCartList($(this).attr('data-uid'), $(this).attr('data-num'), $(this).attr('data-parent'));
    });

    // ���������� � ������� �����
    $(".addToCartListOption").on('click', function() {
        addToCartList($(this).attr('data-uid'), $(this).attr('data-num'), $(this).attr('data-uid'), $('#allOptionsSet' + $(this).attr('data-uid')).val());
    });

    // ���������� � wishlist
    $('body').on('click', '.addToWishList', function() {
        addToWishList($(this).attr('data-uid'));
    });

    // ���������� � compare
    $(".addToCompareList").on('click', function() {
        addToCompareList($(this).attr('data-uid'));
    });

    // �������� ��������� �������������� �� ������� ��������
    $("#CheckMessage").on('click', function() {
        if ($("#message").val() != '')
            $("#forma_message").submit();
    });

    // ���������� �������
    if ($("#cartlink").attr('data-content') == "") {
        $("#cartlink").attr('href', '/order/');
    }
    $('[data-toggle="popover"]').popover();
    $('a[data-toggle="popover"]').on('show.bs.popover', function() {
        $('a[data-toggle="popover"]').attr('data-content', $("#visualcart_tmp").html());
    });

    // ��������� 
    $('[data-toggle="tooltip"]').tooltip({container: 'body'});

    // ���������� select
    $('select').styler();

    // ������� �� ������ �� ����� � ���������
    $('#price-form').on('click', function(event) {
        event.preventDefault();
        if ($(this).attr('data-uid') != "" && $(this).attr('data-uid') != "ALL")
            window.location.replace("../shop/CID_" + $(this).attr('data-uid') + ".html");
    });

    // Ajax �����
    $("#search").on('input', function() {
        var words = $(this).val();
        if (words.length > 2) {
            $.ajax({
                type: "POST",
                url: ROOT_PATH + "/search/",
                data: {
                    words: escape(words + ' ' + auto_layout_keyboard(words)),
                    set: 2,
                    ajax: true
                },
                success: function(data)
                {

                    // ��������� ������
                    if (data != 'false') {

                        if (data != $("#search").attr('data-content')) {
                            $("#search").attr('data-content', data);

                            $("#search").popover('show');
                        }
                    } else
                        $("#search").popover('hide');
                }
            });
        }
        else {
            $("#search").popover('hide');
        }
    });

    // ��������� �����������
    if ($('#usersError').html()) {
        $('form[name=user_forma] .form-group').addClass('has-error has-feedback');
        $('form[name=user_forma] .glyphicon').removeClass('hide');
        $('#userModal').modal('show');
        $('#userModal').on('shown.bs.modal', function() {
            $(this).animate({paddingLeft: '+=20px'}, 150);
            $(this).animate({paddingRight: '+=20px'}, 150);
            $(this).animate({paddingLeft: '+=20px'}, 100);
            $(this).animate({paddingRight: '+=20px'}, 100);
        });
    }

    // �������� ������������ ������ �����������
    $("form[name=user_forma_register] input[name=password_new2]").on('blur', function() {
        if ($(this).val() != $("form[name=user_forma_register] input[name=password_new]").val()) {
            $('form[name=user_forma_register] #check_pass').addClass('has-error has-feedback');
            $('form[name=user_forma_register] .glyphicon').removeClass('hide');
        }
        else {
            $('form[name=user_forma_register] #check_pass').removeClass('has-error has-feedback');
            $('form[name=user_forma_register] .glyphicon').addClass('hide');
        }
    });

    // ����������� ������������
    $("form[name=user_forma_register]").on('submit', function() {
        if ($(this).find("input[name=password_new]").val() != $(this).find("input[name=password_new2]").val()) {
            $(this).find('#check_pass').addClass('has-error has-feedback');
            $(this).find('.glyphicon').removeClass('hide');
            return false;
        }
        else
            $(this).submit();
    });

    // ������ �����������
    if ($("#user_error").html()) {
        $("#user_error").find('.list-group-item').addClass('list-group-item-warning');
    }




    // ������ ����� ��������
    $("form[name='forma_order'], input[name=returncall_mod_tel],input[name=tel]").on('click', function() {
        if (PHONE_FORMAT && PHONE_MASK) {
            $('input[name=tel_new], input[name=returncall_mod_tel],input[name=tel]').mask(PHONE_MASK);
        }
    });

    // ���� �������� �������
    $(".dropdown").hover(
            function() {
                $('.dropdown-menu', this).show();
            },
            function() {
                $('.dropdown-menu', this).hide();
                $('.dropdown-menu', this).hide();
            });

    $('#spec-list, #new-list, #inner-new-list, #inner-spec-list').find('.product').unwrap('.row');
	$('#spec-list .owl').owlCarousel({

        autoPlay: 50000, //Set AutoPlay to 3 seconds

        items : 6,
        itemsDesktop : [1199,3],
        itemsDesktopSmall : [979,2],
        itemsTablet:[768,2],
        itemsMobile:[479,1]

    });
    var owlSpec = $("#spec-list .owl").data('owlCarousel');
    $('#spec-list .owl-carousel-control.left').on('click', function(){
        owlSpec.prev();
    });
    $('#spec-list .owl-carousel-control.right').on('click', function(){
        owlSpec.next();
    });

    $('#inner-spec-list .owl').owlCarousel({

        autoPlay: 50000, //Set AutoPlay to 3 seconds

        items : 3,
        itemsDesktop : [1199,3],
        itemsDesktopSmall : [979,2],
        itemsTablet:[768,2],
        itemsMobile:[479,1]

    });
    var owlInnerSpec = $("#inner-spec-list .owl").data('owlCarousel');
    $('#inner-spec-list .owl-carousel-control.left').on('click', function(){
        owlInnerSpec.prev();
    });
    $('#inner-spec-list .owl-carousel-control.right').on('click', function(){
        owlInnerSpec.next();
    });

    //$('#new-list .owl .product').unwrap('.row');
    $('#new-list .owl').owlCarousel({

        autoPlay: 50000, //Set AutoPlay to 3 seconds

        items : 6,
        itemsDesktop : [1199,3],
        itemsDesktopSmall : [979,2],
        itemsTablet:[768,2],
        itemsMobile:[479,1]

    });
    var owlNew = $("#new-list .owl").data('owlCarousel');
    $('#new-list .owl-carousel-control.left').on('click', function(){
        owlNew.prev();
    });
    $('#new-list .owl-carousel-control.right').on('click', function(){
        owlNew.next();
    });

    //$('#inner-new-list .owl .product').unwrap('.row');
    $('#inner-new-list .owl').owlCarousel({

        autoPlay: 50000, //Set AutoPlay to 3 seconds

        items : 6,
        itemsDesktop : [1199,4],
        itemsDesktopSmall : [979,3],
        itemsTablet:[768,2],
        itemsMobile:[479,1]

    });
    var owlNewInner = $("#inner-new-list .owl").data('owlCarousel');
    $('#inner-new-list .owl-carousel-control.left').on('click', function(){
        owlNewInner.prev();
    });
    $('#inner-new-list .owl-carousel-control.right').on('click', function(){
        owlNewInner.next();
    });
});