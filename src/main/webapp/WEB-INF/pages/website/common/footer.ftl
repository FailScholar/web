<#assign path=request.contextPath />
<div class="footer">
    <div class="center">
        <div class="fl">
            <a href="${path}/anon/about?to=0" onclick="setColumnIndex(0)" target="_blank">免责条款</a>
            <a href="${path}/anon/about?to=1" onclick="setColumnIndex(0)" target="_blank">关于我们</a>
            <a href="${path}/anon/about?to=2" onclick="setColumnIndex(0)" target="_blank">联系我们</a>
            <a href="${path}/anon/about?to=3" onclick="setColumnIndex(0)" target="_blank">隐私保护</a>
        </div>
        <div class="fr">
            <select onChange="javascript:window.open(this.options[this.selectedIndex].value)">
                <option value="javascript:void(0)" style="background-color:#DEDEDE">金融投资机构</option>
                <option value="http://www.boc.cn">中国银行</option>
                <option value="http://www.cmbchina.com">招商银行</option>
                <option value="http://www.bankofshanghai.com">上海银行</option>
                <option value="http://bank.ecitic.com">中信银行</option>
                <option value="http://www.spdb.com.cn">上海浦东发展银行</option>
                <option value="http://www.nbcb.com.cn">宁波银行</option>
                <option value="http://www.cmbc.com.cn">中国民生银行</option>
                <option value="http://www.cbhb.com.cn">渤海银行</option>
                <option value="http://www.srcb.com">上海农村商业银行</option>
            </select>
            <select onChange="javascript:window.open(this.options[this.selectedIndex].value)">
                <option value="javascript:void(0)" style="background-color:#DEDEDE">科技金融服务机构</option>
                <option value="http://www.shbiz.com.cn/">上海商报</option>
                <option value="http://www.sgst.cn">上海研发公共服务平台</option>
                <option value="http://soco.hitec.net.cn">科技创新政策查询系统</option>
                <option value="http://loan.sbacn.org">小微企业信贷产品查询平台</option>
                <option value="http://www.yanfabu.com">研发埠</option>
            </select>
            <select onChange="javascript:window.open(this.options[this.selectedIndex].value)">
                <option value="javascript:void(0)" style="background-color:#DEDEDE">政府科技部门</option>
                <option value="http://www.shtic.com">上海市科技创业中心</option>
                <option value="http://www.stcsm.gov.cn">上海科学技术委员会</option>
                <option value="http://www.most.gov.cn">中华人民共和国科学技术部</option>
                <option value="http://sjr.sh.gov.cn">上海市金融服务办公室</option>
            </select>
        </div>
        <div class="clear"></div>
        <p class="p1"><span>版权：吉林省科技厅</span><span>热线：0431-81334101</span><span>运营：吉林省科技金融研究中心</span><span>技术支持：长春梨果科技有限公司</span></p>
        <p><span>地址：长春市人民大街7696号</span><span>邮编：130028</span><span class="fr num"><i>您是本站第</i><b id="count">10086</b><i>位访客</i></span></p>
    </div>
</div>
<script>
    $.ajax({
        url: '${path}/anon/visitorsCount',
        type:"POST",
        success:function(msg){
            var json = jQuery.parseJSON(msg);
            $("#count").text(json.count);
        }
    });
</script>