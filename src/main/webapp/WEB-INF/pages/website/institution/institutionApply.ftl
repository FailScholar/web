<#assign path=request.contextPath />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <#include "website/common/common.ftl" />
    <title>吉林省科技金融信息服务平台</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                <div class="bread">
                    <a href="javascript:;">首页</a>&gt;<a href="javascript:;">合作机构</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt">
                    <div class="proList nli">
                        <!--企业基本信息-->
                        <div class="nlistCont">
                        	<p class="ntit">金融机构</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>申请机构(全称)</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th rowspan="4">公司logo</th>
                                    <td rowspan="4">
                                    	<img src="${path}/resource/images/blank.png" class="fl" />
                                        <span class="notice fr">建议尺寸250px*100px<br />上传大小不超过320K<br />支持JPG、GIF、PNG格式</span>
                                        <div class="clear"></div>
                                        <div class="btnUp fl">
                                        	<input type="file" />
                                            <a href="javascript:;">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>简称</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>法人代表</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>组织机构代码</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>所属省市</th>
                                    <td colspan="3">
                                    	<select>
                                        	<option>-请选择省份-</option>
                                            <option>安徽</option>
                                        </select>
                                        <select>
                                        	<option>合肥市</option>
                                            <option>安庆市</option>
                                        </select>
                                    	<input type="text" class="txt" placeholder="详细地址" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>机构属性</th>
                                    <td colspan="3">
                                    	<select>
                                        	<option>合作银行</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>公司网站</th>
                                    <td colspan="3"><input type="text" class="txt" placeholder="详细地址" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>单位简介(限500字)</th>
                                    <td colspan="3"><textarea class="txta"></textarea></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>服务产品及特色(请提供10款主要适合中小企业的信贷产品及简介)</th>
                                    <td colspan="3"><textarea class="txta"></textarea></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>服务团队介绍(限500字)</th>
                                    <td colspan="3"><textarea class="txta"></textarea></td>
                                </tr>
                            </table>
                            <p class="ntit">联系方式</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>单位地址</th>
                                    <td colspan="3">
                                    	<select>
                                        	<option>-请选择省份-</option>
                                            <option>安徽</option>
                                        </select>
                                        <select>
                                        	<option>合肥市</option>
                                            <option>安庆市</option>
                                        </select>
                                    	<input type="text" class="txt" placeholder="详细地址" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b><b>邮编</b></th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th><b class="red">*</b><b>联系人</b></th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b><b>手机</b></th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th><b class="red">*</b><b>E-mail</b></th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b><b>电话</b></th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th><b class="red">*</b><b>传真</b></th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                            </table>
                        </div>
                       	<div class="btnFld"><a href="${path}/main"><input type="button" value="完成注册" class="btnSave" /></a></div>
                        </div>
                    </div>
                </div>
            </div>
            <!--content结束-->
            
        </div>
    </div>
    
    <div class="clear"></div>
	<div class="clearfix"></div>
</div>

<#include "website/common/footer.ftl" />
<script>
$(document).ready(function(e) {
    $('.proList .logbtn input').click(function(){
		var index=$(this).parents('.proList').index()-3;
		$('.progress li').removeClass('active').eq(index).addClass('active');
		$(this).parents('.proList').hide().next('.proList').show();
	});
	
	$('.nlist li').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
		$(this).parent().siblings(".nlistCont").hide().eq($(this).index()).show();
	});
	
	function autoRisize()
	{
		if($(window).scrollTop()>536)
			$('.nlist').css('top',$(window).scrollTop()-536+"px");
		else
			$('.nlist').css('top',0);
	}
	
	$(window).scroll(function(){
		autoRisize();
	});
	autoRisize();
	
	$('.lnav li').click(function(){
		$(this).addClass('active').siblings().removeClass('active');
	});
	
	$('.btnSave').click(function(){
		var index=$(this).parents('.nlistCont').index()-1;
		if(index<7)
		{	
			$(this).parents('.nlistCont').hide().next('.nlistCont').show();
			$(this).parents('.nlistCont').siblings('.nlist').find('li').eq(index).addClass('active').siblings('li').removeClass('active');
		}		
	});
});
</script>
  </body>
</html>