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
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="info">
                      <ul class="infoTab">
                          <li class="active"><a href="javascript:;">用户中心</a></li>
                          <li><a href="javascript:;">用户信息</a></li>
                          <li><a href="javascript:;">通知通告</a></li>

                          <@shiro.hasRole name="企业会员">
                              <li><a href="javascript:;">业务管理</a></li>
                          </@shiro.hasRole>

                          <@shiro.hasAnyRoles name="个人会员,企业会员">
                              <li><a href="javascript:;">我要咨询</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasRole name="专家会员">
                              <li><a href="javascript:;">我要解答</a></li>
                          </@shiro.hasRole>

                      </ul>
                      <div class="clear"></div>
                  </div>


              <#--用户中心开始-->
                  <div class="infoList pi">
                      <div class="personInfo fl">
                          <img src="${path}/resource/images/head1.jpg" alt="head" class="fl" />
                          <div class="me fr">
                              <h3>张小盼</h3>
                              <p>用户名：wi拉拉</p>
                              <p>手机号：15155556666</p>
                          </div>
                      </div>
                      <div class="setInfo fr">
                          <h2>申请认证</h2>
                          <@shiro.hasRole name="个人会员">
                          <#--最多显示7个，多的显示更多-->
                              <a href="javascript:;">申请成为科技金融专家</a>
                              <a href="javascript:;">申请成为科技金融专员</a>
                              <a href="javascript:;">申请成为科技信贷专员</a>
                              <a href="javascript:;"><span class="bds_more">更多></span></a>
                              <p></p>
                          </@shiro.hasRole>
                          <@shiro.hasRole name="专家会员">
                              您已申请成为XXX专家
                          </@shiro.hasRole>
                          <@shiro.hasRole name="企业会员">
                          <#--最多显示7个，多的显示更多-->
                              <a href="${path}/institution/institutionApply">申请成为合作银行</a>
                              <a href="${path}/institution/institutionApply">申请成为投资机构</a>
                              <a href="${path}/institution/institutionApply">申请成为担保公司</a>
                              <a href="${path}/institution/institutionApply">申请成为租赁公司</a>
                              <a href="${path}/institution/institutionApply">申请成为中介机构</a>
                              <a href="${path}/institution/institutionApply">申请成为小贷公司</a>
                              <a href="${path}/institution/institutionApply">申请成为保险公司</a>
                              <a href="javascript:;"><span class="bds_more">更多></span></a>
                              <p></p>
                          </@shiro.hasRole>
                      </div>
                      <div class="clear"></div>
                  </div>
                 <#--用户中心结束-->




                  <#--用户信息开始-->
              <@shiro.hasAnyRoles name="个人会员,专家会员">
                  <div class="infoList pi" style="display:none;">
                      <div class="ifo">
                          <div class="per per1">
                              <span class="sde fl">头像：</span>
                              <div class="uploadImg fl">
                                  <img src="${path}/resource/images/head2.jpg" alt="head" />
                                  <div class="upload">
                                      <div></div>
                                      <input type="file" />
                                  </div>
                              </div>
                              <div class="tip fl">
                                  <p><span class="red">*</span>建议尺寸200px*200px</p>
                                  <p><span class="red">*</span>支持JPG、GIF、PNG格式</p>
                                  <p><span class="red">*</span>上传大小不超过1MB</p>
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">用户邮箱：</span>
                              <div class="fl">
                                  <input type="text" value="250250250" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">姓名：</span>
                              <div class="fl">
                                  <input type="text" value="张三三" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">手机：</span>
                              <div class="fl">
                                  <input type="text" value="15900002222" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">工作单位：</span>
                              <div class="fl">
                                  <input type="text" value="合肥国泰安" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">所属部门：</span>
                              <div class="fl">
                                  <input type="text" value="教育资源部门" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="clear"></div>
                          <div class="grad"></div>
                          <input value="修 改" class="btnCom mod" type="button">
                          <div class="btnHide">
                              <input value="确 定" class="btnCom" type="button">
                              <input value="取 消" class="btnCom btnCle" type="button">
                          </div>
                      </div>
                  </div>
              </@shiro.hasAnyRoles>
              <@shiro.hasAnyRoles name="企业会员">
                  <div class="infoList pi" style="display:none;">
                      <div class="ifo">
                          <div class="per per1">
                              <span class="sde fl">头像：</span>
                              <div class="uploadImg fl">
                                  <img src="${path}/resource/images/head2.jpg" alt="head" />
                                  <div class="upload">
                                      <div></div>
                                      <input type="file" />
                                  </div>
                              </div>
                              <div class="tip fl">
                                  <p><span class="red">*</span>建议尺寸200px*200px</p>
                                  <p><span class="red">*</span>支持JPG、GIF、PNG格式</p>
                                  <p><span class="red">*</span>上传大小不超过1MB</p>
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">用户邮箱：</span>
                              <div class="fl">
                                  <input type="text" value="250250250" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">企业名称：</span>
                              <div class="fl">
                                  <input type="text" value="张三三" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">联系人：</span>
                              <div class="fl">
                                  <input type="text" value="合肥国泰安" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">手机：</span>
                              <div class="fl">
                                  <input type="text" value="15900002222" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">统一社会信用代码：</span>
                              <div class="fl">
                                  <input type="text" value="12345678910" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="clear"></div>
                          <div class="grad"></div>
                          <input value="修 改" class="btnCom mod" type="button">
                          <div class="btnHide">
                              <input value="确 定" class="btnCom" type="button">
                              <input value="取 消" class="btnCom btnCle" type="button">
                          </div>
                      </div>
                  </div>
              </@shiro.hasAnyRoles>
                  <#--用户信息结束-->



                  <#--通知通告开始-->
                  <div class="infoList pi" style="display:none;">
                      <table class="tab1">
                          <thead>
                          <tr>
                              <th width="40%">标题</th>
                              <th width="34%">发布时间</th>
                              <th>操作</th>
                          </tr>
                          </thead>
                          <tbody>
                          <tr>
                              <td>系统维护通知</td>
                              <td>2016年10月31日</td>
                              <td><a href="javascript:;" class="scan">查看</a></td>
                          </tr>
                          <tr class="even">
                              <td>版本更新通知</td>
                              <td>2016年10月31日</td>
                              <td><a href="javascript:;" class="scan">查看</a></td>
                          </tr>
                          <tr>
                              <td>会员贷款信息通知</td>
                              <td>2016年10月31日</td>
                              <td><a href="javascript:;" class="scan">查看</a></td>
                          </tr>
                          </tbody>
                      </table>
                      <div class="paging">
                          <p class="fl">显示<span>1</span>至<span>5</span>条，共<span>8</span>条</p>
                          <div class="fr">每页显示行
                              <select>
                                  <option>5</option>
                                  <option>10</option>
                                  <option>15</option>
                              </select>
                              <a href="javascript:;" class="spage prevPg">&lt;</a><a href="javascript:;" class="spage nextPg">&gt;</a>
                          </div>
                      </div>
                  </div>
                    <#--通知通告结束-->


                  <#--业务管理开始-->
              <@shiro.hasRole name="企业会员">
                  <div class="infoList" style="display:none;">
                      <p class="tit2">咨询对象类型</p>
                      <ul class="aply">
                          <li class="bbm">
                              <h4>科技履约贷款申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                          <li class="bbm">
                              <h4>科技小巨人贷款申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                          <li class="bbm">
                              <h4>高新技术贷款申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                          <li>
                              <h4>科技微贷通贷款申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                          <li>
                              <h4>保费补贴申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                          <li>
                              <h4>股权融资申请</h4>
                              <a href="${path}/anon/loan/guideApply?applytype=1">申请须知</a><a href="${path}/loan/onlineApply?applytype=1" class="online">在线申请</a>
                          </li>
                      </ul>
                      <div class="clear"></div>
                      <div class="grad"></div>
                      <table class="tab1" style="width:1160px;">
                          <thead>
                          <tr>
                              <th width="18.6%">我的申请记录</th>
                              <th width="16.2%">企业名称</th>
                              <th width="16.2%">融资金额/万元</th>
                              <th>所属领域</th>
                              <th>申请状态</th>
                              <th width="11.2%">状态</th>
                              <th width="11.2%">操作</th>
                          </tr>
                          </thead>
                          <tbody>
                          <tr>
                              <td>科技履约贷款申请</td>
                              <td>果果果果公司</td>
                              <td>2222</td>
                              <td>电子信息技术</td>
                              <td>2016-10-31</td>
                              <td>已提交</td>
                              <td><a href="${path}/user/toApplyRecord" target="_blank">查看</a></td>
                          </tr>
                          <tr class="even">
                              <td>科技小巨人贷款申请</td>
                              <td>果果果果公司</td>
                              <td>2222</td>
                              <td>电子信息技术</td>
                              <td>2016-10-31</td>
                              <td><span class="green">通过</span></td>
                              <td><a href="${path}/user/toApplyRecord" target="_blank">查看</a></td>
                          </tr>
                          <tr>
                              <td>高新技术贷款申请</td>
                              <td>果果果果公司</td>
                              <td>2222</td>
                              <td>电子信息技术</td>
                              <td>2016-10-31</td>
                              <td><span class="red">未通过</span></td>
                              <td><a href="${path}/user/toApplyRecord" target="_blank">查看</a></td>
                          </tr>
                          </tbody>
                      </table>
                      <div class="paging" style="width:1160px; margin-bottom:40px;">
                          <p class="fl">显示<span>1</span>至<span>5</span>条，共<span>8</span>条</p>
                          <div class="fr">每页显示行
                              <select>
                                  <option>5</option>
                                  <option>10</option>
                                  <option>15</option>
                              </select>
                              <a href="javascript:;" class="spage prevPg">&lt;</a><a href="javascript:;" class="spage nextPg">&gt;</a>
                          </div>
                      </div>
                  </div>
              </@shiro.hasRole>
                  <#--业务管理结束-->



                  <#--我要咨询开始-->
              <@shiro.hasAnyRoles name="个人会员,企业会员">
                  <div class="infoList pi" style="display:none;">
                      <form method="post" class="consult">
                          <div>
                              <span>咨询对象类型</span>
                              <select class="selOpt">
                                  <option>科技金融专员</option>
                                  <option>科技金融专员</option>
                                  <option>科技金融专员</option>
                              </select>
                          </div>
                          <div>
                              <span>我要咨询</span>
                              <textarea class="csCont" placeholder="请输入咨询问题"></textarea>
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
                              <tr>
                                  <td>系统维护通知</td>
                                  <td>2016年10月31日</td>
                                  <td>已提交</td>
                                  <td><a href="javascript:;" onClick="popCon01()">查看</a></td>
                              </tr>
                              <tr class="even">
                                  <td>版本更新通知</td>
                                  <td>2016年10月31日</td>
                                  <td>已反馈</td>
                                  <td><a href="javascript:;" onClick="popCon02()">查看</a></td>
                              </tr>
                              <tr>
                                  <td>会员贷款信息通知</td>
                                  <td>2016年10月31日</td>
                                  <td>已提交</td>
                                  <td><a href="javascript:;" onClick="popCon01()">查看</a></td>
                              </tr>
                              </tbody>
                          </table>
                          <div class="paging" style="width:960px;">
                              <p class="fl">显示<span>1</span>至<span>5</span>条，共<span>8</span>条</p>
                              <div class="fr">每页显示行
                                  <select>
                                      <option>5</option>
                                      <option>10</option>
                                      <option>15</option>
                                  </select>
                                  <a href="javascript:;" class="spage prevPg">&lt;</a><a href="javascript:;" class="spage nextPg">&gt;</a>
                              </div>
                          </div>
                      </div>
                  </div>
              </@shiro.hasAnyRoles>
                  <#--我要咨询结束-->



                  <#--我要解答开始-->
              <@shiro.hasRole name="专家会员">
                  <div class="infoList pi" style="display:none;">
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
                              <tr>
                                  <td>系统维护通知</td>
                                  <td>2016年10月31日</td>
                                  <td>已提交</td>
                                  <td><a href="javascript:;" onClick="popCon01()">查看</a></td>
                              </tr>
                              <tr class="even">
                                  <td>版本更新通知</td>
                                  <td>2016年10月31日</td>
                                  <td>已反馈</td>
                                  <td><a href="javascript:;" onClick="popCon02()">查看</a></td>
                              </tr>
                              <tr>
                                  <td>会员贷款信息通知</td>
                                  <td>2016年10月31日</td>
                                  <td>已提交</td>
                                  <td><a href="javascript:;" onClick="popCon01()">查看</a></td>
                              </tr>
                              </tbody>
                          </table>
                          <div class="paging" style="width:960px;">
                              <p class="fl">显示<span>1</span>至<span>5</span>条，共<span>8</span>条</p>
                              <div class="fr">每页显示行
                                  <select>
                                      <option>5</option>
                                      <option>10</option>
                                      <option>15</option>
                                  </select>
                                  <a href="javascript:;" class="spage prevPg">&lt;</a><a href="javascript:;" class="spage nextPg">&gt;</a>
                              </div>
                          </div>
                  </div>
              </@shiro.hasRole>
                  <#--我要解答结束-->


                  <div class="clear"></div>
              </div>
              <!--content结束-->

          </div>
      </div>

      <div class="clear"></div>
      <div class="clearfix"></div>
  </div>
  <!--自定义弹窗开始-->
  <div class="pop">
      <div class="shade"></div>
      <div class="popup">
          <a href="javascript:;" class="close">&nbsp;</a>
          <div>
              <h1>系统维护通知</h1>
              <p>通知，是向特定受文对象告知或转达有关事项或文件，让对象知道或执行的公文。通报的含义：通报适用于表彰先进，批评错误，传达重要精神或情况。通报的特点：1、内容的真实性。真实是通报的生命。通报的任何情况、事实都必须是真实的，不能有差错。2、目的的告知性。</p>
          </div>
      </div>
  </div>

<#--我要咨询弹窗-->
  <div id="test01">
      <p class="qus">问题</p>
      <p class="gray6">所谓文字，是承载语言的图像与/或符号。词语释义含义：1、文字和语言等其他工具一样，都是交流信息的工具。基本解释(1) 交流信息的工具。如汉字、拉丁字母。秦始皇统一中国后，在“琅琊山刻石”中才</p>
  </div>

  <div id="test02">
      <p class="qus">问题</p>
      <p class="gray6">所谓文字，是承载语言的图像与/或符号。词语释义含义：1、文字和语言等其他工具一样，都是交流信息的工具。基本解释(1) 交流信息的工具。如汉字、拉丁字母。秦始皇统一中国后，在“琅琊山刻石”中才 </p>
      <p class="ans">金融专家：sadasd</p>
      <textarea class="txta" readonly="readonly">所谓文字，是承载语言的图像与/或符号。词语释义含义：1、文字和语言等其他工具一样，都是交流信息的工具。基本解释(1) 交流信息的工具。如汉字、拉丁字母。秦始皇统一中国后，在“琅琊山刻石”中才第一次把文字叫做字 仓颉之初作书，盖依类象形，故谓之文，其后形声相益,即谓之字。文者物象之本,字者...</textarea>
  </div>

  <#include "website/common/footer.ftl" />
  </body>
</html>

<script type="text/javascript">
    $(document).ready(function(e) {
        if($.cookie('toConsult')){
            var tbar = $('.infoTab li');
            tbar.eq(4).addClass('active').siblings('li').removeClass('active');
            $('.infoList').eq(4).show().siblings('.infoList').hide();
            $.cookie('toConsult', null, {path: '/'});
        }

        $('.infoTab li').click(function(){
            $(this).addClass('active').siblings('li').removeClass('active');
            $('.infoList').eq($(this).index()).show().siblings('.infoList').hide();
        });

        $('.setInfo a').click(function(){
            $(this).siblings('a').hide().end().hide();
            $(this).siblings('p').html("您已"+$(this).text()).show();
        });

        //用户信息修改
        $('.mod').click(function(){
            $(this).siblings('.per').find('input').addClass('txt2').removeAttr("readonly").end().find('.upload').show();
            $(this).hide();
            $('.btnHide').show();
        });

        $('.btnHide .btnCle').click(function(){
            $('.per').find('input').removeClass('txt2').attr("readonly","readonly").end().find('.upload').hide();;
            $(this).parents(".btnHide").hide();
            $('.mod').show();
        });


        //通知通告弹窗
        $('.scan').click(function(){
            $('.pop').show();
        });

        $('.close').click(function(){
            $(this).parents('.pop').hide();
        });
    });



    function popCon01()
    {
        dialog({
            id: 'dialogPop',
            width: 440,
            padding: 20,
            title: '问题信息',
            content: document.getElementById('test01'),
            okValue: '确定',
            cancelValue: '取消',
            ok: function (){},
            cancel: function (){}
        })
                .showModal();
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