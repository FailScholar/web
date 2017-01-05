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
						//翻页前一页
			function last(){
				var page = parseInt($("#currentPage").val())-1;
				$("#currentPage").val(page);
				$("#queryform").submit();
			}
			//翻页下一页
			function next(){
				var page = parseInt($("#currentPage").val())+1;
				$("#currentPage").val(page);
				$("#queryform").submit();
			}
			//列表查询
			function query(){
				$("#queryform").submit();
			}
			$(function() {
				 $.validationEngineLanguage.newLang();
		        $("#consultForm").validationEngine('attach', {
		            promptPosition: "bottomRight:-10", scroll: false
		        }); 
			})
			function goMain(flag){
				 $.cookie('userinfoIndex', flag, {path: '/'});
        		 window.location.href = "${path}/main"
			}
			function goUrl(url){
		location.href=url;
	}
 	 </script>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="info">
                      <ul class="infoTab">
                          <li onclick="goMain(0)"><a href="javascript:void(0);">用户中心</a></li>
                          <li onclick="goUrl('${path}/user/showUser')"<a href="javascript:void(0);">用户信息</a></li>
                          <li onclick="goUrl('${path}/message/page')"><a href="javascript:;">通知通告</a></li>

                          <@shiro.hasAnyRoles name="企业会员,机构会员">
                              <li  onclick="goUrl('${path}/business/page')"><a href="javascript:;">业务管理</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasAnyRoles name="个人会员,企业会员,机构会员">
                              <li onclick="goUrl('${path}/communicate/page')"><a href="javascript:;">我要咨询</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasRole name="专家会员">
                              <li class="active" onclick="goUrl('${path}/communicate/expertPage')"><a href="javascript:;">我要解答</a></li>
                          </@shiro.hasRole>

                      </ul>
                      <div class="clear"></div>
                  </div>

				<form action="${path}/communicate/expertPage" method="post" id="queryform">
						<input type="hidden" name="currentPage" id="currentPage" value="${pageInfo.currentPage }"/>
					</form>
                  <#--我要解答开始-->
              <@shiro.hasRole name="专家会员">
                  <div class="infoList pi">
                          <table class="tab1" style="width:960px;">
                              <thead>
                              <tr>
                                  <th width="30%">咨询用户</th>
                                  <th width="30%">提交时间</th>
                                  <th>状态</th>
                                  <th>操作</th>
                              </tr>
                              </thead>
                              <tbody>
                              <#list pageInfo.data as comm1>
                              <tr>
                                  <td>${comm1.sendName}</td>
                                  <td>${(comm1.time?string("yyyy-MM-dd HH:mm:ss"))}</td>
                                  <td>
                                  	<#if comm1.contentType==0>
	                                  		未解答
	                                  		<#else>
	                                  			已解答
	                                  	</#if>
                                  </td>
                                  <td>
                                  <#if comm1.toUser?exists>
                                  	<a href="javascript:;" onClick="popCon02(${comm1.id})">查看</a>
                                  	<#else>
                                  	<a href="javascript:;" onClick="popCon01(${comm1.id})">回复</a>
                                  </#if>
                                  </td>
                              </tr>
                              </#list>
                              </tbody>
                          </table>
                          <div class="paging" style="width:960px;">
                              <p class="fl">显示<span>
                              	<#if (pageInfo.data?size==0)>
                               	${pageInfo.st}
                               	<#else>
                               		${pageInfo.st+1 }
                               </#if>
                              </span>至<span>${(pageInfo.data?size)+pageInfo.st}</span>条，共<span>${pageInfo.totalCount }</span>条</p>
								<div class="fr">
									<a href="javascript:last();" class="spage prevPg">&lt;</a>${pageInfo.currentPage}/${pageInfo.totalPage}<a href="javascript:next();" class="spage nextPg">&gt;</a>
								</div>
                          </div>
                  </div>
              </@shiro.hasRole>
                  <#--我要解答结束-->


                  <div class="clear"></div>
              </div>
              <!--content结束-->

          </div>
      </div>

      <div class="clear"></div>
      <div class="clearfix"></div>
  </div>

<#--我要咨询弹窗-->
<div id ="dialogShow"></div> 
  <#include "website/common/footer.ftl" />
  </body>
</html>

<script type="text/javascript">
    positionNavigation(0);
    function popCon01(id)
    {
        dialog({
            id: 'dialogPop',
            width: 650,
	        height:520,
            title: '问题信息',
            content: $('#dialogShow').load("${path}/communicate/ansComm?id="+id),
           	cancelValue: '取消',
            ok: function (){
            	if($("#saveCommForm").validationEngine("validateAjax")&&$("#saveCommForm").validationEngine("validate")){
					$.ajax({
						type: "POST",
						url: "${path }/communicate/editComm",
						data: $("#saveCommForm").serialize(),
						success: function(data){
							dialog.tipsPop("ok-pop", "提示", data.msg, function(){
								window.location.reload();
							});
							
						}
					});
				}else{
					return false;
				}
            },
            cancel: function (){
            	$('#dialogShow').html("");
            }
        }).showModal();
    }

    function popCon02(id)
    {
        dialog({
            id: 'dialogPop',
            width: 650,
            height:560,
            title: '问题信息',
            content: $('#dialogShow').load("${path}/communicate/viewComm?id="+id),
            cancelValue: '关闭',
            cancel: function (){
            	$('#dialogShow').html("");
            }
        })
                .showModal();
    }
</script>