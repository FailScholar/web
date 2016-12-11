<#assign path=request.contextPath />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
    <link href="${path }/resource/css/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
    <#include "website/common/common.ftl" />
    <title>用户中心</title>
      <style type="text/css">
          .ifo {width:590px;}
          .per .sde { width:130px;}
      </style>
        <script type="text/javascript">

  	var imgDialog;
function ajaxFileUpload1() {  
    if($("#uploadFile").val()==''){
        alert('请选择图片上传');
        return false;
    }
    $.ajaxFileUpload({  
        url: '${path}/imageScreenshot/uploadImage?pop=1',  
        secureuri: false,  
        fileElementId: 'uploadFile',  
        dataType: 'json',  
        success: function(json, status) {
            if(json.result=='true'){
                var filePath = json.filePath;
                var width = json.width;
                var height = json.height;
                var url = '${path}/imageScreenshot/imageCrop?pop=1&filePath='+filePath+"&width="+width+"&height="+height;
                imgDialog = dialog({
					width: 600,
					height : 400,
					padding: 10,
					content: $('#dialogShow').load(url)
				});
               imgDialog.showModal();
            }else{
                alert(json.message);
            }
        },error: function (data, status, e)//服务器响应失败处理函数
        {
            alert(e);
        }
    }  
);
    return false;  
} 

function userForm(){
	$.cookie('userinfoIndex', 1, {path: '/'});
	$("#insForm").submit();
}
  </script>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="info">
                      <ul class="infoTab">
                          <li class="active"><a href="javascript:;">用户中心</a></li>
                          <li><a href="javascript:;">用户信息</a></li>
                          <li lang="${path}/message/page"><a href="javascript:;">通知通告</a></li>

                          <@shiro.hasAnyRoles name="企业会员,机构会员">
                              <li lang="${path}/business/page"><a href="javascript:;">业务管理</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasAnyRoles name="个人会员,企业会员,机构会员">
                              <li lang="${path}/communicate/page"><a href="javascript:;">我要咨询</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasRole name="专家会员">
                              <li lang="${path}/communicate/expertPage"><a href="javascript:;">我要解答</a></li>
                          </@shiro.hasRole>

                      </ul>
                      <div class="clear"></div>
                  </div>


              <#--用户中心开始-->
                  <div class="infoList pi">
                      <div class="personInfo fl">
                          <img src="${path}${user.photoPath}" alt="head" class="fl" />
                          <div class="me fr">
                              <h3>${user.username}</h3>
                              <p>用户名：${user.accountNumber}</p>
                              <p>手机号：${user.mobilePhone}</p>
                          </div>
                      </div>
                      <div class="setInfo fr">
                          <h2>申请认证</h2>
                          <@shiro.hasAnyRoles name="个人会员">
                          <#--最多显示7个，多的显示更多-->
                              <#list columnList as column>
                              	<#if (column_index <7)>
								 <a href="javascript:;">${column.columnName}</a>
							  	</#if>
							  </#list>
                              <#if (columnList?size >6)>
                              	<a href="${path}/perm/institution"><span class="bds_more">更多></span></a>
                              </#if>
                              
                              <p></p>
                          </@shiro.hasAnyRoles>
                          <@shiro.hasAnyRoles name="专家会员,机构会员">
                              您已申请成为${user.roleName}
                          </@shiro.hasAnyRoles>
                          <@shiro.hasAnyRoles name="企业会员">
                          <#--最多显示7个，多的显示更多-->
                              <#list columnList as column>
                              	<#if (column_index <7)>
								 <a href="${path}/institution/institutionApply">${column.columnName}</a>
							  	</#if>
							  </#list>
                              <#if (columnList?size >6)>
                              	<a href="${path}/perm/institution"><span class="bds_more">更多></span></a>
                              </#if>
                              <p></p>
                          </@shiro.hasAnyRoles>
                      </div>
                      <div class="clear"></div>
                  </div>
                 <#--用户中心结束-->




                  <#--用户信息开始-->
              <@shiro.hasAnyRoles name="个人会员,专家会员">
                  <div class="infoList pi" style="display:none;">
                   	<form action="${path}/user/updateUser" method="post" id="insForm">
                  	  <input type="hidden" name="id" id="userId" value="${user.id}"/>
                  	  <input type="hidden" name="photoPath" id="photoPath"/>
                      <div class="ifo">
                          <div class="per per1">
                              <span class="sde fl">头像：</span>
                              <div class="uploadImg fl">
                                  <img src="${path}${user.photoPath}" id="portrait" alt="head" width="65px"/>
                                  <div class="upload">
                                      <div></div>
                                      <input type="file" id="uploadFile" name="uploadFile" onchange="ajaxFileUpload1()"/>
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
                                  <input type="text" value="${user.accountNumber}" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">姓名：</span>
                              <div class="fl">
                                  <input type="text" value="${user.username}" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">手机：</span>
                              <div class="fl">
                                  <input type="text" value="${user.mobilePhone}" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">工作单位：</span>
                              <div class="fl">
                                  <input type="text" value="${user.jobPost}" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">所属部门：</span>
                              <div class="fl">
                                  <input type="text" value="${user.departmentName}" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="clear"></div>
                          <div class="grad"></div>
                          <input value="修 改" class="btnCom mod" type="button">
                          <div class="btnHide">
                              <input value="确 定" class="btnCom" type="button" onclick="userForm()">
                              <input value="取 消" class="btnCom btnCle" type="button">
                          </div>
                      </div>
                      </form>
                  </div>
              </@shiro.hasAnyRoles>
              <@shiro.hasAnyRoles name="企业会员,机构会员">
                  <div class="infoList pi" style="display:none;">
                  <form action="${path}/user/updateUser" method="post" id="insForm">
                  	  <input type="hidden" name="id" id="userId" value="${user.id}"/>
                  	  <input type="hidden" name="photoPath" id="photoPath"/>
                      <div class="ifo">
                          <div class="per per1">
                              <span class="sde fl">头像：</span>
                              <div class="uploadImg fl">
                                  <img src="${path}${user.photoPath}" id="portrait" alt="head" width="65px"/>
                                  <div class="upload">
                                      <div></div>
                                      <input type="file" id="uploadFile" name="uploadFile" onchange="ajaxFileUpload1()"/>
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
                                  <input type="text" value="${user.accountNumber}" readonly="readonly" class="txt"/>
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">企业名称：</span>
                              <div class="fl">
                                  <input type="text" name="username" value="${user.username}" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">联系人：</span>
                              <div class="fl">
                                  <input type="text" name="contact" value="${user.contact}" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">手机：</span>
                              <div class="fl">
                                  <input type="text" name="mobilePhone" value="${user.mobilePhone}" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">统一社会信用代码：</span>
                              <div class="fl">
                                  <input type="text" value="${user.socialCode}" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="clear"></div>
                          <div class="grad"></div>
                          <input value="修 改" class="btnCom mod" type="button">
                          <div class="btnHide">
                              <input value="确 定" class="btnCom" type="button" onclick="userForm()">
                              <input value="取 消" class="btnCom btnCle" type="button">
                          </div>
                      </div>
                      </form>
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
                          <#list messageList as message>
                          	 <tr>
                              <td>${message.title}</td>
                              <td>${(message.pushDate?string("yyyy-MM-dd HH:mm:ss"))}  </td>
                              <td><a href="javascript:showDetail(${message.id})" class="scan">查看</a></td>
                          </tr>
                          </#list>
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
              <@shiro.hasAnyRoles name="企业会员,机构会员">
                  <div class="infoList" style="display:none;">
                      <p class="tit2">贷款申请类型</p>
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
              </@shiro.hasAnyRoles>
                  <#--业务管理结束-->



                  <#--我要咨询开始-->
              <@shiro.hasAnyRoles name="个人会员,企业会员,机构会员">
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
<div id ="dialogShow"></div> 
  <#include "website/common/footer.ftl" />
  </body>
</html>

<script type="text/javascript">
    $(document).ready(function(e) {
        var tbar = $('.infoTab li');
    	var navigationIndex = $.cookie('userinfoIndex');
    	tbar.eq(navigationIndex ? Number(navigationIndex) : 0).addClass('active').siblings('li').removeClass('active');
        $('.infoList').eq(navigationIndex ? Number(navigationIndex) : 0).show().siblings('.infoList').hide();
   		$.cookie('userinfoIndex', null, {path: '/'});

        $('.infoTab li').click(function(){
	        if($(this).attr("lang")!=null) {
	        	location.href=$(this).attr("lang");
	        }else{
	        	$(this).addClass('active').siblings('li').removeClass('active');
	            $('.infoList').eq($(this).index()).show().siblings('.infoList').hide();
	        }
        });

        $('.setInfo a').click(function(){
            $(this).siblings('a').hide().end().hide();
            $(this).siblings('p').html("您已"+$(this).text()).show();
        });

        //用户信息修改
        $('.mod').click(function(){
            $(this).siblings('.per').find('input').addClass('txt2').removeAttr("readonly").end().find('.upload').show();
            $(this).hide();
            $(this).siblings('.per').find('input').eq(1).removeClass('txt2').attr("readonly","readonly")
            $(this).siblings('.per').find('input').eq(5).removeClass('txt2').attr("readonly","readonly")
            $('.btnHide').show();
        });

        $('.btnHide .btnCle').click(function(){
            $('.per').find('input').removeClass('txt2').attr("readonly","readonly").end().find('.upload').hide();;
            $(this).parents(".btnHide").hide();
            $('.mod').show();
        });
        $('.close').click(function(){
            $(this).parents('.pop').hide();
        });
    });
    
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