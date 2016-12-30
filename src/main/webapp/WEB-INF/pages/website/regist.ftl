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
    <title>吉林省科技金融信息服务平台在线注册</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="blist">
                      <ul>
                          <li class="active">注册企业用户</li>
                          <li>注册个人用户</li>
                      </ul>
                      <div class="clear"></div>
                  </div>
                  <div class="calt">
                      <p><span class="fr">已有账号？<a href="${path}/login" class="login2 blue">登录</a></span></p>
                      <div class="clear"></div>
                      <ul class="progress pro3">
                          <li class="li1 active"><b></b>1.填写基本信息<i></i></li>
                          <li class="li2"><b></b>2.邮箱验证<i></i></li>
                          <li class="li3"><b></b>3.完成</li>
                      </ul>
                      <div class="clear"></div>
                      <div class="log proList log2">
                          <form id="comForm" method="post">
                              <input type="hidden" name="type" value="2">
                              <div class="regdiv"><span class="ml70"><span class="red">&emsp;&emsp;*</span>用户名：</span><input id="accountNumber1" name="accountNumber" maxlength="50" type="text" class="txt" placeholder="输入邮箱作为您的用户名" onBlur="validEmail('#accountNumber1',false)"/></div>
                              <div class="regdiv"><span class="ml70"><span class="red">*</span>请输入密码：</span><input id="bpassword1" type="password" class="txt" placeholder="密码" onBlur="validPassword('#bpassword1',false)"/></div>
                              <div class="regdiv"><span class="ml70"><span class="red">*</span>请确认密码：</span><input id="password1" name="password" type="password" class="txt" placeholder="确认密码" onBlur="repeatPassword('#bpassword1','#password1',false)"/></div>
                              <div class="regdiv"><span class="ml70"><span class="red">&emsp;*</span>企业名称：</span><input id="username1" name="username" type="text" class="txt" placeholder="输入企业名称" onBlur="validComName('#username1',false)"/></div>
                              <div class="regdiv"><span class="ml70"><span class="red">&emsp;&emsp;*</span>联系人：</span><input id="contact" name="contact" type="text" class="txt" placeholder="输入联系人" onBlur="validUsername('#contact',false)"/></div>
                              <div class="regdiv"><span class="ml70" style="margin-left:28px;"><span class="red">*</span>统一社会信用代码：</span><input id="socialCode" name="socialCode" type="text" class="txt" placeholder="统一社会信用代码" onBlur="validSocialCode('#socialCode',false)"/></div>
                              <div class="regdiv"><span class="ml70"><span class="red">&emsp;&emsp;&emsp;*</span>手机：</span><input id="mobilePhone1" name="mobilePhone" type="text" class="txt" placeholder="请输入手机号码" onBlur="validMobilePhone('#mobilePhone1',false)"/></div>
                              <div class="code">验证码：<input id="captcha1" name="captcha" type="text" class="txt txt1 validate[required,minSize[4],maxSize[4],custom[onlyLetterNumber]]" placeholder="请输入验证码" /><div class="fr" style="margin-right: 120px;"><img draggable="false" id="validateCodeImg1" style="border-radius: 10px;cursor: hand" title="看不清楚" src="${path}/anon/getPngCode?" onclick="refreshCode('validateCodeImg1')" /></div></div>
                              <div class="autologin"><label style="white-space: nowrap"><input type="checkbox" name="agree" class="validate[required] "/>同意“<a href="${path}/anon/about?to=0" target="_blank">用户服务条款</a>”和“<a href="${path}/anon/about?to=3" target="_blank">隐私权相关政策</a>”</label></div>
                              <div class="grad" style="width:500px;margin:0 auto;"></div>
                              <div class="logbtn"><input type="button" id="comFormButton" value="下一步" onclick="comFormSubmit()"/></div>
                          </form>
                      </div>
                      <div class="log proList" style="display:none;">
                          <form id="comCheckForm" method="post">
                              <div class="mail">
                                  <h2>邮箱验证</h2>
                                  <p>感谢注册！验证邮件已经发送至您的邮箱：<span id="checkEmail1" class="blue"></span>。<br />请进入邮箱查看邮件并验证激活账号!</p>
                                  <div class="check"><span>邮箱验证：</span><input type="hidden" id="userId1" name="id" value=""><input name="emailCaptcha" type="text" class="txt validate[required]" /><span>（验证码<font class="blue">30分钟</font>内有效）</span></div>
                                  <div class="logbtn"><input id="comCheckFormButton" type="button" value="确定" onclick="comCheckFormSubmit()" /></div>
                              </div>
                          </form>
                          <div class="tips">
                              <p>没有收到邮件？</p>
                              <p>1.检查您的邮件垃圾箱。</p>
                              <p>2.若仍未收到确认，请尝试<a href="javascript:;" onclick="repeatSendEmail($('#checkEmail1').attr('lang'))">重新发送</a>。</p>

                          </div>
                      </div>
                      <div class="log proList pro4" style="display:none;">
                          <form method="post" action="">
                              <h1>已完成注册</h1>
                              <p>恭喜您，已完成企业注册！</p>
                              <p>请您进入<a href="${path}/login">登录页面</a></p>
                          </form>
                      </div>
                  </div>

                  <div class="calt" style="display:none;">
                      <p><span class="fr">已有账号？<a href="${path}/login" class="login2 blue">登录</a></span></p>
                      <div class="clear"></div>
                      <ul class="progress pro3">
                          <li class="li1 active"><b></b>1.填写基本信息<i></i></li>
                          <li class="li2"><b></b>2.邮箱验证<i></i></li>
                          <li class="li3"><b></b>3.完成</li>
                      </ul>
                      <div class="clear"></div>
                      <div class="log proList log2">
                          <form id="userForm" method="post">
                              <input type="hidden" name="type" value="1">
                              <div class="regdiv"><span class="ml70"><span class="red">&emsp;&emsp;*</span>用户名：</span><input id="accountNumber" name="accountNumber" maxlength="50" placeholder="输入邮箱作为您的用户名" type="text" class="txt" onBlur="validEmail('#accountNumber',true)"/></div>
                              <div class="regdiv"><span class="ml70"><span class="red">*</span>请输入密码：</span><input id="bpassword" type="password" class="txt" placeholder="密码" onBlur="validPassword('#bpassword',true)"/></div>
                              <div class="regdiv"><span class="ml70"><span class="red">*</span>请确认密码：</span><input id="password" type="password" name="password" class="txt" placeholder="确认密码" onBlur="repeatPassword('#bpassword','#password',true)"/></div>
                              <div class="regdiv"><span class="ml70"><span class="red">&emsp;&emsp;&emsp;*</span>姓名：</span><input id="username" name="username" type="text" class="txt" placeholder="请输入您的姓名" onBlur="validUsername('#username',true)"/></div>
                              <div class="regdiv"><span class="ml70"><span class="red">&emsp;*</span>工作单位：</span><input id="jobPost" name="jobPost" type="text" class="txt" placeholder="请输入工作单位" onBlur="validJobPost('#jobPost',true)"/></div>
                              <div class="regdiv"><span class="ml70"><span class="red">&emsp;*</span>所属部门：</span><input id="departmentName" name="departmentName" type="text" class="txt" placeholder="请输入部门名称" onBlur="validDepartmentName('#departmentName',true)"/></div>
                              <div class="regdiv"><span class="ml70"><span class="red">&emsp;&emsp;&emsp;*</span>手机：</span><input id="mobilePhone" name="mobilePhone" type="text" class="txt" placeholder="请输入手机号码" onBlur="validMobilePhone('#mobilePhone',true)"/></div>
                              <div class="code">验证码：<input id="captcha" name="captcha" type="text" class="txt txt1 validate[required,minSize[4],maxSize[4],custom[onlyLetterNumber]]" placeholder="请输入验证码"/><div class="fr" style="margin-right: 120px;"><img draggable="false" id="validateCodeImg2" style="border-radius: 10px;cursor: hand" title="看不清楚" src="${path}/anon/getPngCode?" onclick="refreshCode('validateCodeImg2')" /></div></div>
                              <div class="autologin"><label style="white-space: nowrap"><input type="checkbox" name="agree" class="validate[required] "/>同意“<a href="${path}/anon/about?to=0" target="_blank">用户服务条款</a>”和“<a href="${path}/anon/about?to=3" target="_blank">隐私权相关政策</a>”</label></div>
                              <div class="grad" style="width:500px;margin:0 auto;"></div>
                              <div class="logbtn"><input type="button" id="userFormButton" value="下一步" onclick="userFormSubmit()"/></div>
                          </form>
                      </div>
                      <div class="log proList" style="display:none;">
                          <form id="userCheckForm" method="post">
                              <div class="mail">
                                  <h2>邮箱验证</h2>
                                  <p>感谢注册！验证邮件已经发送至您的邮箱：<span id="checkEmail" class="blue"></span>。<br />请进入邮箱查看邮件并验证激活账号!</p>
                                  <div class="check"><span>邮箱验证：</span><input type="hidden" id="userId" name="id" value=""><input name="emailCaptcha" type="text" class="txt validate[required]" /><span>（验证码<font class="blue">30分钟</font>内有效）</span></div>
                                  <div class="logbtn"><input id="userCheckFormButton" type="button" value="确定" onclick="userCheckFormSubmit()"/></div>
                              </div>
                          </form>
                          <div class="tips">
                              <p>没有收到邮件？</p>
                              <p>1.检查您的邮件垃圾箱。</p>
                              <p>2.若仍未收到确认，请尝试<a href="javascript:;" onclick="repeatSendEmail($('#checkEmail').attr('lang'))">重新发送</a>。</p>

                          </div>
                      </div>
                      <div class="log proList pro4" style="display:none;">
                              <h1>已完成注册</h1>
                              <p>恭喜您，已完成个人注册！</p>
                              <p>请您进入<a href="${path}/login">登录页面</a></p>
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
    var path = '${path}';
    var userFormValid = {};
    var comFormValid = {};

    function iterMap(map) {
        if(Object.getOwnPropertyNames(map).length < 7){
            return false;
        }else{
            for(var prop in map){
                if(map.hasOwnProperty(prop)){
                    if(map[prop] == 0){
                        return false;
                    }
                }
            }
        }
        return true;
    }
    $(document).ready(function(e) {
        var cur=0;
        $('.blist li').click(function(){
            cur=$(this).index();
            $(this).addClass('active').siblings('li').removeClass('active');
            $('.calt').eq($(this).index()).show().siblings('.calt').hide();
        });
    });

    function comCheckFormSubmit() {
        $.ajax({
            url: path +'/anon/regist/registCheckEmailInfo',
            data:$('#comCheckForm').serialize(),
            type:"POST",
            success:function(msg){
                var json = jQuery.parseJSON(msg);
                if(!json.success){
                    dialog.tipsPop('ban-pop','提示:',json.message,'确定')
                }else {
                    var index = $('#comCheckFormButton').parents('.proList').index() - 3;
                    $('.progress').eq(0).find('li').removeClass('active').eq(index).addClass('active');
                    $('#comCheckFormButton').parents('.proList').hide().next('.proList').show();
                }
            }
        });
    }

    function userCheckFormSubmit() {
        $.ajax({
            url: path +'/anon/regist/registCheckEmailInfo',
            data:$('#userCheckForm').serialize(),
            type:"POST",
            success:function(msg){
                var json = jQuery.parseJSON(msg);
                if(!json.success){
                    dialog.tipsPop('ban-pop','提示:',json.message,'确定')
                }else {
                    var index = $('#userCheckFormButton').parents('.proList').index() - 3;
                    $('.progress').eq(1).find('li').removeClass('active').eq(index).addClass('active');
                    $('#userCheckFormButton').parents('.proList').hide().next('.proList').show();
                }
            }
        });
    }



    /*点击下一步按钮*/
    function userFormSubmit() {
            if(!iterMap(userFormValid)){
                dialog.tipsPop('ban-pop','提示:','请检查您填写的信息是否有误','确定');
                return false;
            }
            if(!$('#userForm').validationEngine('validate')){
                return false
            } else {
                waitDialog.showModal();
                $.ajax({
                    url: path +'/anon/regist/registBaseInfo',
                    data:$('#userForm').serialize(),
                    type:"POST",
                    success:function(msg){
                        waitDialog.close();
                        var json = jQuery.parseJSON(msg);
                        if(!json.success){
                            dialog.tipsPop('ban-pop','提示:',json.message,'确定')
                            refreshCode('validateCodeImg2')
                        }else {
                            var email = json.email;
                            $("#checkEmail").html(email);
                            $("#checkEmail").attr('lang',json.id);
                            $("#userId").val(json.id)
                            var index = $('#userFormButton').parents('.proList').index() - 3;
                            $('.progress').eq(1).find('li').removeClass('active').eq(index).addClass('active');
                            $('#userFormButton').parents('.proList').hide().next('.proList').show();
                        }
                    }
                });
            }
    }


    function comFormSubmit() {
        if(!iterMap(comFormValid)){
            dialog.tipsPop('ban-pop','提示:','请检查您填写的信息是否有误','确定');
            return false;
        }
        if(!$('#comForm').validationEngine('validate')){
            return false
        } else {
            waitDialog.showModal();
            $.ajax({
                url: path +'/anon/regist/registBaseInfo',
                data:$('#comForm').serialize(),
                type:"POST",
                success:function(msg){
                    waitDialog.close();
                    var json = jQuery.parseJSON(msg);
                    if(!json.success){
                        dialog.tipsPop('ban-pop','提示:',json.message,'确定')
                        refreshCode('validateCodeImg1')
                    }else {
                        var email = json.email;
                        $("#checkEmail1").html(email);
                        $("#checkEmail1").attr('lang',json.id);
                        $("#userId1").val(json.id)
                        var index = $('#comFormButton').parents('.proList').index() - 3;
                        $('.progress').eq(0).find('li').removeClass('active').eq(index).addClass('active');
                        $('#comFormButton').parents('.proList').hide().next('.proList').show();
                    }
                }
            });
        }
    }

    $(function () {
        $("#userForm").validationEngine('attach', {promptPosition :'bottomRight'});
        $("#comForm").validationEngine('attach', {promptPosition :'bottomRight'});
        $("#userCheckForm").validationEngine('attach', {promptPosition :'bottomRight'});
        $("#comCheckForm").validationEngine('attach', {promptPosition :'bottomRight'});
    });

    function validEmail(id,val) {
        var emailReg = /^[a-zA-Z0-9_\.\-]+\@([a-zA-Z0-9\-]+\.)+[a-zA-Z0-9]{2,4}$/;
        var dom = $(id);
        if (!emailReg.test(dom.val()) || dom.val().length < 5 ||dom.val().length >50) {
            dom.removeClass().addClass('txt txtred');
            dom.next().remove();
            dom.after('<span class="ml10 red">* 无效的邮箱地址</span>');
            if(val){
                userFormValid['validEmail'] = 0;
            }
            comFormValid['validEmail'] = 0;
        } else {
            $.ajax({
                type: 'POST',
                url: path + '/anon/regist/validEmail',
                data: {email: dom.val()},
                success: function (msg) {
                    var json = jQuery.parseJSON(msg);
                    if (!json.success) {
                        dom.removeClass().addClass('txt txtgreen');
                        dom.next().remove();
                        dom.after('<span class="ml10 pass">&nbsp;</span>');
                        if(val){
                            userFormValid['validEmail'] = 1;
                        }
                        comFormValid['validEmail'] = 1;
                    } else {
                        if(val){
                            userFormValid['validEmail'] = 0;
                        }
                        comFormValid['validEmail'] = 0;
                        dom.removeClass().addClass('txt txtred');
                        dom.next().remove();
                        dom.after('<span class="ml10 red">* 该邮箱已被注册</span>');
                    }
                }
            });
        }
    }

    function validPassword(id,val) {
        var passwordReg = /^[0-9a-zA-Z]+$/;
        var dom = $(id);
        if(!passwordReg.test(dom.val()) || dom.val().length <6 ||dom.val().length >16){
            dom.removeClass().addClass('txt txtred');
            dom.next().remove();
            dom.after('<span class="ml10 red">* 6-16个字符且只能为英文或数字</span>');
            if(val){
                userFormValid['validPassword'] = 0;
            }
            comFormValid['validPassword'] = 0;
        }else {
            dom.removeClass().addClass('txt txtgreen');
            dom.next().remove();
            dom.after('<span class="ml10 pass">&nbsp;</span>');
            if(val){
                userFormValid['validPassword'] = 1;
            }
            comFormValid['validPassword'] = 1;
        }
    }

    function repeatPassword(id1,id2,val) {
        var password = $(id1).val();
        var dom = $(id2);
        if(password==dom.val() && dom.val().length >= 6 && dom.val().length <= 16){
            dom.removeClass().addClass('txt txtgreen');
            dom.next().remove();
            dom.after('<span class="ml10 pass">&nbsp;</span>');
            if(val){
                userFormValid['repeatPassword'] = 1;
            }
            comFormValid['repeatPassword'] = 1;
        }else{
            dom.removeClass().addClass('txt txtred');
            dom.next().remove();
            dom.after('<span class="ml10 red">* 2次密码不一致</span>');
            if(val){
                userFormValid['repeatPassword'] = 0;
            }
            comFormValid['repeatPassword'] = 0;
        }
    }

    function validJobPost(id,val) {
        var dom = $(id);
        if(dom.val().length <= 100 && dom.val().length >= 1){
            dom.removeClass().addClass('txt txtgreen');
            dom.next().remove();
            dom.after('<span class="ml10 pass">&nbsp;</span>');
            if(val){
                userFormValid['validJobPost'] = 1;
            }
            comFormValid['validJobPost'] = 1;
        }else {
            dom.removeClass().addClass('txt txtred');
            dom.next().remove();
            dom.after('<span class="ml10 red">* 1-100个字符</span>');
            if(val){
                userFormValid['validJobPost'] = 0;
            }
            comFormValid['validJobPost'] = 0;
        }
    }
    
    function validUsername(id,val) {
        var dom = $(id);
        if(dom.val().length <= 16 && dom.val().length >= 2){
            dom.removeClass().addClass('txt txtgreen');
            dom.next().remove();
            dom.after('<span class="ml10 pass">&nbsp;</span>');
            if(val){
                userFormValid['validUsername'] = 1;
            }
            comFormValid['validUsername'] = 1;
        }else {
            dom.removeClass().addClass('txt txtred');
            dom.next().remove();
            dom.after('<span class="ml10 red">* 2-16个字符</span>');
            if(val){
                userFormValid['validUsername'] = 0;
            }
            comFormValid['validUsername'] = 0;
        }
    }

    function validDepartmentName(id,val) {
        var dom = $(id);
        if(dom.val().length <= 100 && dom.val().length >= 1){
            dom.removeClass().addClass('txt txtgreen');
            dom.next().remove();
            dom.after('<span class="ml10 pass">&nbsp;</span>');
            if(val){
                userFormValid['validDepartmentName'] = 1;
            }
            comFormValid['validDepartmentName'] = 1;
        }else {
            dom.removeClass().addClass('txt txtred');
            dom.next().remove();
            dom.after('<span class="ml10 red">* 1-100个字符</span>');
            if(val){
                userFormValid['validDepartmentName'] = 0;
            }
            comFormValid['validDepartmentName'] = 0;
        }
    }

    function validMobilePhone(id,val) {
        var mobilePhoneReg = /^1[34578]\d{9}$/;
        var dom = $(id);
        if(mobilePhoneReg.test(dom.val())){
            dom.removeClass().addClass('txt txtgreen');
            dom.next().remove();
            dom.after('<span class="ml10 pass">&nbsp;</span>');
            if(val){
                userFormValid['validMobilePhone'] = 1;
            }
            comFormValid['validMobilePhone'] = 1;
        }else{
            dom.removeClass().addClass('txt txtred');
            dom.next().remove();
            dom.after('<span class="ml10 red">* 无效的手机号码</span>');
            if(val){
                userFormValid['validMobilePhone'] = 0;
            }
            comFormValid['validMobilePhone'] = 0;
        }
    }

    function validComName(id,val) {
        var dom = $(id);
        if(dom.val().length <= 16 && dom.val().length >= 4){
            $.ajax({
                type: 'POST',
                url: path + '/anon/regist/validComName',
                data: {comName: dom.val()},
                success: function (msg) {
                    var json = jQuery.parseJSON(msg);
                    if (!json.success) {
                        dom.removeClass().addClass('txt txtgreen');
                        dom.next().remove();
                        dom.after('<span class="ml10 pass">&nbsp;</span>');
                        if(val){
                            userFormValid['validComName'] = 1;
                        }
                        comFormValid['validComName'] = 1;
                    } else {
                        dom.removeClass().addClass('txt txtred');
                        dom.next().remove();
                        dom.after('<span class="ml10 red">* 该企业名已注册</span>');
                        if(val){
                            userFormValid['validComName'] = 0;
                        }
                        comFormValid['validComName'] = 0;
                    }
                }
            });
        }else {
            dom.removeClass().addClass('txt txtred');
            dom.next().remove();
            dom.after('<span class="ml10 red">* 4-16个字符</span>');
            if(val){
                userFormValid['validComName'] = 0;
            }
            comFormValid['validComName'] = 0;
        }
    }

    function validSocialCode(id,val) {
        var dom = $(id);
        if(dom.val().length <= 20 && dom.val().length >= 9){
            dom.removeClass().addClass('txt txtgreen');
            dom.next().remove();
            dom.after('<span class="ml10 pass">&nbsp;</span>');
            if(val){
                userFormValid['validSocialCode'] = 1;
            }
            comFormValid['validSocialCode'] = 1;
        }else {
            dom.removeClass().addClass('txt txtred');
            dom.next().remove();
            dom.after('<span class="ml10 red">* 9-20个字符</span>');
            if(val){
                userFormValid['validSocialCode'] = 0;
            }
            comFormValid['validSocialCode'] = 0;
        }
    }

    function refreshCode(id) {
        document.getElementById(id).src = "${path}/anon/getPngCode?" + Math.random();
    }

    var waitDialog = dialog({
        width: 250,
        title: false,
        quickClose: false,
        content : [
            '<div class="tips-pop-con">',
            '<table>',
            '<tbody>',
            '<tr>',
            '<td class="td-img">',
            '<i class="wait-pop"></i>',
            '</td>',
            '<td class="td-text">',
            '请稍等......',
            '</td>',
            '</tr>',
            '</tbody>',
            '</table>',
            '</div>',
        ].join(''),
        cancel: function () {},
        cancelDisplay: false
    });
    

    function repeatSendEmail(accountNumber) {
        $.ajax({
            type: 'POST',
            url: path + '/anon/regist/repeatSendEmail',
            data: {id: accountNumber},
            success: function (msg) {
                var json = jQuery.parseJSON(msg);
                if (json.success) {
                    dialog.tipsPop('ban-pop','提示:','邮件已发送,请注意查收','确定')
                }
            }
        });
    }
</script>