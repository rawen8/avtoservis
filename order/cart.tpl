<table class="table table-striped">
    <tr>
        <td width="5%" class="hidden-xs"></td>
        <td width="40%"><strong>������������</strong></td>
        <td width="10%" align="left"><strong>���-��</strong></td>
        <td width="10%" align="center" class="hidden-xs"><strong>��������</strong></td>
        <td width="15%" align="right" class="hidden-xs"><strong>���� 1 ��.</strong></td>
        <td width="15%" align="right"><strong>���������</strong></td>
    </tr>
    <tr>
        <td width="5%" class="hidden-xs"></td>
        <td width="40%"></td>
        <td width="10%" align="left"></td>
        <td width="10%" align="center" class="hidden-xs"></td>
        <td width="15%" align="right" class="hidden-xs"></td>
        <td width="15%" align="right"></td>
    </tr>
    @display_cart@
    <tr>
        <td>
            <b>�����:</b>
        </td>
        <td class="hidden-xs"></td>
        <td width="55" >
            <strong>@cart_num@</strong> (��.)
        </td>

        <td class="hidden-xs"></td>
        <td align="right" class="hidden-xs"></td>
        <td align="right" class="red">@cart_sum@ @currency@</td>
    </tr>
    <!--<tr>
        <td colspan="2">
            ��� �������:
        </td>
        <td width="55" ></td>
        <td class="mobHideCol" width="30"></td>
        <td align="right" class="red" class="mobHideCol"></td>
        <td align="right" class="red"><span id="WeightSumma">@cart_weight@</span> ��.</td>
        <td align="right" class="red"></td>

    </tr>-->
   
    <tr>
        <td>������:</td>
        <td class="hidden-xs"></td>
        <td class="hidden-xs"></td>
        <td></td>
        <td class="hidden-xs"></td>
        <td align="right" class="red" id="SkiSummaAll"><span id="SkiSumma">@discount@</span>&nbsp;%</td>
    </tr> 
    <tr>
        <td>��������:</td>
        <td class="hidden-xs"></td>
        <td class="hidden-xs"></td>
        <td></td>
        <td class="hidden-xs"></td>
        <td align="right" class="red"><span id="DosSumma">@delivery_price@</span>&nbsp; @currency@</td>
    </tr>
    
    <tr class="success">
        <td colspan="2">
            � ������ � ������ ������:
        </td>
        <td class="hidden-xs"></td>
        <td class="hidden-xs"></td>
        <td class="hidden-xs"></td>
        <td align="right" class="red"><span id="WeightSumma" class="hidden">@cart_weight@</span><b><span id="TotalSumma">@total@</span></b> @currency@</td>
    </tr>
    
</table>
<input type="hidden" id="OrderSumma" name="OrderSumma"  value="@cart_sum@">
<script>
    $(function() {
       $('#num').html('@cart_num@');
       $('#sum').html('@cart_sum@');
    });
</script>