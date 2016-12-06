<#assign path=request.contextPath />
<#setting date_format="yyyy-MM-dd">
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
                      <a href="javascript:;">首页</a>&gt;<a href="javascript:;">贷款服务</a>&gt;<a href="javascript:;">在线申请</a>
                  </div>
                  <div class="calt">
                      <p>科技微贷通贷款申请</p>
                      <h2>在线申请<a href="申请须知1.html" class="notice fr">申请须知</a></h2>
                      <ul class="progress">
                          <li class="li1"><b></b>1.填写企业基本信息<i></i></li>
                          <li class="li2"><b></b>2.填写申请表格<i></i></li>
                          <li class="li3 active"><b></b>3.完成申请</li>
                      </ul>
                      <div class="clear"></div>
                      <p style="border-bottom:none;">申请信息一览</p>
                      <div class="proList nli">
                          <ul class="nlist">
                              <li class="active">申请书封面</li>
                              <li>重要提示</li>
                              <li>企业基本情况</li>
                              <li>贷款申请表</li>
                              <li>贷款承诺书</li>
                              <li>资产负债表/利润表</li>
                              <li>财务明细</li>
                              <li>附件</li>
                          </ul>
                          <div class="clear"></div>
                          <!--申请书封面-->
                          <#include "website/loan/loanapply/coCoverPage.ftl"/>
                          <!--重要提示-->
                          <#include "website/loan/loanapply/coPointView.ftl"/>
                          <!--企业基本情况-->
                          <#include "website/loan/loanapply/coProfileView.ftl"/>
                          <!--贷款申请表-->
                          <#include "website/loan/loanapply/fillinApplyView.ftl"/>
                          <!--贷款承诺书-->
                          <#include "website/loan/loanapply/coCommitMentView.ftl"/>
                          <!--资产负债表/损益表-->
                          <#include "website/loan/loanapply/coDebtView.ftl"/>
                          <!--财务明细表-->
                          <#include "website/loan/loanapply/coFinancialView.ftl"/>
                          <!--附件-->
                          <#include "website/loan/loanapply/coFileView.ftl"/>
                          <div class="btnFld"><input type="button" value="确认提交" class="btnSave" /><input type="button" value="下载打印" class="btnSave" /><a href="${path}/loan/onlineApplyPage"><input type="button" class="btnCan" value="返回修改" /></a></div>
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
  </body>
  </html>
  <script type="text/javascript">
  $('.nlist li').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
            $(this).parent().siblings(".nlistCont").hide().eq($(this).index()).show();
        });
        
  $('.btnSave').click(function(){
   $.ajax({
            type: "POST",
            url: '',
            data: {type:1}, <!--1代表科技履约贷款申请-->
            dateType:"json",
            success: function(msg){
               
            }
        });
  
  });      
  </script>