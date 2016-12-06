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
    <title>专家资源</title>
</head>

<body>
<#include "website/common/header.ftl"/>
                <!--content开始-->
                <div class="content">
                    <div class="alptable">
                        <h1>科技中小企业履约贷款保费补贴申请表</h1>
                        <p class="fr">项目编号：2016110320161103</p>
                        <div class="clear"></div>
                        <table class="tab2">
                            <tbody>
                            <tr class="tal">
                                <th>企业名称</th>
                                <td colspan="5">${coBase.company}</td>
                                <th>组织机构代码</th>
                                <td colspan="3">${coBase.socialCreditCode}</td>
                            </tr>
                            <tr class="tal">
                                <th>经营地址</th>
                                <td colspan="5">${coBase.officeAddress}</td>
                                <th>注册地址</th>
                                <td colspan="3">${coBase.registeredAddress}</td>
                            </tr>
                            <tr class="tal">
                                <th>贷款银行</th>
                                <td colspan="2">${coBase.loanBankName}</td>
                                <th>贷款账户</th>
                                <td colspan="2">${coBase.cardNo}</td>
                                <th>注册资金</th>
                                <td colspan="3">${coBase.registeredCapital}万</td>
                            </tr>
                            <tr class="tal">
                                <th>基本户开户行</th>
                                <td colspan="2">${coBase.basicAccountBank}</td>
                                <th>基本户户口</th>
                                <td colspan="2">${coBase.basicAccountCard}</td>
                                <th>银行账号</th>
                                <td colspan="3">${coBase.generalAccountBank}</td>
                            </tr>
                            <tr class="tal">
                                <th>联系人</th>
                                <td colspan="2">${coBase.linkMan}</td>
                                <th>手机</th>
                                <td colspan="2">${coBase.linkMobile}</td>
                                <th>Email</th>
                                <td colspan="3">${coBase.linkEmail}</td>
                            </tr>
                            <tr>
                                <th colspan="10">申请保费补贴信息</th>
                            </tr>
                            <tr>
                                <th>借款信息</th>
                                <th>保款单</th>
                                <th>贷款金额</th>
                                <th>贷款银行</th>
                                <th>保险/担保公司</th>
                                <th>实际房贷日</th>
                                <th>实际还款日</th>
                                <th>实际支付本息<br/>(本金+利息)</th>
                                <th>贷款期限</th>
                                <th>实际支付保费<br/>(金额/元)</th>
                            </tr>
                            <tr>
                                <td>54154</td>
                                <td>4343</td>
                                <td>24万元</td>
                                <td>邮储银行</td>
                                <td>啊啊担保公司</td>
                                <td>2016-07-05</td>
                                <td>421</td>
                                <td>143月</td>
                                <td>2016-07-15</td>
                                <td>3133</td>
                            </tr>
                            <tr>
                                <th colspan="10">企业在贷款年度取得的业绩</th>
                            </tr>
                            <tr>
                                <th colspan="10">1、主要经济指标（单位：万元）</th>
                            </tr>
                            <tr>
                                <th>时间</th>
                                <th>总收入</th>
                                <th>比上年度增长%</th>
                                <th>研发投入</th>
                                <th>比上年度增长%</th>
                                <th colspan="2">利润</th>
                                <th>比上年度增长%</th>
                                <th colspan="2">纳税总额</th>
                            </tr>
                            <tr>
                                <th>贷款上一年度</th>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td colspan="2">0.00</td>
                                <td>0.00</td>
                                <td colspan="2">0.00</td>
                            </tr>
                            <tr>
                                <th>贷款当年</th>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td colspan="2">0.00</td>
                                <td>0.00</td>
                                <td colspan="2">0.00</td>
                            </tr>
                            <tr>
                                <th colspan="10">2、知识产权（单位：项）</th>
                            </tr>
                            <tr>
                                <th rowspan="2">时间</th>
                                <th colspan="3">专利情况（已授权）</th>
                                <th rowspan="2">集成电路图设计</th>
                                <th rowspan="2">软件著作权</th>
                                <th rowspan="2">软件组著作权</th>
                                <th rowspan="2">其他（请说明）</th>
                                <th colspan="2" rowspan="2">新增知识权总计</th>
                            </tr>
                            <tr>
                                <th width="10%">发明</th>
                                <th width="10%">实用新型</th>
                                <th width="10%">外观设计</th>
                            </tr>
                            <tr>
                                <th>贷款上一年度</th>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00<td>
                                <td colspan="2">0.00</td>
                            </tr>
                            <tr>
                                <th>贷款当年</th>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00</td>
                                <td>0.00<td>
                                <td colspan="2">0.00</td>
                            </tr>
                            <tr>
                                <th colspan="10">3、获得荣誉、奖项等情况</th>
                            </tr>
                            <tr>
                                <th colspan="4">贷款期间新获企业资质和各种认定</th>
                                <th colspan="6">新获政府项目资助情况名称和资助金额</th>
                            </tr>
                            <tr>
                                <td colspan="4">申请神峨眉吗</td>
                                <td colspan="6">申请神峨眉吗</td>
                            </tr>
                            <tr>
                                <th colspan="10">申请单位承诺</th>
                            </tr>
                            <tr class="tal">
                                <td colspan="10">以上信息全部真实有效</td>
                            </tr>
                            <tr class="tal">
                                <td colspan="3">单位（公章）</td>
                                <td colspan="3">法定代表人（签名盖章）</td>
                                <td colspan="4">企业基本户三排章</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="aud">
                        <h1>审查记录：</h1>
                        <p class="noans">暂无审查记录！</p>
                    </div>
                    <div class="aud">
                        <h1>审查记录：</h1>
                        <p>批复金额：210W</p>
                        <p>意见反馈：阿斯大苏打撒旦撒旦撒大苏打撒旦撒大苏打三</p>
                    </div>
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