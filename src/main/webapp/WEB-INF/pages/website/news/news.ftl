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
                  <div class="info">
                      <ul class="infoTab">
                        <#list columnDtoList as columnDtoList>
                          <li tips="${columnDtoList.id}"><a href="javascript:void(0);" onclick="getNewsContentList(${columnDtoList.id})">${columnDtoList.columnName}</a></li>
                          <!-- <li <#if type=='2'> class="active"</#if>><a href="javascript:;">通知公告</a></li>
                          <li <#if type=='3'> class="active"</#if>><a href="javascript:;">银行快讯</a></li>
                          <li <#if type=='4'> class="active"</#if>><a href="javascript:;">投融资动态</a></li> -->
                        </#list>  
                      </ul>
                      <div class="clear"></div>
                      <!--展示新闻的具体内容Start-->
                      <div id="showContent"></div>
                      <!--展示新闻的具体内容End-->
                  </div>
                  <div class="clear"></div>
                  <div class="page">
                      <a href="javascript:;">&lt;</a>
                      <a href="javascript:;">1</a>
                      <a href="javascript:;">2</a>
                      <span>...</span>
                      <a href="javascript:;">15</a>
                      <a href="javascript:;">16</a>
                      <a href="javascript:;">&gt;</a>
                  </div>
              </div>
              <!--content结束-->

          </div>
      </div>

      <div class="clear"></div>
      <div class="clearfix"></div>
  </div>
  <#include "website/common/footer.ftl" />
  </body>
  <script type="text/javascript">
   $(function(){
	  $("div.info ul.infoTab").find("li").eq(0).addClass("active");
	  var tips= $("div.info ul.infoTab").find("li").eq(0).attr("tips");
	  getNewsContentList(tips);
   });
   //获取新闻中心子栏目内容列表
   function getNewsContentList(columnId){
         $.ajax({
			  type : "POST",
			  url : "${path}/anon/getNewsInformationList",
			  data:{"columnId":columnId},
			  dataType : "html",
			  success:function(data){
				$("#showContent").html(data);//要刷新的div
			  },
			  error: function() {
                 alert("失败，请稍后再试！");
              }
		});
	}

	//获取新闻的详细内容
	function getNewsDetail(newsId){
		 $.post(
                "${path}/anon/getNewsDetail",
                {"id":newsId}
          );
    }
  </script>
</html>