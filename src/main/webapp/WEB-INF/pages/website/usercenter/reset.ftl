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
                      <div class="log proList">
                          <form method="post" action="">
                              <div><span class="ml70">用户名：</span><input type="text" class="txt" /></div>
                              <div><span class="ml57">邮箱验证：</span><input type="text" class="txt" /><div class="fr"><a href="javascript:;" class="ml26 fr">发送验证码</a></div></div>
                              <div class="tip autologin"><span class="red">* 校验信息不匹配</span></div>
                              <div class="grad" style="width:500px;margin:0 auto;"></div>
                              <div class="logbtn"><input type="button" value="下一步" /></div>
                          </form>
                      </div>
                      <div class="log proList" style="display:none;">
                          <form method="post" action="">
                              <div><span class="ml70">登录帐号：</span>howhahaha@163.com</div>
                              <div><span class="ml70">&emsp;新密码：</span><input type="password" class="txt" /></div>
                              <div><span class="ml70">确认密码：</span><input type="password" class="txt" /></div>
                              <div class="grad" style="width:500px;margin:0 auto;"></div>
                              <div class="logbtn"><input type="button" value="提交" /></div>
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
    $(document).ready(function(e) {
        $('.proList .logbtn input').click(function(){
            var index=$(this).parents('.proList').index()-3;
            $('.progress li').removeClass('active').eq(index).addClass('active');
            $(this).parents('.proList').hide().next('.proList').show();
        });
    });
</script>