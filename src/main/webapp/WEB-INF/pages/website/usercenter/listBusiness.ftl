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
  </script>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="info">
                      <ul class="infoTab">
                          <li><a href="javascript:;">用户中心</a></li>
                          <li><a href="javascript:;">用户信息</a></li>
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
                          <li class="bbm">
                              <h4>科技履约贷款申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                          <li class="bbm">
                              <h4>科技小巨人贷款申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                          <li class="bbm">
                              <h4>高新技术贷款申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                          <li>
                              <h4>科技微贷通贷款申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                          <li>
                              <h4>保费补贴申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                          <li>
                              <h4>股权融资申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                      </ul>
                      <div class="clear"></div>
                      <div class="grad"></div>
                      <table class="tab1" style="width:1160px;">
                          <thead>
                          <tr>
                              <th width="18.6%">我的申请记录</th>
                              <th width="16.2%">企业名称</th>
                              <th width="16.2%">融资金额/万元</th>
                              <th>所属领域</th>
                              <th>申请时间</th>
                              <th width="11.2%">状态</th>
                              <th width="11.2%">操作</th>
                          </tr>
                          </thead>
                          <tbody>
                          <#list pageInfo.data as business>
                          <tr>
                              <td>${business.typeName}</td>
                              <td>${business.companyName}</td>
                              <td>${business.loanValue}</td>
                              <td>${business.tecName}</td>
                              <td>${(business.submitDate?string("yyyy-MM-dd"))}</td>
                              <td>
                              	<#if business.state = 0>
                              		已提交
                              		<#elseif business.state = 1>
                              			通过
                              		<#else>
                              			不通过
                              	</#if>
                              </td>
                              <td>
                              <#if business.type =='5'>
                              	<a href="${path}/business/showSubsidyDetail?businessType=${business.type}" target="_blank">查看</a>
                              <#elseif business.type =='1'>
                              	<a href="${path}/business/detail?businessType=${business.type}" target="_blank">查看</a>
                              <#elseif business.type =='6'>
                              	<a href="${path}/business/showFinanceApplyDetail?businessType=${business.type}" target="_blank">查看</a>
                              </#if>
                              </td>
                          </tr>
                          </#list>
                          </tbody>
                      </table>
                      <div class="paging" style="width:1160px; margin-bottom:40px;">
                           <p class="fl">显示至<span>${pageInfo.st+1 }</span>至<span>${(pageInfo.data?size)+pageInfo.st}</span>条，共<span>${pageInfo.totalCount }</span>条</p>
                          <div class="fr">
                              <a href="javascript:last();" class="spage prevPg">&lt;</a>${pageInfo.currentPage}/${pageInfo.totalPage}<a href="javascript:next();" class="spage nextPg">&gt;</a>
                          </div>
                      </div>
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