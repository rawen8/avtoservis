<?php

function template_CID_Product($obj, $data, $rout) {
    if ($rout == 'START') {

        // �������� ������
        $obj->sort_template = 'sorttemplatehook';

        switch ($_GET['gridChange']) {
            case 1:
                $obj->set('gridSetAactive', 'active');
                break;
            case 2:
                $obj->set('gridSetBactive', 'active');
                break;
            default: $obj->set('gridSetBactive', 'active');
        }


        switch ($_GET['s']) {
            case 1:
                $obj->set('sSetAactive', 'active');
                break;
            case 2:
                $obj->set('sSetBactive', 'active');
                break;
            default: $obj->set('sSetCactive', 'active');
        }


        switch ($_GET['f']) {
            case 1:
                $obj->set('fSetAactive', 'active');
                break;
            case 2:
                $obj->set('fSetBactive', 'active');
                break;
            //default: $obj->set('fSetAactive', 'active');
        }
    }
}

/**
 * ����� �������� � ��������� �������� 
 */
function template_parent($obj, $dataArray, $rout) {

    if ($rout == 'END') {

        // ���� ��������� ������
        $price = $obj->price($dataArray);
        if (!empty($price)) {
            $obj->set('ComStartCart', '');
            $obj->set('ComEndCart', '');
            $obj->set('ComStart', '<!--');
            $obj->set('ComEnd', '-->');
            $obj->set('productPrice', $price);
            $obj->set('productValutaName', $obj->currency());
        }

        if (count($obj->select_value > 0)) {
            $obj->set('parentList', '');
            foreach ($obj->select_value as $value) {
                $obj->set('parentName', $value[0]);
                $obj->set('parentId', $value[1]);
                if (!$flag) {
                    $obj->set('checked', 'checked');
                    $flag = 1;
                    $obj->set('parentCheckedId', $value[1]);
                }
                else
                    $obj->set('checked', '');

                $disp = ParseTemplateReturn("product/product_odnotip_product_parent_one.tpl");
                $obj->set('parentList', $disp, true);
            }
            $obj->set('productParentList', ParseTemplateReturn("product/product_odnotip_product_parent.tpl"));
        }
    }
}

function template_UID($obj, $dataArray, $rout) {
    if ($rout == 'MIDDLE') {
        if ($obj->get('optionsDisp') != '' and $obj->get('parentList') == '') {
            //$obj->set('ComStart','<!--');
            //$obj->set('ComStartCart','<!--');
            //$obj->set('ComEndCart','-->');
            //$obj->set('ComEnd','-->');
            $obj->set('optionsDisp', ParseTemplateReturn("product/product_option_product.tpl"));
        }
    }
}

/**
 * ������ ������ �������������
 */
function sorttemplatehook($value, $n, $title, $vendor) {
    $disp = null;

    if (is_array($value)) {
        foreach ($value as $p) {

            $text = $p[0];
            $checked = null;
            if (is_array($vendor)) {
                foreach ($vendor as $v) {
                    if (is_array($v))
                        foreach ($v as $s)
                            if ($s == $p[1])
                                $checked = 'checked';
                }
            }


            $disp.= '<div class="checkbox">
  <label>
    <input type="checkbox" value="1" name="' . $n . '-' . $p[1] . '" ' . $checked . ' data-url="v[' . $n . ']=' . $p[1] . '"  data-name="' . $n . '-' . $p[1] . '">
    <span class="filter-item"  title="' . $p[0] . '">' . $text . '</span>
  </label>
</div>';
        }
    }
    return '<h4>' . $title . '</h4>' . $disp;
}

$addHandler = array
    (
    'CID_Product' => 'template_CID_Product',
    'parent' => 'template_parent',
    'UID' => 'template_UID'
);
?>