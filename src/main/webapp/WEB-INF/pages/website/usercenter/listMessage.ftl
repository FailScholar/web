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
                          <li class="active"><a href="${path}/message/page">通知通告</a></li>

                          <@shiro.hasAnyRoles name="企业会员,机构会员">
                              <li><a href="${path}/business/page">业务管理</a></li>
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
					<form action="${path}/message/page" method="post" id="queryform">
						<input type="hidden" name="currentPage" id="currentPage" value="${pageInfo.currentPage }"/>
					</form>
                  <#--通知通告开始-->
                  <div class="infoList pi">
                      <table class="tab1">
                          <thead>
                          <tr>
                              <th width="40%">标题</th>
                              <th width="34%">发布时间</th>
                              <th>操作</th>
                          </tr>
                          </thead>
                          <tbody>
                          <#list pageInfo.data as message>
                          	 <tr>
                              <td>${message.title}</td>
                              <td>${(message.pushDate?string("yyyy-MM-dd HH:mm:ss"))}  </td>
                              <td><a href="javascript:showDetail(${message.id})" class="scan">查看</a></td>
                          </tr>
                          </#list>
                          </tbody>
                      </table>
                      <div class="paging">
                          <p class="fl">显示至<span>${pageInfo.st+1 }</span>至<span>${(pageInfo.data?size)+pageInfo.st}</span>条，共<span>${pageInfo.totalCount }</span>条</p>
                          <div class="fr">
                              <a href="javascript:last();" class="spage prevPg">&lt;</a>${pageInfo.currentPage}/${pageInfo.totalPage}<a href="javascript:next();" class="spage nextPg">&gt;</a>
                          </div>
                      </div>
                  </div>
                    <#--通知通告结束-->
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
</script>