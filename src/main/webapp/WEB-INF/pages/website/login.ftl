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
    <title>吉林省科技金融信息服务平台</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>

              <!--content开始-->
              <div class="content">
                  <div class="bread">
                      <a href="${path}/index">首页</a>&gt;<a href="${path}/login">登录</a>
                  </div>
                  <div class="calt">
                      <p><span class="fr">还没有账号？<a href="${path}/anon/regist/toRegistPage" class="login2 blue">注册</a></span></p>
                      <div class="clear"></div>
                      <div class="log">
                          <form id="loginForm" method="post" action="${path}/login">
                              <div>用户名：<input placeholder="请输入您的邮箱账号" id="username" name="username" type="text" class="txt validate[required,custom[email]]" value=""/></div>
                              <div>密&emsp;码：<input placeholder="请输入您的密码" id="password" name="password" type="password" class="txt validate[required,minSize[6],maxSize[16],custom[userLoginPassword]]" value=""/></div>
                              <input type="hidden" id="identity" name="identity" value="user"/>
                              <div>验证码：<input placeholder="请输入验证码" id="captcha" name="captcha" type="text" class="txt txt1 validate[required,minSize[4],maxSize[4],custom[onlyLetterNumber]]" /><div class="fr" style="margin-right : 120px"><img draggable="false" id="validateCodeImg" style="border-radius: 10px;cursor: hand" title="看不清楚" src="${path}/anon/getPngCode?" onclick="refreshCode()" /></div></div>
                              <div class="autologin"><label style="white-space: nowrap"><input type="checkbox" id="rememberMe" name="rememberMe" value="enabled"/>下次自动登陆 <span class="blue">&nbsp;&nbsp;&nbsp;使用公用电脑勿勾选</span></label></div>
                              <div class="logbtn"><input id="login" type="submit" value="登 录" /></div>
                              <div class="findsct"><a href="${path}/anon/toResetPage" class="fl">企业用户找回密码</a><a href="${path}/anon/toResetPage" class="fr">个人用户找回密码</a></div>
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
    function refreshCode() {
        document.getElementById("validateCodeImg").src = "${path}/anon/getPngCode?" + Math.random();
    }

    $(function () {
        $("#loginForm").validationEngine('attach', {promptPosition :'bottomRight',scroll: true});
        //login fail message
        if('${message}'){
            showWin('${message}');
        }
    });
    //网页内按下回车触发
    document.onkeydown = function () {
        if (event.keyCode == 13) {
            $("#login").click();
            return false;
        }
    };

    function showWin(info){
        dialog.tipsPop('ban-pop','提示:',info,'确定')
    }
</script>