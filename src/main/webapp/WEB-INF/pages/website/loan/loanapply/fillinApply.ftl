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
                    <a href="javascript:;">首页</a>&gt;<a href="javascript:;">贷款服务</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt">
                	<p>${applyname}</p>
                    <h2>在线申请<a href="${path}/anon/loan/guideApply?applytype=${applytype}" class="notice fr">申请须知</a></h2>
                    <ul class="progress">
                    	<li class="li1"><b></b>1.填写企业基本信息<i></i></li>
                        <li class="li2 active"><b></b>2.填写申请表格<i></i></li>
                        <li class="li3"><b></b>3.完成申请</li>
                    </ul>
                    <div class="clear"></div>
                    <div class="proList nli">
                        <div class="nlistCont">
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th><b class="red">*</b>申请贷款额度</th>
                                    <td ><input type="text" class="txt2" />万元</td>
                                    <th><b class="red">*</b>贷款期限</th>
                                    <td><label><input type="radio" name="month" class="yes" /><span class="mr20">6个月</span></label><label><input type="radio" name="month" class="yes" /><span class="mr20">12个月</span></label></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>贷款用途说明</th>
                                    <td colspan="3"><textarea class="txta" style="height:100px;"></textarea></td>
                                </tr>
                                <tr>
                                    <th>是否申请过银行贷款</th>
                                    <td colspan="3"><label><input type="checkbox" class="yes" />是</label></td>
                                </tr>
                                <tr>
                                    <th>续贷</th>
                                    <td><label><input type="checkbox" class="yes" />是</label></td>
                                    <th>上期贷款还款时间</th>
                                    <td><label><input type="text" class="txt" /></label></td>
                                </tr>
                                <tr>
                                    <th>是否银行推荐</th>
                                    <td><label><input type="checkbox" class="yes" />是</label></td>
                                    <th>是否科委或园区推荐</th>
                                    <td><label><input type="text" class="txt" /></label></td>
                                </tr>
                                <tr>
                                    <th>选择还款银行</th>
                                    <td>
                                    	<select>
                                        	<option>中国建设银行</option>
                                            <option>中国工商银行</option>
                                        </select>
                                    </td>
                                    <th>担保/保险公司</th>
                                    <td>
                                    	<select>
                                        	<option>请选择平台</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>贷款支行</th>
                                    <td><input type="text" class="txt2" /></td>
                                    <th>是否已有其他银行贷款</th>
                                    <td><label><input type="checkbox" class="yes" />是</label></td>
                                </tr>
                                <tr>
                                    <th>银行信贷员姓名</th>
                                    <td><input type="text" class="txt2" placeholder="请输入" /></td>
                                    <th>信贷员手机号</th>
                                    <td><input type="text" class="txt2" placeholder="请输入" /></td>
                                </tr>
                            </table>
                            <p class="ntit">融资计划(如需股权融资请填写该表)</p>
                            <table width="100%" class="tab3">
                            	<tr>
                                    <th>是否需要股权融资</th>
                                    <td><label><input type="radio" name="fox" class="yes" /><span class="mr20">是</span></label><label><input type="radio" name="fox" class="yes" /><span class="mr20">否</span></label></td>
                                    <th>是否有上市计划</th>
                                    <td><label><input type="radio" name="mark" class="yes" /><span class="mr20">是</span></label><label><input type="radio" name="mark" class="yes" /><span class="mr20">否</span></label></td>
                                </tr>
                                <tr>
                                    <th>拟融资金额</th>
                                    <td colspan="3"><input type="text" class="txt2" placeholder="请输入" />万元</td>
                                </tr>
                                <tr>
                                    <th>对投资机构的要求</th>
                                    <td colspan="3"><textarea class="txta"></textarea></td>
                                </tr>
                            </table>
                            <div class="btnFld"><a href="${path}/loan/showApply?applytype=${applytype}"><input type="button" value="保存预览" class="btnSave" /></a><a href="贷款服务-在线申请.html"><input type="button" class="btnCan" value="返回上一步" /></a></div>
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