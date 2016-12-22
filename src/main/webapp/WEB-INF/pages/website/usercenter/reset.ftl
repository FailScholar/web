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
    <title>密码重置</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="bread">
                      <a href="javascript:;">首页</a>&gt;<a href="javascript:;">密码重置</a>
                  </div>
                  <div class="calt">
                      <div class="clear"></div>
                      <ul class="progress pro2">
                          <li class="li1 active"><b></b>1.填写基本信息<i></i></li>
                          <li class="li2"><b></b>2.重置密码<i></i></li>
                          <li class="li3"><b></b>3.完成</li>
                      </ul>
                      <div class="clear"></div>
                      <div class="log proList" style="width:556px;">
                          <form method="post" action="" id="saveAdminForm">
                              <div><span class="ml70">用户名：</span><input type="text" class="txt validate[required,minSize[3],maxSize[30],custom[email],ajax[ajaxAccountNumber]]" name="accountNumber" id="accountNumber"/></div>
                              <div><span class="ml57">邮箱验证：</span><input type="text" class="txt validate[required]" name="emailCaptcha" id="emailCaptcha" />
                              <div class="fr">
                              <a href="javascript:;" onclick="sendEamil()" class="ml26" id="sml26" style="margin-left: -130px;">发送验证码</a>
                              	<p id="retext" style="display:none;font-size:13px;text-indent:0px;width:150px;color:#545658;margin-left:-130px;" class="ml26">验证码<b class="second" style="font-size:13px;">15</b>分钟内可用</p>
                              </div></div>
                              <div class="tip autologin" id="tiptext" style="display:none"><span class="red">* 校验信息不匹配</span></div>
                              <div class="grad" style="width:500px;margin:0 auto;"></div>
                              <div class="logbtn"><input type="button" onclick="checkEmailInfo()" value="下一步" /></div>
                          </form>
                      </div>
                      <div class="log proList" style="display:none;">
                          <form method="post" action="" id="resetForm">
                              <div id="m170"><span class="ml70">登录帐号：</span>howhahaha@163.com</div>
                              <div><span class="ml70">&emsp;新密码：</span><input type="password" id="password" name="password" class="txt validate[required,minSize[6],maxSize[20],custom[onlyLetterNumber]" /></div>
                              <div><span class="ml70">确认密码：</span><input type="password" id="newpassword" class="txt validate[required,minSize[6],maxSize[20],funcCall[checkRepeat],custom[onlyLetterNumber]]" /></div>
                              <div class="grad" style="width:500px;margin:0 auto;"></div>
                              <div class="logbtn"><input type="button" onclick="resetPassword()" value="提交" /></div>
                          </form>
                      </div>
                      <div class="log proList pro4" style="display:none;">
                          <form method="post" action="">
                              <h1>已完成密码重置</h1>
                              <p>恭喜您，已完成密码重置！</p>
                              <p>请您进入<a href="${path}/login">登录页面</a></p>
                          </form>
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
    positionNavigation(0);
	function resetPassword() {
		var accountNumber = $("#accountNumber").val();
		var password = $("#password").val();
		if($("#password").validationEngine("validate") || $("#newpassword").validationEngine("validate")){
			return false;
		}
		
		$.post("${path}/anon/resetPassword",{"accountNumber":accountNumber,password:password},function(data){
			$('.progress li').removeClass('active').eq(2).addClass('active');
           	$(".proList").hide().eq(2).show();
		});
	}
	
	function checkEmailInfo(){
		var accountNumber = $("#accountNumber").val();
		var emailCaptcha=$("#emailCaptcha").val();
		if($("#accountNumber").validationEngine("validate") || $("#emailCaptcha").validationEngine("validate")){
			return false;
		}
		
		var emailCaptcha = $("#emailCaptcha").val();
		$.post("${path}/anon/checkEmailInfo",{"accountNumber":accountNumber,emailCaptcha:emailCaptcha},function(data){
			if(data>0){
				$("#m170").html('<span class="ml70">登录帐号：</span>'+accountNumber);
           		 $('.progress li').removeClass('active').eq(1).addClass('active');
           		 $(".proList").hide().eq(1).show();
			}else{
				$("#tiptext").show();
			}
		});
	}

	function sendEamil(){
		
		var accountNumber = $("#accountNumber").val();
		var flag1=$("#accountNumber").validationEngine("validateAjax");
		var flag = $("#accountNumber").validationEngine("validate");
		if($("#accountNumber").validationEngine("validateAjax") && $("#accountNumber").validationEngine("validate")){
			return false;
		}
		if((flag1==false) && (flag==false)){
			return false;
		}
		$("#sml26").hide();
		$("#retext").show();
		$.post("${path}/anon/sendEamil",{"accountNumber":accountNumber},function(data){
			if(data>0){
				var numSecond=900;
				var num=parseInt($('.second').text());
		        var timer = setInterval(function(){
			        numSecond--;
		            if(numSecond==0)
		            { 
		            clearInterval(timer);
		             $("#sml26").text("重新发送");
	                 $("#sml26").show();
					 $("#retext").hide();
		            }
		        },1000)
			}
		});
	}

    $(document).ready(function(e) {
        //输入框验证
        $.validationEngineLanguage.newLang();
        $.validationEngineLanguage.allRules.ajaxAccountNumber = {
       	     "url":"${path }/anon/checkAccountNumber",
       	     "extraData": "id=",
       	     "alertText":"* 账号不存在，请输入正确的邮箱！",
       	     };
        $("#saveAdminForm ,#resetForm").validationEngine({promptPosition :'bottomRight',focusFirstField:true,showOneMessage:true});
        
    });
    //输入密码验证，两次输入是否一致
    function checkRepeat(field, rules, i, options) {
        if (field.val() != $("#password").val()) {
            return "* 两次输入的密码不一致！";
        }
        return true;
    }
</script>