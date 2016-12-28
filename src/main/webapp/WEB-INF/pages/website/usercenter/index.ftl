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

function applyInstitution(columnId){
		$.post("${path}/institution/checkApply",function(msg){
			if(msg != ""){
				dialog.tipsPop('ban-pop','提示',msg,'确定');
			}else{
				$(".content").load("${path}/anon/institutionGuide",{columnId: columnId});
			}
		});
	}
	function goUrl(url){
		location.href=url;
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
                          <li onclick="goUrl('${path}/message/page')"><a href="javascript:;">通知通告</a></li>

                          <@shiro.hasAnyRoles name="企业会员,机构会员">
                              <li onclick="goUrl('${path}/business/page')"><a href="javascript:;">业务管理</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasAnyRoles name="个人会员,企业会员,机构会员">
                              <li onclick="goUrl('${path}/communicate/page')"><a href="javascript:;">我要咨询</a></li>
                          </@shiro.hasAnyRoles>

                          <@shiro.hasRole name="专家会员">
                              <li onclick="goUrl('${path}/communicate/expertPage')"><a href="javascript:;">我要解答</a></li>
                          </@shiro.hasRole>

                      </ul>
                      <div class="clear"></div>
                  </div>


              <#--用户中心开始-->
                  <div class="infoList pi">
                      <div class="personInfo fl">
                      <#if (user.photoPath??)>
                          <img src="${path}${user.photoPath}" alt="head" class="fl" width="200px" height="200px"/>
                      <#else>
                      	<img src="${path}/resource/images/head.jpg" alt="head" class="fl" width="200px" height="200px"/>
                      </#if>
                          <div class="me fr">
                              <h3>${user.username}</h3>
                              <p>用户名：${user.accountNumber}</p>
                              <p>手机号：${user.mobilePhone}</p>
                          </div>
                      </div>
                      <div class="setInfo fr">
                          <h2>申请认证</h2>
                          <@shiro.hasAnyRoles name="个人会员">
                          <#if businessApplayAudit.parentType=='3' && businessApplayAudit.state==0>
                          	您已申请认证成为${column.columnName}，申请材料正在审核中
                          <#else>
                          <#--最多显示7个，多的显示更多-->
                              <#list columnList as column>
                              	<#if (column_index <7)>
								 <a href="${path}/expert/expertGuide?columnId=${column.id}">${column.columnName}</a>
							  	</#if>
							  </#list>
                              <#if (columnList?size >6)>
                              	<a href="${path}/perm/expert"><span class="bds_more">更多></span></a>
                              </#if>
                              </#if>
                              <p></p>
                          </@shiro.hasAnyRoles>
                          <@shiro.hasAnyRoles name="专家会员,机构会员">
                              您已申请认证成为${user.roleName}
                          </@shiro.hasAnyRoles>
                          <@shiro.hasAnyRoles name="企业会员">
                          <#if businessApplayAudit.parentType=='2' && businessApplayAudit.state==0>
                          	您已申请认证成为${column.columnName}，申请材料正在审核中
                          <#else>
                          <#--最多显示7个，多的显示更多-->
                              <#list columnList as column>
                              	<#if (column_index <7)>
								 <a href="javascript:applyInstitution(${column.id});">${column.columnName}</a>
							  	</#if>
							  </#list>
                              <#if (columnList?size >6)>
                              	<a href="${path}/perm/institution"><span class="bds_more">更多></span></a>
                              </#if>
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
                  	  <input type="hidden" name="photoPath" id="userlogo" value="${user.photoPath}"/>
                  	  <input type="hidden" id="imgsrc" value="${user.photoPath}"/>
                      <div class="ifo">
                          <div class="per per1">
                              <span class="sde fl">头像：</span>
                              <div class="uploadImg fl">
                              	<#if (user.photoPath??)>
			                         <img src="${path}${user.photoPath}" id="portrait" alt="head" width="65px" height="65px"/>
			                      <#else>
			                      <img src="${path}/resource/images/head.jpg" id="portrait" alt="head" width="65px" height="65px"/>
			                      </#if>
                                  
                                  <div class="upload">
                                      <div></div>
                                      <input type="file" id="uploadFile" name="uploadFile" onchange="ajaxFileUpload1()" accept=".jpg,.png,.gif"/>
                                  </div>
                              </div>
                              <div class="tip fl">
                                  <p><span class="red">*</span>建议尺寸200px*200px</p>
                                  <p><span class="red">*</span>支持JPG、PNG、JPEG格式</p>
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
                                  <input type="text" name="username" value="${user.username}" readonly="readonly" class="txt validate[required,minSize[2],maxSize[16]]" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">手机：</span>
                              <div class="fl">
                                  <input type="text" name="mobilePhone" value="${user.mobilePhone}" readonly="readonly" class="txt validate[required,custom[mobile]]" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">工作单位：</span>
                              <div class="fl">
                                  <input type="text" name="jobPost" value="${user.jobPost}" readonly="readonly" class="txt validate[required,minSize[2],maxSize[50]]" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">所属部门：</span>
                              <div class="fl">
                                  <input type="text" name="departmentName" value="${user.departmentName}" readonly="readonly" class="txt validate[required,minSize[2],maxSize[50]]" />
                              </div>
                          </div>
                          <div class="clear"></div>
                          <div class="grad"></div>
                          <input value="修 改" class="btnCom mod" type="button" lang="0">
                          <div class="btnHide">
                              <input value="确 定" class="btnCom" type="button" onclick="userForm()">
                              <input value="取 消" class="btnCom btnCle" type="reset">
                          </div>
                      </div>
                      </form>
                  </div>
              </@shiro.hasAnyRoles>
              <@shiro.hasAnyRoles name="企业会员,机构会员">
                  <div class="infoList pi" style="display:none;">
                  <form action="${path}/user/updateUser" method="post" id="insForm">
                  	  <input type="hidden" name="id" id="userId" value="${user.id}"/>
                  	  <input type="hidden" name="photoPath" id="userlogo" value="${user.photoPath}"/>
                      <input type="hidden" id="imgsrc" value="${user.photoPath}"/>
                      <div class="ifo">
                          <div class="per per1">
                              <span class="sde fl">企业logo：</span>
                              <div class="uploadImg fl">
                                  <#if (user.photoPath??)>
			                         <img src="${path}${user.photoPath}" id="portrait" alt="head" width="65px" height="65px"/>
			                      <#else>
			                      <img src="${path}/resource/images/head.jpg" id="portrait" alt="head" width="65px" height="65px"/>
			                      </#if>
                                  <div class="upload">
                                      <div></div>
                                      <input type="file" id="uploadFile" name="uploadFile" onchange="ajaxFileUpload1()"/>
                                  </div>
                              </div>
                              <div class="tip fl">
                                  <p><span class="red">*</span>建议尺寸200px*200px</p>
                                  <p><span class="red">*</span>支持JPG、JPEG、PNG格式</p>
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
                                  <input type="text" name="username" id="username" value="${user.username}" readonly="readonly" class="txt validate[required,minSize[2],maxSize[16]]" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">联系人：</span>
                              <div class="fl">
                                  <input type="text" name="contact" value="${user.contact}" readonly="readonly" class="txt validate[required,minSize[2],maxSize[16]]" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl">手机：</span>
                              <div class="fl">
                                  <input type="text" name="mobilePhone" value="${user.mobilePhone}" readonly="readonly" class="txt validate[required,custom[mobile]]" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl" style="width:130px">统一社会信用代码：</span>
                              <div class="fl">
                                  <input type="text" value="${user.socialCode}" readonly="readonly" class="txt" style="width:220px"/>
                              </div>
                          </div>
                          <div class="clear"></div>
                          <div class="grad"></div>
                          <input value="修 改" class="btnCom mod" type="button" lang="1">
                          <div class="btnHide">
                              <input value="确 定" class="btnCom" type="button" onclick="userForm()">
                              <input value="取 消" class="btnCom btnCle" type="reset">
                          </div>
                      </div>
                      </form>
                  </div>
              </@shiro.hasAnyRoles>
                  <#--用户信息结束-->









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
	var infoTab_li_index = [0];
    positionNavigation(0);
    $(document).ready(function(e) {
    	
    	$("#insForm").validationEngine('attach', {
            promptPosition: "bottomRight:-10", scroll: false,focusFirstField:true,showOneMessage:true
        }); 
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


        //用户信息修改
        $('.mod').click(function(){
            $(this).siblings('.per').find('input').addClass('txt2').removeAttr("readonly").end().find('.upload').show();
            $(this).hide();
            $(this).siblings('.per').find('input').eq(1).removeClass('txt2').attr("readonly","readonly")
            var num = $(this).attr("lang");
            if(num=="1") {
				$(this).siblings('.per').find('input').eq(5).removeClass('txt2').attr("readonly","readonly")
            }
            
            $('.btnHide').show();
        });

        $('.btnHide .btnCle').click(function(){
        	$(".formError").remove();
        	var imgsrc = "${path}"+$("#imgsrc").val();
        	$("#portrait").attr("src",imgsrc);
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