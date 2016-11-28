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
                                <th><b class="red">*</b>公司名称</th>
                                <td colspan="3"><input type="text" class="txt" /></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>法人代表</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                                <th><b class="red">*</b>注册资本</th>
                                <td><input type="text" class="txt" placeholder="请输入" />万元</td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>成立时间</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                                <th><b class="red">*</b>组织机构代码</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>所属技术领域</th>
                                <td colspan="3">
                                    <label><input name="area" type="radio">电子信息技术</label>
                                    <label><input name="area" type="radio">生物医药技术</label>
                                    <label><input name="area" type="radio">航空航天技术</label>
                                    <label><input name="area" type="radio">新科技技术</label>
                                    <label><input name="area" type="radio">高技术服务业</label>
                                    <label><input name="area" type="radio">新能源节能技术</label>
                                    <label><input name="area" type="radio">资源环境技术</label>
                                    <label><input name="area" type="radio">高新技术改造传统行业</label>
                                </td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>企业上年度销售规模</th>
                                <td colspan="3">
                                    <label><input name="area" type="radio">0-500万</label>
                                    <label><input name="area" type="radio">501-1000万</label>
                                    <label><input name="area" type="radio">1001-3000万</label>
                                    <label><input name="area" type="radio">3001-5000万</label>
                                    <label><input name="area" type="radio">5001-1亿</label>
                                    <label><input name="area" type="radio">1-2亿</label>
                                    <label><input name="area" type="radio">2亿以上</label>
                                    <label><input name="area" type="radio">其他</label>
                                </td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>公司通讯地址</th>
                                <td colspan="3">
                                    <select>
                                        <option>北京市</option>
                                        <option>安徽省</option>
                                        <option>上海市</option>
                                    </select>
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
                                    <input type="text" class="txt" placeholder="详细地址" />
                                </td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>邮编</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                                <th><b class="red">*</b>职工人数</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>注册地址</th>
                                <td colspan="3">
                                    <select>
                                        <option>北京市</option>
                                        <option>安徽省</option>
                                        <option>上海市</option>
                                    </select>
                                    <select>
                                        <option>请选择地区</option>
                                        <option>黄陂区</option>
                                        <option>东城区</option>
                                    </select>
                                    <input type="text" class="txt" placeholder="详细地址" />
                                </td>
                            </tr>
                            <tr>
                                <th>推荐单位</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                                <th>推荐人</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                            </tr>
                            <tr>
                                <th>推荐认手机</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                                <th>推荐人邮箱</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                            </tr>
                            <tr>
                                <th>公司网址</th>
                                <td colspan="3"><input type="text" class="txt" placeholder="请输入网址" /></td>
                            </tr>
                        </table>
                        <p class="ntit">主要股东<a href="javascript:;" class="fr add">添加</a></p>
                        <table width="100%" class="tab3 tab4 module">
                            <tr>
                                <th>股东名称</th>
                                <th>法人代表(或证件号)</th>
                                <th>所占股份%</th>
                            </tr>
                            <tr>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                            </tr>
                        </table>
                        <p class="ntit">企业联系人</p>
                        <table width="100%" class="tab3">
                            <tr>
                                <th><b class="red">*</b>联系人姓名</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                                <th><b class="red">*</b>电话</th>
                                <td><input type="text" class="txt" style="width:56px;" placeholder="区号" />-<input type="text" class="txt" style="width:120px;" placeholder="电话" /></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>联系人手机</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                                <th><b class="red">*</b>联系人邮箱</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                            </tr>
                        </table>
                        <p class="ntit">项目简介</p>
                        <table width="100%" class="tab3">
                            <tr>
                                <th width="8%"><b class="red">*</b>项目名称</th>
                                <td><input type="text" class="txt" placeholder="请输入" /></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>市场及产品综述</th>
                                <td><textarea class="txta"></textarea></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>管理团队概述</th>
                                <td><textarea class="txta"></textarea></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>科技资质</th>
                                <td>
                                    <label><input name="mon" type="checkbox">高科技企业</label>
                                    <label><input name="mon" type="checkbox">科技小巨人企业</label>
                                    <label><input name="mon" type="checkbox">科技小巨人培训企业</label>
                                    <label><input name="mon" type="checkbox">软件企业</label>
                                    <div class="else">其他<input class="txt" type="text"></div>
                                </td>
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
                        <p class="ntit">企业申请表格</p>
                        <table width="100%" class="tab3">
                            <tr>
                                <th width="8%"><b class="red">*</b>企业名称</th>
                                <td><input type="text" class="txt" value="啦啦啦" readonly="readonly" /></td>
                            </tr>
                            <tr>
                                <th width="8%"><b class="red">*</b>项目名称</th>
                                <td><input type="text" class="txt" value="sad angle" readonly="readonly" /></td>
                            </tr>
                        </table>
                        <p class="ntit">近三年经营情况</p>
                        <table width="100%" class="tab3">
                            <tr>
                                <th width="8%"><b class="red">*</b>年度</th>
                                <td><input type="text" class="txt2" value="2015" readonly="readonly" />年</td>
                                <td><input type="text" class="txt2" value="2014" readonly="readonly" />年</td>
                                <td><input type="text" class="txt2" value="2013" readonly="readonly" />年</td>
                            </tr>
                            <tr>
                                <th width="8%"><b class="red">*</b>总收入</th>
                                <td><input type="text" class="txt" />万元</td>
                                <td><input type="text" class="txt" />万元</td>
                                <td><input type="text" class="txt" />万元</td>
                            </tr>
                            <tr>
                                <th width="8%"><b class="red">*</b>净利润</th>
                                <td><input type="text" class="txt" />万元</td>
                                <td><input type="text" class="txt" />万元</td>
                                <td><input type="text" class="txt" />万元</td>
                            </tr>
                        </table>
                        <p class="ntit">企业需求</p>
                        <table class="tab3" width="100%">
                            <tr>
                                <th><b class="red">*</b>拟融资金额</th>
                                <td><input type="text" class="txt" />万元</td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>对投资机构的要求</th>
                                <td><textarea class="txta" style="height:40px;"></textarea></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>服务要求</th>
                                <td>
                                    <label><input name="mon" type="checkbox">网站上发布</label><br />
                                    <label><input name="mon" type="checkbox">项目洽谈会发布</label><br />
                                    <label><input name="mon" type="checkbox">与投资机构个别洽谈</label><br />
                                    <div class="else" style="line-height:24px;">具体要求</div>
                                    <textarea class="txta" style="height:40px;"></textarea>
                                </td>
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
                    <div class="alptable nlistCont">
                        <h1 style="width:100%; background:none">上海科技企业股权融资申请表</h1>
                        <p class="fr" style="padding-right:0; text-align:right;">项目编号：2016110320161103</p>
                        <div class="clear"></div>
                        <table class="tab2" style="width:100%">
                            <tbody>
                            <tr class="tal">
                                <th>项目名称</th>
                                <td>发发发发发</td>
                                <th>所属技术领域</th>
                                <td colspan="4">电子信息技术</td>
                            </tr>
                            <tr class="tal">
                                <th>公司名称(全称)</th>
                                <td>大大大大</td>
                                <th>公司通讯地址</th>
                                <td colspan="3">北京市王府井</td>
                            </tr>
                            <tr class="tal">
                                <th>注册资本</th>
                                <td>100万元</td>
                                <th>注册区县</th>
                                <td colspan="3">上海市...</td>
                            </tr>
                            <tr class="tal">
                                <th width="16.6%">法人代表</th>
                                <td width="16.6%">浊者自浊</td>
                                <th width="16.6%">成立时间</th>
                                <td width="16.6%">2016-11-16</td>
                                <th width="16.6%">联系人邮箱</th>
                                <td>454515@qq.com</td>
                            </tr>
                            <tr class="tal">
                                <th>邮编</th>
                                <td>343423</td>
                                <th>组织机构代码</th>
                                <td>2564185652</td>
                                <th>职工人数(人)</th>
                                <td>1000</td>
                            </tr>
                            <tr class="tal">
                                <th>联系人</th>
                                <td>师大</td>
                                <th>联系人电话</th>
                                <td>0551-24236566</td>
                                <th>联系人手机</th>
                                <td>13666668888</td>
                            </tr>
                            <tr class="tal">
                                <th>联系人邮箱</th>
                                <td>4631651635@qq.com</td>
                                <th>公司网址</th>
                                <td colspan="3">www.aaa.com</td>
                            </tr>
                            <tr class="tal">
                                <th>推荐单位</th>
                                <td></td>
                                <th>推荐人</th>
                                <td colspan="3"></td>
                            </tr>
                            <tr class="tal">
                                <th>推荐人手机</th>
                                <td></td>
                                <th>推荐人邮箱</th>
                                <td colspan="3"></td>
                            </tr>
                            <tr>
                                <th colspan="6">主要股东</th>
                            </tr>
                            <tr>
                                <th colspan="2">股东名称</th>
                                <th colspan="2">法人代表(或证件号)</th>
                                <th colspan="2">所占股份%</th>
                            </tr>
                            <tr>
                                <td colspan="2">陈陈陈</td>
                                <td colspan="2">west boy</td>
                                <td colspan="2">5</td>
                            </tr>
                            <tr>
                                <th colspan="6">项目简介</th>
                            </tr>
                            <tr class="tal">
                                <th>简述公司主营产品/服务</th>
                                <td colspan="5">cacaascascasc</td>
                            </tr>
                            <tr class="tal">
                                <th>简述公司产品/服务市场及主要客户</th>
                                <td colspan="5">cacaascascasc</td>
                            </tr>
                            <tr class="tal">
                                <th>公司管理团队简介</th>
                                <td colspan="5">cacaascascasc</td>
                            </tr>
                            <tr class="tal">
                                <th>科技资质</th>
                                <td colspan="5">软件企业</td>
                            </tr>
                            <tr>
                                <th colspan="6">近三年经营情况(单位：万元)</th>
                            </tr>
                            <tr class="tal">
                                <th>年度</th>
                                <td>2015年</td>
                                <td>2014年</td>
                                <td colspan="3">2013年</td>
                            </tr>
                            <tr class="tal">
                                <th>总收入</th>
                                <td>10万元</td>
                                <td>10万元</td>
                                <td colspan="3">10万元</td>
                            </tr>
                            <tr class="tal">
                                <th>净利润</th>
                                <td>10万元</td>
                                <td>10万元</td>
                                <td colspan="3">10万元</td>
                            </tr>
                            <tr class="tal">
                                <th>融资金额</th>
                                <td colspan="5">1000万元</td>
                            </tr>
                            <tr class="tal">
                                <th>对投资机构的要求(自填)</th>
                                <td colspan="5">撒大大所大多多</td>
                            </tr class="tal">
                            <tr class="tal">
                                <th>服务要求</th>
                                <td colspan="5">撒大大所大多多</td>
                            </tr>
                            <tr>
                                <td colspan="6">
                                    <div class="cover cv1 fr">
                                        <p class="ntit">&emsp;公司：<input class="txt3" type="text"></p>
                                        <p class="ntit">填表人：<input class="txt3" type="text"></p>
                                        <p class="ntit"><span class="ml70">年</span><span class="ml70">月</span><span class="ml70">日</span></p>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <p class="tip4" style="color:#d17d00">企业承诺：本企业提供上述信息真实可靠！</p>
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
            var node = $('.module tr:last').clone(true).removeClass('module');
            $('.module tr:last').after(node);
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