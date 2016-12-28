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
                    <a href="${path}/index">首页</a>&gt;<a href="${path}/perm/institution">${dictColumnDto.value}</a>&gt;<a href="javascript:void(0);" onclick="goBack(${jltfispColumn.id})">${jltfispColumn.columnName}</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt">
                	<form id="institutionForm" >
                	<input type="hidden" name="id" value="${institution.id }"/>
                    <div class="proList nli">
                        <!--企业基本信息-->
                        <div class="nlistCont">
                        	<p class="ntit">${jltfispColumn.columnName}</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>${institutManage.label1 }</th>
                                    <td><input type="text" name="institutionalName" value="${user.username }" readonly="readonly" class="txt validate[required]" placeholder="请输入" /></td>
                                    <th rowspan="4">${institutManage.label3 }</th>
                                    <td rowspan="4">
                                    	<img id="logoFileImg" 
                                    		<#if institution?? && institution.logoFile?? && institution.logoFile != "">
                                    		src="${path}${institution.logoFile }" 
                                    		<#else>
                                    		src="${path}/resource/images/blank.png" 
                                    		</#if>
                                    	 class="fl" style="width:110px;height:110px;" />
                                        <span class="notice fr">建议尺寸200px*200px<br />上传大小不超过1M<br />支持JPG、GIF、PNG格式</span>
                                        <div class="clear"></div>
                                        <div class="btnUp fl">
                                        	<input type="file" id="upFile" name="upFile" onchange="ajaxFileUpload()" />
                                        	<input type="hidden" name="logoFile" id="logoFile" value="${institution.logoFile }"/>
                                            <a href="javascript:;">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>${institutManage.label2 }</th>
                                    <td><input type="text" name="abbreviation" value="${institution.abbreviation }" class="txt validate[maxSize[20],custom[chineseEnglish]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${institutManage.label4 }</th>
                                    <td><input type="text" name="corporateRepresentative" value="${institution.corporateRepresentative }" class="txt validate[required,minSize[2],maxSize[20],custom[chineseEnglish]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${institutManage.label5 }</th>
                               		<td><input type="text" name="socialCreditCode" value="${user.socialCode }" class="txt validate[required]" readonly="readonly"/></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${institutManage.label6 }</th>
                                    <td colspan="3">
                                    	<select id="province" name="province" value="${institution.province }"  class="validate[required]" onchange="changCity(this.value)">
                                        	
                                        </select>
                                        <select id="city" class="validate[required]" name="city" value="${institution.city }">
                                        	
                                        </select>
                                    	<input type="text" name="address" value="${institution.address }" class="txt validate[required,minSize[2],maxSize[100]]" placeholder="详细地址" />
                                    </td>
                                </tr>
                                
                                <input type="hidden" name="columnId" value="${columnId }"/>
                               
                                <tr>
                                    <th>${institutManage.label7 }</th>
                                    <td colspan="3"><input type="text" name="url" value="${institution.url }" class="txt validate[minSize[2],maxSize[100],custom[url]]" placeholder="详细地址" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${institutManage.label8 }</th>
                                    <td colspan="3"><textarea name="institutionalAbstract" class="txta validate[required,minSize[2],maxSize[500]]">${institution.institutionalAbstract }</textarea></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${institutManage.label9 }</th>
                                    <td colspan="3"><textarea name="serviceProductsAndFeatures" class="txta validate[required,minSize[2],maxSize[500]]">${institution.serviceProductsAndFeatures }</textarea></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${institutManage.label10 }</th>
                                    <td colspan="3"><textarea name="investmentTeam" class="txta validate[required,minSize[2],maxSize[500]]">${institution.investmentTeam }</textarea></td>
                                </tr>
                            </table>
                            <p class="ntit">联系方式</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>${institutManage.label11 }</th>
                                    <td colspan="3">
                                    	<select id="companyRealAddress" name="companyRealAddress" value="${institution.companyRealAddress }" class="validate[required]" onchange="changCity2(this.value)">
                                        	
                                        </select>
                                        <select id="companyCity" name="companyCity" value="${institution.companyCity }" class="validate[required]">
                                        	
                                        </select>
                                    	<input type="text" name="institutionalAddress" value="${institution.institutionalAddress }" class="txt validate[required,minSize[2],maxSize[100]]" placeholder="详细地址" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b><b>${institutManage.label12 }</b></th>
                                    <td><input type="text" name="postcodes" value="${institution.postcodes }" class="txt validate[required,custom[chinaZip]]" placeholder="请输入" /></td>
                                    <th><b class="red">*</b><b>${institutManage.label13 }</b></th>
                                    <td><input type="text" name="linkMan" value="${user.contact }" readonly="readonly" class="txt validate[required]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b><b>${institutManage.label14 }</b></th>
                                    <td><input type="text" name="mobilePhone" value="${user.mobilePhone }" readonly="readonly" class="txt validate[required,custom[mobile]]" placeholder="请输入" /></td>
                                    <th><b class="red">*</b><b>${institutManage.label15 }</b></th>
                                    <td><input type="text" name="email" value="${user.accountNumber }" readonly="readonly" class="txt validate[required,custom[email]]" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b><b>${institutManage.label16 }</b></th>
                                    <td><input id="zoneDescription" name="zoneDescription" value="${institution.zoneDescription}" type="text" class="txt validate[required,minSize[3],maxSize[4],custom[onlyNumberSp]]" placeholder="区号" style="width:56px;" />-<input id="phoneNumer" name="phoneNumer" value="${institution.phoneNumer}" type="text" class="txt validate[required,minSize[7],maxSize[8],custom[onlyNumberSp]]" placeholder="电话" style="width:126px;" /></td>
                                    <th><b class="red">*</b><b>${institutManage.label17 }</b></th>
                                    <td><input type="text" name="fax" value="${institution.fax }" class="txt validate[required,minSize[6],maxSize[30],custom[onlyNumberSp]]" placeholder="请输入" /></td>
                                </tr>
                            </table>
                        </div>
                       	<div class="btnFld"><a href="javascript: void(0);"><input type="button" value="完成注册" class="btnSave" /></a></div>
                        </div>
                        </form>
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
<script type="application/javascript">
    positionNavigation(5);
var province = '${institution.province!"-1" }';
var companyRealAddress = '${institution.companyRealAddress!"-1" }';
var city = '${institution.city!"-1" }';
var companyCity = '${institution.companyCity!"-1" }';

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
	
	//输入框验证
    $.validationEngineLanguage.newLang();   
    $("#institutionForm").validationEngine('attach', {
        promptPosition: "bottomRight:-10", scroll: false
    }); 
	
	//获取省份
	$.ajax({
        type: "POST",
        url: "${path}/anon/area",
        dateType:"json",
        success: function(msg){
	        if(province == msg[7].id){
	          	$("#province").append("<option value='"+msg[7].id+"'>"+msg[7].name+"</option>");  
	          	$("#companyRealAddress").append("<option value='"+msg[7].id+"'>"+msg[7].name+"</option>");  
	        }else{
	        	$("#province").append("<option value='"+msg[7].id+"' selected='selected'>"+msg[7].name+"</option>");  
	          	$("#companyRealAddress").append("<option value='"+msg[7].id+"' selected='selected''>"+msg[7].name+"</option>");  
	        }
          for(var i=1;i<msg.length;i++){  
          		if(i != 7){
          			if(province == msg[i].id){
	          			$("#province").append("<option value='"+msg[i].id+"' selected='selected'>"+msg[i].name+"</option>");
	          		}else{
	          			$("#province").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");
	          		}
	          		if(companyRealAddress == msg[i].id){
	          			$("#companyRealAddress").append("<option value='"+msg[i].id+"' selected='selected'>"+msg[i].name+"</option>"); 
	          		}else{
	          			$("#companyRealAddress").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>"); 
	          		}
          		}
          } 
          
          changCity($("#province").val());
    	  changCity2($("#companyRealAddress").val());
        }
    });
    
    
});

//更换申请的机构所在省份时，级联更新城市
function changCity(id){
debugger;
    $.ajax({
	    type: "POST",
	    url: "${path}/anon/area",
	    data:{areaId:id},
	    dateType:"json",
	    success: function(msg){
	      $("#city").html("");
	      for(var i=0;i<msg.length;i++){
		      if(city == msg[i].id){
		      	$("#city").append("<option value='"+msg[i].id+"' selected='selected'>"+msg[i].name+"</option>");  
		      }else{
		      	$("#city").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
		      }
	      }
	    }
	});
}

//更换单位所在省份时，级联更新城市
function changCity2(id){
debugger;
    $.ajax({
	    type: "POST",
	    url: "${path}/anon/area",
	    data:{areaId:id},
	    dateType:"json",
	    success: function(msg){
	      $("#companyCity").html(""); 
	      for(var i=0;i<msg.length;i++){
	      		if(companyCity == msg[i].id){
		      		$("#companyCity").append("<option value='"+msg[i].id+"' selected='selected'>"+msg[i].name+"</option>");  
		      	}else{
		      		$("#companyCity").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
		      	}
	      }
	    }
	});
}

<!--上传附件-->
function ajaxFileUpload() {
	var filepath = $("#upFile").val();
	if(filepath != ""){
		var fileend = filepath.substring(filepath.indexOf(".")); 
		if(fileend != ".jpg" && fileend != ".gif" && fileend != ".png") {
			dialog.tipsPop('ban-pop','提示',"上传图片格式不正确",'确定');
		}else{
			$.ajaxFileUpload({
		        type: "POST",
		        url: '${path}/anon/institution/savePhoto', 
		        secureuri: false,
		        fileElementId: 'upFile',
		        dataType:"text",
		        success: function(data) {
		            var result = eval("("+data+")")
		            if (result.msg == "success") {
	                    $("#logoFile").val(result.fileName);
	                    $("#logoFileImg").attr("src","${path}"+result.fileName);
	                }else{
	                    dialog.tipsPop('ban-pop','提示:',result.msg,function(){});
	                }
			        }
		    }); 
		}
	}
} 

//保存申请--完成注册
$('.btnSave').click(function(){
	if($("#institutionForm").validationEngine("validate")){//表单验证成功
		$.ajax({
            type: "POST",
            url: '${path}/anon/saveInstitution',
            data: $("#institutionForm").serialize(),
            dateType:"json",
            success: function(msg){
              if( msg == "保存成功"){
              	$(".content").load("${path}/anon/registerSuccess");
              	$(".content").height(445);
              }else{
              	dialog.tipsPop('ban-pop','提示',msg,'确定');
                return false;
              }
            }
        });
		}else{
			return false;
		}
   });

function goBack(columnId){
	 window.location.href="${path}/perm/institution?columnId="+columnId;
	 }
</script>
  </body>
</html>