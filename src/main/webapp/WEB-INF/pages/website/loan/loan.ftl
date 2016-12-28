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
                      <a href="${path}/index">首页</a>&gt;<a href="javascript:;">贷款服务</a>
                  </div>
                  <ul class="applyList">
                      <#list list as list>
                          <li>
                              <img style="width: 120px;height: 137px;" src="${path}/resource/images/img3.jpg" alt="img" class="appImg fl" />
                              <div class="appDetail fr">
                                  <h3 class="fl">${list.name}</h3>
                                  <div class="fr">
                                      <#if list.id == 16>
                                          <a href="${path}/loan/guidApplyText?applytype=${list.code}" class="a1">申请须知</a>
                                          <a href="${path}/anon/business/printSubsidyPDF?businessType=${list.code}" class="a2">文件下载</a>
                                          <a href="${path}/loan/judgeIsApplyLoan?applytype=${list.code}" class="a3">在线申请</a>
                                        <#elseif list.id == 17>
                                            <a href="${path}/loan/financeKnow2" class="a1">申请须知</a>
                                            <a href="${path}/anon/business/printFinanceApply?businessType=${list.code}" class="a2">文件下载</a>
                                            <a href="${path}/loan/financeKnow" class="a3">在线申请</a>
                                        <#else>
                                          <a href="${path}/loan/guideApply2?applytype=${list.code}" class="a1">申请须知</a>
                                          <a href="${path}/anon/business/printLoanPDF?businessType=${list.code}" class="a2">文件下载</a>
                                          <a href="${path}/loan/onlineApply?applytype=${list.code}" class="a3">在线申请</a>
                                      </#if>
                                  </div>
                                  <div class="clear"></div>
                                  <p><#if list.loanGuide ? length  lte 260>${list.loanGuide}<#else>${list.loanGuide[0..260]}...</#if></p>
                              </div>
                          </li>
                      </#list>
                  </ul>
                  <div class="clear"></div>
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
<script type="application/javascript">
    positionNavigation(1);
</script>