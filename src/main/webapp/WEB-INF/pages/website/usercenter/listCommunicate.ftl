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
                              <li><a href="${path}/business/page">业务管理</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasAnyRoles name="个人会员,企业会员,机构会员">
                              <li  class="active"><a href="${path}/communicate/page">我要咨询</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasRole name="专家会员">
                              <li><a href="${path}/communicate/expertPage">我要解答</a></li>
                          </@shiro.hasRole>

                      </ul>
                      <div class="clear"></div>
                  </div>

                  <#--我要咨询开始-->
              <@shiro.hasAnyRoles name="个人会员,企业会员,机构会员">
              	<form action="${path}/communicate/page" method="post" id="queryform">
					<input type="hidden" name="currentPage" id="currentPage" value="${pageInfo.currentPage }"/>
				</form>
                  <div class="infoList pi">
                      <form action="${path}/communicate/saveToPage" method="post" class="consult" id="consultForm">
                          <div>
                              <span>咨询对象类型</span>
                              <select class="selOpt" name="ansExpertType" >
                              	<#list roleList as role>
                                  <option value="${role.id}">${role.roleName}</option>
                                 </#list>
                              </select>
                          </div>
                          <div>
                              <span>我要咨询</span>
                              <textarea class="csCont validate[required,minSize[2],maxSize[500]]" name="content" placeholder="请输入咨询问题"></textarea>
                          </div>
                          <div>
                              <input type="submit" value="确 定" class="btnCom" />
                          </div>
                      </form>
                      <div class="grad"></div>
                      <div class="result">
                          <p>咨询记录及反馈</p>
                          <table class="tab1" style="width:960px;">
                              <thead>
                              <tr>
                                  <th width="30%">咨询类型</th>
                                  <th width="30%">提交时间</th>
                                  <th>状态</th>
                                  <th>操作</th>
                              </tr>
                              </thead>
                              <tbody>
                              <#list pageInfo.data as comm>
	                              <tr>
	                                  <td>${comm.ansExpertName}</td>
	                                  <td>${(comm.time?string("yyyy-MM-dd HH:mm:ss"))}</td>
	                                  <td>
	                                  	<#if comm.contentType==0>
	                                  		已提交
	                                  		<#else>
	                                  			已反馈
	                                  	</#if>
	                                  </td>
	                                  <td><a href="javascript:;" onClick="popCon01(${comm.id})">查看</a></td>
	                              </tr>
                              </#list>
                              </tbody>
                          </table>
                          <div class="paging" style="width:960px;">
                               <p class="fl">显示<span>${pageInfo.st+1 }</span>至<span>${(pageInfo.data?size)+pageInfo.st}</span>条，共<span>${pageInfo.totalCount }</span>条</p>
								<div class="fr">
									<a href="javascript:last();" class="spage prevPg">&lt;</a>${pageInfo.currentPage}/${pageInfo.totalPage}<a href="javascript:next();" class="spage nextPg">&gt;</a>
								</div>
                          </div>
                      </div>
                  </div>
              </@shiro.hasAnyRoles>
                  <#--我要咨询结束-->
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



    function popCon01(id)
    {
        dialog({
            id: 'dialogPop',
            width: 650,
	        height:550,
            title: '问题信息',
            content: $('#dialogShow').load("${path}/communicate/viewComm?id="+id),
            okValue: '确定',
            ok: function (){}
        }).showModal();
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