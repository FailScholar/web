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
    <link rel="stylesheet" type="text/css" href="${path}/resource/css/css.css" />
    <link rel="stylesheet" type="text/css" href="${path}/resource/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="${path}/resource/css/ui-dialog.css" />
    
    <script type="text/javascript" src="${path}/resource/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="${path}/resource/js/dialog-plus.js"></script>
<script type="text/javascript" src="${path}/resource/js/js.js"></script>
<#--commonjs-->
<script type="text/javascript" src="${path}/resource/js/common.js"></script>
<#--validationEngine-->
<link rel="stylesheet" type="text/css" href="${path}/resource/plugins/validationengine/css/validationEngine.jquery.css" />
<script type="text/javascript" src="${path}/resource/plugins/validationengine/js/jquery.validationEngine.js"></script>
<script type="text/javascript" src="${path}/resource/plugins/validationengine/js/jquery.validationEngine-zh_CN.js"></script>

<script type="text/javascript" src="${path }/resource/js/jquery-ui-1.10.4.custom.min.js"></script>
<script type="text/javascript" src="${path }/resource/js/jquery.cropzoom.js"></script>
<script type="text/javascript" src="${path }/resource/js/ajaxfileupload.js"></script>
    <title>用户中心</title>
      <style type="text/css">
          .ifo {width:590px;}
          .per .sde { width:130px;}
      </style>
      <script type="application/javascript">
    var path = '${path}';
</script>
        <script type="text/javascript">

  	var imgDialog;
function ajaxFileUpload1() {  
	$("#dialogShow").html("");
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
	function goMain(flag){
		 $.cookie('userinfoIndex', flag, {path: '/'});
		 window.location.href = "${path}/main"
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
                          <li onclick="goMain(0)"><a href="javascript:goMain(0);">用户中心</a></li>
                          <li  class="active"><a href="javascript:;">用户信息</a></li>
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

                  <#--用户信息开始-->
              <@shiro.hasAnyRoles name="个人会员,专家会员">
                  <div class="infoList pi">
                   	<form action="${path}/user/updateUser" method="post" id="insForm">
                  	  <input type="hidden" name="id" id="userId" value="${user.id}"/>
                  	  <input type="hidden" name="photoPath" id="userlogo" value="${user.photoPath}"/>
                  	  <input type="hidden" id="imgsrc" value="${user.photoPath!'/resource/images/head.jpg'}"/>
                      <div class="ifo">
                          <div class="per per1">
                              <span class="sde fl"  style="width:130px;">头像：</span>
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
                              <span class="sde fl"  style="width:130px;">用户邮箱：</span>
                              <div class="fl">
                                  <input type="text" value="${user.accountNumber}" title="${user.accountNumber}" readonly="readonly" class="txt" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl"  style="width:130px;">姓名：</span>
                              <div class="fl">
                                  <input type="text" name="username" value="${user.username}" readonly="readonly" class="txt validate[required,minSize[2],maxSize[16]]" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl"  style="width:130px;">手机：</span>
                              <div class="fl">
                                  <input type="text" name="mobilePhone" value="${user.mobilePhone}" readonly="readonly" class="txt validate[required,custom[mobile]]" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl"  style="width:130px;">工作单位：</span>
                              <div class="fl">
                                  <input type="text" name="jobPost" value="${user.jobPost}" readonly="readonly" class="txt validate[required,minSize[2],maxSize[100]]" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl"  style="width:130px;">所属部门：</span>
                              <div class="fl">
                                  <input type="text" name="departmentName" value="${user.departmentName}" readonly="readonly" class="txt validate[required,minSize[2],maxSize[100]]" />
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
                  <div class="infoList pi">
                  <form action="${path}/user/updateUser" method="post" id="insForm">
                  	  <input type="hidden" name="id" id="userId" value="${user.id}"/>
                  	  <input type="hidden" name="photoPath" id="userlogo" value="${user.photoPath}"/>
                      <input type="hidden" id="imgsrc" value="${user.photoPath!'/resource/images/head.jpg'}"/>
                      <div class="ifo" style="width:590px">
                          <div class="per per1">
                              <span class="sde fl" style="width:130px;">企业logo：</span>
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
                              <span class="sde fl"  style="width:130px;">用户邮箱：</span>
                              <div class="fl">
                                  <input type="text" value="${user.accountNumber}" title="${user.accountNumber}" readonly="readonly" class="txt"/>
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl"  style="width:130px;">企业名称：</span>
                              <div class="fl">
                                  <input type="text" name="username" id="username" value="${user.username}" readonly="readonly" class="txt validate[required,minSize[2],maxSize[16]]" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl"  style="width:130px;">联系人：</span>
                              <div class="fl">
                                  <input type="text" name="contact" value="${user.contact}" readonly="readonly" class="txt validate[required,minSize[2],maxSize[16]]" />
                              </div>
                          </div>
                          <div class="per">
                              <span class="sde fl"  style="width:130px;">手机：</span>
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
    $(document).ready(function(e) {
    	
    	$("#insForm").validationEngine('attach', {
            promptPosition: "bottomRight:-10", scroll: false,focusFirstField:true,showOneMessage:true
        }); 
        var tbar = $('.infoTab li');

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
        	if(imgsrc == "${path}"){
        	  imgsrc = "${path}/resource/images/head.jpg";
        	}
        	$("#portrait").attr("src",imgsrc);
            $('.per').find('input').removeClass('txt2').attr("readonly","readonly").end().find('.upload').hide();;
            $(this).parents(".btnHide").hide();
            $('.mod').show();
        });
        $('.close').click(function(){
            $(this).parents('.pop').hide();
        });
    });
    
      
</script>