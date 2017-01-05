<#assign path=request.contextPath />
<#setting date_format="yyyy-MM-dd">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <#include "website/common/common.ftl" />
    <title>贷款服务在线申请</title>
  </head>

  <body>
  <div class="wrap">
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="clear"></div>
            
            <!--content开始-->
            <!--content开始-->
            <div class="content">
                <div class="bread">
                    <a href="${path}/index">首页</a>&gt;<a href="javascript:history.go(-3);">贷款服务</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt">
                	<p>${applyname}</p>
                    <h2>在线申请<!--<a href="${path}/anon/loan/guideApply?applytype=${applytype}" class="notice fr">申请须知</a>--></h2>
                    <ul class="progress">
                    	<li class="li1"><b></b>1.填写企业基本信息<i></i></li>
                        <li class="li2 active"><b></b>2.填写申请表格<i></i></li>
                        <li class="li3"><b></b>3.完成申请</li>
                    </ul>
                    <div class="clear"></div>
                    <div class="proList nli">
                        <div class="nlistCont">
                        <form id="coFillInApply">
                        <input type="hidden" id="applyType"   name="applyType"   value="${applytype}"/>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>${loanformManage.loanLabel1}</th>
                                    <td ><input value="${coAll.jltfispCoFillInApply.applyAmount}" name="applyAmount" id="applyAmount" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number4]]" />万元</td>
                                    <th><b class="red">*</b>${loanformManage.loanLabel2}</th>
                                    <td><label>
                                    <#if coAll.jltfispCoFillInApply.payCycle ==1>
                                    <input value="1" type="radio" name="payCycle" id="payCycle" class="yes validate[payCyclerequired]" checked/>
                                    <#else>
                                    <input value="1" type="radio" name="payCycle" id="payCycle" class="yes validate[payCyclerequired]" />
                                    </#if>
                                    <span class="mr20">6个月</span></label><label>
                                    <#if coAll.jltfispCoFillInApply.payCycle ==2>
                                    <input value="2" type="radio" name="payCycle" id="payCycle" class="yes validate[payCyclerequired]" checked/>
                                    <#else>
                                     <input value="2" type="radio" name="payCycle" id="payCycle" class="yes validate[payCyclerequired]" />
                                   </#if>
                                   <span class="mr20">12个月</span></label></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>${loanformManage.loanLabel3}</th>
                                    <td colspan="3"><textarea name="useDesc" id="useDesc" class="txta validate[required,minSize[1],maxSize[500]]" style="height:100px;">${coAll.jltfispCoFillInApply.useDesc}</textarea></td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.loanLabel4}</th>
                                    <td colspan="3"><label>
                                    <#if coAll.jltfispCoFillInApply.historyState ==1>
                                    <input value="1" name="historyState" id="historyState" type="checkbox" class="yes" checked/>
                                    <#else>
                                    <input value="1" name="historyState" id="historyState" type="checkbox" class="yes" />
                                    </#if>
                                    是</label></td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.loanLabel5}</th>
                                    <td><label>
                                    <#if coAll.jltfispCoFillInApply.continueloan ==1>
                                    <input value="1" name="continueloan" id="continueloan" type="checkbox" class="yes" checked/>
                                    <#else>
                                    <input value="1" name="continueloan" id="continueloan" type="checkbox" class="yes" />
                                    </#if>
                                    是</label></td>
                                    <th>${loanformManage.loanLabel6}</th>
                                    <td><label><input name="historyEndtime" id="historyEndtime" value="<#if (coAll.jltfispCoFillInApply.historyEndtime?exists)>${coAll.jltfispCoFillInApply.historyEndtime?date}</#if>" onClick="WdatePicker({readOnly:true})" type="text" class="txt" /></label></td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.loanLabel7}</th>
                                    <td><label>
                                    <#if coAll.jltfispCoFillInApply.isRecomend1 ==1>
                                    <input value="1" name="isRecomend1" id="isRecomend1" type="checkbox" class="yes" checked/>
                                   <#else>
                                   <input value="1" name="isRecomend1" id="isRecomend1" type="checkbox" class="yes" />
                                   </#if>
                                    是</label></td>
                                    <th>${loanformManage.loanLabel8}</th>
                                    <td><label>
                                    <#if coAll.jltfispCoFillInApply.isRecomend2 ==1>
                                    <input value="1" name="isRecomend2" id="isRecomend2" type="checkbox" class="yes" checked/>
                                    <#else>
                                    <input value="1" name="isRecomend2" id="isRecomend2" type="checkbox" class="yes" />
                                    </#if>
                                    是</label></td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.loanLabel9}</th>
                                    <td>
                                    <input value="${coAll.jltfispCoFillInApply.bankid}" name="bankid" id="bankid" type="text" class="txt2 validate[maxSize[20]]" />
                                    </td>
                                    <th>${loanformManage.loanLabel10}</th>
                                    <td>
                                    <input value="${coAll.jltfispCoFillInApply.riskid}" name="riskid" id="riskid" type="text" class="txt2 validate[maxSize[20]]" />
                                    </td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.loanLabel11}</th>
                                    <td><input value="${coAll.jltfispCoFillInApply.bankBranch}" name="bankBranch" id="bankBranch" type="text" class="txt2 validate[maxSize[20]]" /></td>
                                    <th>${loanformManage.loanLabel12}</th>
                                    <td><label>
                                    <#if coAll.jltfispCoFillInApply.isOtherbankLoan ==1>
                                    <input name="isOtherbankLoan" value="1" id="isOtherbankLoan" type="checkbox" class="yes" checked/>
                                    <#else>
                                    <input name="isOtherbankLoan" value="1" id="isOtherbankLoan" type="checkbox" class="yes" />
                                    </#if>
                                    是</label></td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.loanLabel13}</th>
                                    <td><input value="${coAll.jltfispCoFillInApply.loanOffice}" name="loanOffice" id="loanOffice" type="text" class="txt2 validate[maxSize[20]]" placeholder="请输入" /></td>
                                    <th>${loanformManage.loanLabel14}</th>
                                    <td><input value="${coAll.jltfispCoFillInApply.loanOfficeMobile}" name="loanOfficeMobile" id="loanOfficeMobile" type="text" class="txt2 validate[custom[mobile],maxSize[11]]" placeholder="请输入" /></td>
                                </tr>
                            </table>
                            <p class="ntit">融资计划(如需股权融资请填写该表)</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th>${loanformManage.loanLabel15}</th>
                                    <td><label>
                                    <#if coAll.jltfispCoFillInApply.isFinance ==1>
                                    <input type="radio" name="isFinance" id="isFinance" class="yes" value="1" checked/><span class="mr20">是</span></label><label><input type="radio" name="isFinance" id="isFinance" class="yes" value="2"/>
                                    <#elseif coAll.jltfispCoFillInApply.isFinance ==2>
                                    <input type="radio" name="isFinance" id="isFinance" class="yes" value="1"/><span class="mr20">是</span></label><label><input type="radio" name="isFinance" id="isFinance" class="yes" value="2" checked/>
                                    <#else>
                                    <input type="radio" name="isFinance" id="isFinance" class="yes" value="1"/><span class="mr20">是</span></label><label><input type="radio" name="isFinance" id="isFinance" class="yes" value="2"/>
                                    </#if>
                                    <span class="mr20">否</span></label></td>
                                    <th>${loanformManage.loanLabel16}</th>
                                    <td><label>
                                    <#if coAll.jltfispCoFillInApply.isListingPlan ==1>
                                    <input type="radio" name="isListingPlan" id="isListingPlan" class="yes" value="1" checked/><span class="mr20">是</span></label><label><input type="radio" name="isListingPlan" id="isListingPlan" class="yes" value="2"/>
                                    <#elseif coAll.jltfispCoFillInApply.isListingPlan ==2>
                                    <input type="radio" name="isListingPlan" id="isListingPlan" class="yes" value="1"/><span class="mr20">是</span></label><label><input type="radio" name="isListingPlan" id="isListingPlan" class="yes" value="2" checked/>
                                    <#else>
                                    <input type="radio" name="isListingPlan" id="isListingPlan" class="yes" value="1"/><span class="mr20">是</span></label><label><input type="radio" name="isListingPlan" id="isListingPlan" class="yes" value="2"/>
                                    </#if>
                                    <span class="mr20">否</span></label></td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.loanLabel17}</th>
                                    <td colspan="3"><input value="${coAll.jltfispCoFillInApply.finaneAmount}" name="finaneAmount" id="finaneAmount" type="text" class="txt2 validate[custom[number4],min[0],maxSize[10]]" placeholder="请输入" />万元</td>
                                </tr>
                                <tr>
                                    <th>${loanformManage.loanLabel18}</th>
                                    <td colspan="3"><textarea  name="finaneRequire" id="finaneRequire" class="txta validate[maxSize[500]]">${coAll.jltfispCoFillInApply.finaneRequire}</textarea></td>
                                </tr>
                            </table>
                            </form>
                            <div class="btnFld"><input type="button" value="保存预览" class="btnSave" /><a href="${path}/loan/onlineApplyPage?applytype=${applytype}"><input type="button" class="btnCan" value="返回上一步" /></a></div>
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
  </body>
</html>
<script type="text/javascript">
$(document).ready(function(e) {
    positionNavigation(1);
        $("#coFillInApply").validationEngine({promptPosition :'bottomRight',focusFirstField:true,showOneMessage:true});
        $('.btnSave').click(function(){
             if(!$('#coFillInApply').validationEngine('validate')){
               return false;
               }
            $.ajax({
            type: "POST",
            url: '${path}/loan/saveCoFillInApply?xss=true',
            data: $("#coFillInApply").serialize(),
            dateType:"json",
            success: function(msg){
                if(msg != 1){
                    dialog.tipsPop('ban-pop','提示:',"操作失败",'确定');
                    return false;
                }else{
                window.location.href="${path}/anon/loan/loanView?applytype=${applytype}";
                }
            }
          });
        });
       });
</script>