<#assign path=request.contextPath />
<div class="footer">
    <div class="center">
        <div class="fl">
            <a href="${path}/anon/about?to=0" target="_blank">免责条款</a>
            <a href="${path}/anon/about?to=1" target="_blank">关于我们</a>
            <a href="${path}/anon/about?to=2" target="_blank">联系我们</a>
            <a href="${path}/anon/about?to=3" target="_blank">隐私保护</a>
        </div>
        <div class="fr">
            <select class="footSe">
                <option value="" style="background-color:#DEDEDE">金融投资机构</option>
                <@indexTag.hasLink name="4"/>
            </select>
            <select class="footSe">
                <option value="" style="background-color:#DEDEDE">科技金融服务机构</option>
                <@indexTag.hasLink name="5"/>
            </select>
            <select class="footSe">
                <option value="" style="background-color:#DEDEDE">政府科技部门</option>
                <@indexTag.hasLink name="6"/>
            </select>
        </div>
        <div class="clear"></div>
        <p class="p1"><span>版权：吉林省科技厅</span><span>热线：0431-81334101</span><span>运营：吉林省科技金融研究中心</span><span>技术支持：长春梨果科技有限公司</span></p>
        <p><span>地址：长春市人民大街7696号</span><span>邮编：130028</span><span class="fr num"><i>您是本站第</i><b id="count"><@indexTag.indexFooter/></b><i>位访客</i></span></p>
    </div>
</div>
<script type="application/javascript">
    $(".footSe").change(function(){
        var v = this.options[this.selectedIndex].value;
        if(v!=''){
            window.open(v)
        }
    });
</script>
