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
                <div class="bread">
                    <a href="javascript:;">首页</a>&gt;<a href="javascript:;">保费补贴</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt">
                    <p>科技微贷通贷款申请</p>
                    <h2>在线申请<a href="javascript:;" class="notice fr" onClick="popCon01()">申请须知</a></h2>
                    <ul class="progress">
                        <li class="li1 active"><b></b>1.填写企业基本信息<i></i></li>
                        <li class="li2"><b></b>2.填写申请表格<i></i></li>
                        <li class="li3"><b></b>3.完成申请</li>
                    </ul>
                    <div class="clear"></div>
                    <div class="proList nli" style="padding-top:0;">
                        <!--填写企业基本信息-->
                        <div class="nlistCont">
                            <p class="ntit">企业基本信息</p>
                            <table width="100%" class="tab3">
                                <tr>
                                    <th><b class="red">*</b>企业名称</th>
                                    <td colspan="3"><input type="text" class="txt" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>组织机构代码</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>贷款账号</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>企业三排章</th>
                                    <td colspan="3"><input type="text" class="txt" placeholder="基本户开户行" /><input type="text" class="txt" placeholder="基本户户名" /><input type="text" class="txt" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>贷款银行</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>注册资金</th>
                                    <td><input type="text" class="txt" />万元</td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>注册地址</th>
                                    <td colspan="3">
                                        <input type="text" readonly="readonly" value="上海市" class="txt" style="width:100px;" />
                                        <select>
                                            <option>请选择地区</option>
                                            <option>黄陂区</option>
                                            <option>东城区</option>
                                        </select>
                                        <input type="text" class="txt" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>经营地址</th>
                                    <td colspan="3">
                                        <input type="text" readonly="readonly" value="上海市" class="txt" style="width:100px;" />
                                        <select>
                                            <option>请选择地区</option>
                                            <option>黄陂区</option>
                                            <option>东城区</option>
                                        </select>
                                        <select>
                                            <option>请选择街道</option>
                                            <option>东华门街道</option>
                                            <option>西华门街道</option>
                                        </select>
                                        <input type="text" class="txt" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>联系人</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>Email</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>联系电话</th>
                                    <td><input type="text" class="txt" style="width:56px;" placeholder="区号" />-<input type="text" class="txt" style="width:120px;" placeholder="电话" /></td>
                                    <th><b class="red">*</b>手机号</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                            </table>
                            <p class="ntit">申请保费补贴信息<a href="javascript:;" class="fr add">添加</a></p>
                            <table width="100%" class="tab3 module">
                                <tr>
                                    <td colspan="4"><a href="javascript:;" class="fr delete">删除</a></td>
                                </tr>
                                <tr>
                                    <th style="width:8%">借款合同编号</th>
                                    <td colspan="3"><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b><b>保单号</b></th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th><b class="red">*</b><b>担保金额</b></th>
                                    <td><input type="text" class="txt" placeholder="请输入" />万元</td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b><b>贷款银行</b></th>
                                    <td>
                                        <select>
                                            <option>请选择</option>
                                            <option>中国建设银行</option>
                                            <option>中国邮储银行</option>
                                        </select>
                                    </td>
                                    <th><b class="red">*</b><b>保险/担保公司</b></th>
                                    <td>
                                        <select>
                                            <option>请选择</option>
                                            <option>中国建设银行</option>
                                            <option>中国邮储银行</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th>实际支付保额金额</th>
                                    <td colspan="3"><input type="text" class="txt" placeholder="请输入" />元</td>
                                </tr>
                                <tr>
                                    <th>实际还款日</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th>实际支付本息(本金+利息)</th>
                                    <td><input type="text" class="txt" placeholder="请输入" />元</td>
                                </tr>
                                <tr>
                                    <th>实际放贷日</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th>贷款期限</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                            </table>
                            <div class="logbtn" style="margin-top:30px;">
                                <input type="button" class="can" value="取消" />
                                <input type="button" class="nor" value="下一步" />
                            </div>
                        </div>
                    </div>

                    <div class="proList nli" style="padding-top:0; display:none;">
                        <!--填写申请表格-->
                        <div class="nlistCont">
                            <p class="ntit"><b class="red">*</b>主要经济指标</p>
                            <table width="100%" class="tab3 tab4">
                                <tr>
                                    <th width="12.5%">时间</th>
                                    <th width="12.5%">总收入(万元)</th>
                                    <th width="12.5%">比上年度增长%</th>
                                    <th width="12.5%">研发投入(万元)</th>
                                    <th width="12.5%">比上年度增长%</th>
                                    <th width="12.5%">利润</th>
                                    <th width="12.5%">比上年度增长%</th>
                                    <th width="12.5%">纳税总额</th>
                                </tr>
                                <tr>
                                    <th>贷款上一年度</th>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                </tr>
                                <tr>
                                    <th>贷款当年</th>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                </tr>
                            </table>
                            <p class="tip4">提示：如果没有可填0！</p>
                            <p class="ntit"><b class="red">*</b>知识产权情况（单位：项）</p>
                            <table width="100%" class="tab3 tab4">
                                <tr>
                                    <th width="12.5%">时间</th>
                                    <th width="12.5%">发明</th>
                                    <th width="12.5%">专利情况实用新型</th>
                                    <th width="12.5%">外观设计</th>
                                    <th width="12.5%">集成电图路设计</th>
                                    <th width="12.5%">软件著作权</th>
                                    <th width="12.5%">软件组著作权</th>
                                    <th width="12.5%">新增知识权统计</th>
                                </tr>
                                <tr>
                                    <th>贷款上一年度</th>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                </tr>
                                <tr>
                                    <th>贷款当年</th>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                    <td><input type="text" class="txt3" /></td>
                                </tr>
                            </table>
                            <p class="tip4">提示：如果没有可填0！</p>
                            <p class="ntit">获得荣誉奖项等情况</p>
                            <table class="tab3" width="100%">
                                <tr>
                                    <th><b class="red">*</b>贷款期间新获企业资质和各种认定</th>
                                    <td>
                                        <label><input name="dus" type="radio">私营企业</label>
                                        <label><input name="dus" type="radio">中外合资企业</label>
                                        <label><input name="dus" type="radio">国有企业</label>
                                        <label><input name="dus" type="radio">集体企业</label><br>
                                        <div class="else">其他请说明<input class="txt" type="text"></div>
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>新获政府项目资助情况名称和自助金额</th>
                                    <td><textarea class="txta"></textarea></td>
                                </tr>
                            </table>
                            <p class="tip4" style="color:#d17d00">企业承诺：本企业提供上述信息真实可靠！</p>
                            <div class="logbtn" style="margin-top:30px;">
                                <input type="button" class="por" value="上一步" />
                                <input type="button" class="nor" value="下一步" />
                            </div>
                        </div>
                    </div>

                    <div class="proList nli" style="padding-top:0; display:none;">
                        <!--完成-->
                        <div class="nlistCont">
                            <p class="ntit">申请信息一览</p>
                            <table class="tab2" style="width:100%">
                                <tbody>
                                <tr class="tal">
                                    <th>企业名称</th>
                                    <td colspan="5">啦啦啦</td>
                                    <th>组织机构代码</th>
                                    <td colspan="3">524856632</td>
                                </tr>
                                <tr class="tal">
                                    <th>经营地址</th>
                                    <td colspan="5">北京市是可敬的发空间</td>
                                    <th>注册地址</th>
                                    <td colspan="3">北京市王府井</td>
                                </tr>
                                <tr class="tal">
                                    <th>贷款银行</th>
                                    <td colspan="2">北京银行</td>
                                    <th>贷款账户</th>
                                    <td colspan="2">2156325622222</td>
                                    <th>注册资金</th>
                                    <td colspan="3">10万余</td>
                                </tr>
                                <tr class="tal">
                                    <th>基本户开户行</th>
                                    <td colspan="2">基本户开户行</td>
                                    <th>基本户户口</th>
                                    <td colspan="2">基本户户口</td>
                                    <th>银行账号</th>
                                    <td colspan="3">6227 0012 0021 2135 001</td>
                                </tr>
                                <tr class="tal">
                                    <th>联系人</th>
                                    <td colspan="2">王明明</td>
                                    <th>手机</th>
                                    <td colspan="2">12355556666</td>
                                    <th>Email</th>
                                    <td colspan="3">622722122@qq.com</td>
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
                            <div class="logbtn" style="margin-top:30px;">
                                <input type="button" class="can" value="返回修改" />
                                <input type="button" class="nor" value="确认提交" />
                                <input type="button" class="nor" value="打印输出" />
                            </div>
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
        $('.proList .logbtn input.nor').click(function(){
            var index=$(this).parents('.proList').index()-3;
            if(index<3)
            {
                $('.progress li').removeClass('active').eq(index).addClass('active');
                $(this).parents('.proList').hide().next('.proList').show();
            }
        });
        $('.proList .logbtn input.por').click(function(){
            $('.progress li').removeClass('active').eq(0).addClass('active');
            $(this).parents('.proList').hide().prev('.proList').show();
        });

        $('.nlist li').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
            $(this).parent().siblings(".nlistCont").hide().eq($(this).index()).show();
        });

        function autoRisize()
        {
            if($(window).scrollTop()>536)
                $('.nlist').css('top',$(window).scrollTop()-536+"px");
            else
                $('.nlist').css('top',0);
        }

        //固定tab栏
        $(window).scroll(function(){
            autoRisize();
        });
        autoRisize();

        $('.lnav li').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
        });

        //确认提交
        $('.proList:last').find(".nor:first").click(function(){
            window.location.href="${path}/loan/success";
        });

        //删除
        $('.delete').live('click',function(){
            $(this).parents('.tab3').remove();
        });
        //增加
        $('.add').click(function(){
            var node = $('.module').clone(true).removeClass('module');
            $('.module').after(node);
        });
    });

    function popCon01()
    {
        dialog({
            id: 'dialogPop',
            width: 600,
            height:240,
            padding: 20,
            title: '申请须知',
            content: document.getElementById('test01'),
            okValue: '确定',
            cancelValue: '取消',
            ok: function (){},
            cancel: function (){}
        })
                .showModal();
    }
</script>