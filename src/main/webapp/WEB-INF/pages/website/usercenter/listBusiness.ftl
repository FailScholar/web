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
    <title>用户中心</title>
      <style type="text/css">
          .ifo {width:590px;}
          .per .sde { width:130px;}
          .infoList { position:relative;}
.more { position:absolute; top:345px; right:0; line-height:36px; padding:0 10px;}
.more span { font-family:"宋体";}
      </style>
        <script type="text/javascript">

  	var imgDialog;
function ajaxFileUpload1() {  
    if($("#uploadFile").val()==''){
        alert('请选择图片上传');
        return false;
    }
    $.ajaxFileUpload({  
        url: '${path}/imageScreenshot/uploadImage?pop=1',  
        secureuri: false,  
        fileElementId: 'uploadFile',  
        dataType: 'json',  
        success: function(json, status) {
            if(json.result=='true'){
                var filePath = json.filePath;
                var width = json.width;
                var height = json.height;
                var url = '${path}/imageScreenshot/imageCrop?pop=1&filePath='+filePath+"&width="+width+"&height="+height;
                imgDialog = dialog({
					width: 600,
					height : 400,
					padding: 10,
					content: $('#dialogShow').load(url)
				});
               imgDialog.showModal();
            }else{
                alert(json.message);
            }
        },error: function (data, status, e)//服务器响应失败处理函数
        {
            alert(e);
        }
    }  
);
    return false;  
} 

function userForm(){
	$.cookie('userinfoIndex', 1, {path: '/'});
	$("#insForm").submit();
}
function goMain(flag){
				 $.cookie('userinfoIndex', flag, {path: '/'});
				 window.location.href = "${path}/main"
			}
  </script>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="info">
                      <ul class="infoTab">
                          <li><a href="javascript:goMain(0);">用户中心</a></li>
                          <li><a href="javascript:goMain(1);">用户信息</a></li>
                          <li><a href="${path}/message/page">通知通告</a></li>

                          <@shiro.hasAnyRoles name="企业会员,机构会员">
                              <li class="active"><a href="${path}/business/page">业务管理</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasAnyRoles name="个人会员,企业会员,机构会员">
                              <li><a href="${path}/communicate/page">我要咨询</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasRole name="专家会员">
                              <li><a href="${path}/communicate/expertPage">我要解答</a></li>
                          </@shiro.hasRole>

                      </ul>
                      <div class="clear"></div>
                  </div>

                  <#--业务管理开始-->
              <@shiro.hasAnyRoles name="企业会员,机构会员">
                  <div class="infoList">
                      <p class="tit2">贷款申请类型</p>
                      <ul class="aply">
	                      <#list list as list>
		                      <#if (list_index<6)>
			                      	<li class="bbm">
		                              <h4>${list.name}</h4>
		                               <#if list.id == 16>
		                                  <a href="${path}/loan/guidApplyText?applytype=${list.code}">申请须知</a>
		                                  <a href="${path}/loan/judgeIsApplyLoan?applytype=${list.code}" class="online">在线申请</a>
		                                <#elseif list.id == 17>
		                                    <a href="${path}/loan/financeKnow2">申请须知</a>
		                                    <a href="${path}/loan/financeKnow" class="online">在线申请</a>
		                                <#else>
		                                  <a href="${path}/loan/guideApply2?applytype=${list.code}">申请须知</a>
		                                  <a href="${path}/loan/onlineApply?applytype=${list.code}" class="online">在线申请</a>
		                              </#if>
		                          </li>
	                          </#if>
	                      </#list>
                      </ul>
                      <div class="clear"></div>
                      <#if (list?size>6)>
                          	<a href="${path}/anon/loan" class="more">更多<span>&gt;&gt;</span></a>
                      </#if>
                      <div class="grad"></div>
                       <div class="clist fl">
                    	<h1>我的申请记录</h1>
                        <div class="cl">
                            <ul id="queryBuss">
                            	<#list dictListByType as dict>
                            	<#if dict.code == t.type>
                            		<li class="active" lang="${dict.code}">${dict.value}</li>
                            	<#else>
                            		<li lang="${dict.code}">${dict.value}</li>
                            	</#if>
                                
                                </#list>
                            </ul>
                        </div>
                    </div>
                      <table class="tab1" id="tab1" style="width:970px;">
                          <#include "website/usercenter/tableList.ftl"/>
                      </table>
                      <!--
                      <div class="paging" style="width:970px; margin-bottom:40px;">
                           <p class="fl">显示至<span>${pageInfo.st+1 }</span>至<span>${(pageInfo.data?size)+pageInfo.st}</span>条，共<span>${pageInfo.totalCount }</span>条</p>
                          <div class="fr">
                              <a href="javascript:last();" class="spage prevPg">&lt;</a>${pageInfo.currentPage}/${pageInfo.totalPage}<a href="javascript:next();" class="spage nextPg">&gt;</a>
                          </div>
                      </div>
                      -->
                  </div>
              </@shiro.hasAnyRoles>
                  <#--业务管理结束-->
                  <div class="clear"></div>
              </div>
              <!--content结束-->

          </div>
      </div>

      <div class="clear"></div>
      <div class="clearfix"></div>
  </div>

<div id ="dialogShow"></div> 
  <#include "website/common/footer.ftl" />
  </body>
</html>

<script type="text/javascript">
    positionNavigation(0);
	function subInfo(id,type){
		$.ajax({
            type: "POST",
            url: "${path}/business/updateBuss",
            data: {id:id},
            dateType:"json",
            success: function(msg){
                dialog.tipsPop('ok-pop','提示:',"提交成功",function(){
                       $('#tab1').load("${path}/business/busspage?type="+type)
                   });
             }
         });
	}

	$("#queryBuss li").click(function() {
		$(this).addClass('active').siblings('li').removeClass('active');
		var type = $(this).attr("lang");
		$('#tab1').load("${path}/business/busspage?type="+type)
	});
      //通知通告弹窗
        function showDetail(id) {
        	dialog({
	            id: 'dialogPop',
	            width: 650,
	            height:300,
	            autoOpen:false,//默认关闭  
    			modal: true,//开启遮罩层
	            resizable:false,  
			    position: { using:function(pos){  
			        console.log(pos)  
			        var topOffset = $(this).css(pos).offset().top;  
			        if (topOffset = 0||topOffset>0) {  
			            $(this).css('top', 20);  
			        }  
			    }},  
	            title: '通知通告详情',
	            content: $('#dialogShow').load("${path }/message/showDetail?id="+id),
	            okValue: '确定',
	            ok: function (){}
	        }).showModal();
        }



    function popCon01()
    {
        dialog({
            id: 'dialogPop',
            width: 440,
            padding: 20,
            title: '问题信息',
            content: document.getElementById('test01'),
            okValue: '确定',
            cancelValue: '取消',
            ok: function (){},
            cancel: function (){}
        })
                .showModal();
    }

    function popCon02()
    {
        dialog({
            id: 'dialogPop',
            width: 440,
            padding: 20,
            title: '问题信息',
            content: document.getElementById('test02'),
            okValue: '确定',
            cancelValue: '取消',
            ok: function (){},
            cancel: function (){}
        })
                .showModal();
    }
</script>