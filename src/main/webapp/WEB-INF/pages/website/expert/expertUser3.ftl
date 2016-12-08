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
    <title>科技信贷专员申请</title>
</head>

<body>
<#include "website/common/header.ftl"/>
            <!--content开始-->
                <div class="content">
                    <div class="bread">
                        <a href="javascript:;">首页</a>&gt;<a href="javascript:;">专家资源</a>&gt;<a href="javascript:;">在线申请</a>
                    </div>
                    <div class="calt">
                        <div class="proList nli">
                            <!--企业基本信息-->
                            <div class="nlistCont">
                                <p class="ntit">${columnName}登记注册表</p>
                                <form id="xinDai">
                                <input type="hidden" name="columnid" id="columnid" value="21" />
                                <table width="100%" class="tab3">
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label1}</th>
                                        <td><input name="name" id="name" type="text" class="txt validate[required,minSize[2],maxSize[20],custom[chineseEnglish]]" placeholder="请输入" /></td>
                                        <th rowspan="4">${finExpertManage.label3}</th>
                                        <td rowspan="4">
                                            <img width="110px" height="110px" src="${path}/resource/images/blank.png" class="fl" />
                                            <span class="notice fr">建议尺寸110px*110px<br />上传大小不超过320K<br />支持JPG</span>
                                            <div class="clear"></div>
                                            <div class="btnUp fl">
                                                 <input type="file" name="UpFile9" id="UpFile9" onchange="ajaxFileUpload(9)"/>
                                                 <input name="userlogo" id="userlogo" type="hidden"/>
                                                <a href="javascript:;">上传</a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>${finExpertManage.label2}</th>
                                        <td><label><input id="sex" value="0" type="radio" class="validate[required]" name="sex" checked/>保密</label><label><input class="validate[required]" value="1" type="radio" name="sex" />男</label><label><input class="validate[required]" value="2" type="radio" name="sex" />女</label></td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label4}</th>
                                        <td><input name="birthday" onClick="WdatePicker()" id="birthday" type="text" class="txt validate[required]" placeholder="请输入" /></td>
                                    </tr>
                                    <tr>

                                        <th><b class="red">*</b>${finExpertManage.label5}</th>
                                        <td>
                                            <select name="degree" id="degree" class="validate[required]">
                                                <option>请选择</option>
                                                <option value="1">博士</option>
                                                <option value="2">硕士</option>
                                                <option value="3">学士</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label6}</th>
                                        <td colspan="3"><input name="businesaddress" id="businesaddress" type="text" class="txt validate[required,maxSize[1000]]" placeholder="请输入" /></td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label7}</th>
                                        <td>
                                            <select name="technologydomain" id="technologydomain" class="validate[required]">
                                                <option>请选择</option>
                                                <option value="1">信贷</option>
                                                <option value="2">上市辅导</option>
                                                <option value="3">投资咨询</option>
                                                <option value="4">保险</option>
                                                <option value="5">其他</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label8}</th>
                                        <td><input name="workpost" id="workpost" type="text" class="txt validate[required,maxSize[1000]]" placeholder="请输入" /></td>
                                        <th><b class="red">*</b>${finExpertManage.label9}</th>
                                        <td><input name="worktitle" id="worktitle" type="text" class="txt validate[required,maxSize[1000]]" placeholder="请输入" /></td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label10}</th>
                                        <td><input name="fax" id="fax" type="text" class="txt validate[required,custom[fax],minSize[6],maxSize[30]]" placeholder="请输入" /></td>
                                        <th><b class="red">*</b>${finExpertManage.label11}</th>
                                        <td><input name="postcode" id="postcode" type="text" class="txt validate[custom[number]]" placeholder="请输入" /></td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label12}</th>
                                        <td><input name="phone" id="phone" type="text" class="txt validate[custom[mobile]]" placeholder="请输入" /></td>
                                        <th><b class="red">*</b>${finExpertManage.label13}</th>
                                        <td><input name="email" name="email" type="text" class="txt validate[required,minSize[2],maxSize[50],custom[email]]" placeholder="请输入" /></td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label14}</th>
                                        <td colspan="3">
                                            <input name="mainaddress" id="mainaddress" type="text" class="txt validate[required,maxSize[1000]]" placeholder="主要工作地" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label15}</th>
                                        <td colspan="3">
                                            <input name="postaladdress" id="postaladdress" type="text" class="txt validate[required,maxSize[1000]]" placeholder="通讯地址" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label16}</th>
                                        <td colspan="3">
                                            <input name="businesaddress" id="businesaddress" type="text" class="txt validate[required,maxSize[1000]]" placeholder="详细地址" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label20}</th>
                                        <td colspan="3">
                                            <textarea name="educationalbackground" id="educationalbackground" class="txta validate[required,maxSize[1000]]"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label27}</th>
                                        <td colspan="3">
                                            <textarea name="partfull" id="partfull" class="txta validate[required,maxSize[1000]]"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>${finExpertManage.label28}</th>
                                        <td colspan="3">
                                            <textarea name="projectinfo" id="projectinfo" class="txta validate[required,maxSize[1000]]"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>${finExpertManage.label18}</th>
                                        <td colspan="3">
                                            <img width="110px" height="110px" src="${path}/resource/images/blank.png" class="fl" />
                                            <span class="notice fl ml16">建议尺寸220px*246px<br />上传大小不超过320K<br />支持JPG</span>
                                            <div class="clear"></div>
                                            <div class="btnUp fl">
                                            <input type="file" name="UpFile10" id="UpFile10"  onchange="ajaxFileUpload(10)"/>
                                            <input type="hidden" name="agencylogo" id="agencylogo"/>
                                                <a href="javascript:;">上传</a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>${finExpertManage.label19}</th>
                                        <td colspan="3"><textarea name="agencyinfo" id="agencyinfo" class="txta validate[maxSize[500]]"></textarea></td>
                                    </tr>
                                </table>
                                </form>
                            </div>
                            <div class="btnFld"><a href="#"><input type="button" value="完成注册" class="btnSave" /></a></div>
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
       $("#xinDai").validationEngine({promptPosition :'bottomRight',focusFirstField:true,showOneMessage:true});
       $('.btnSave').click(function(){
       if(!$('#xinDai').validationEngine('validate')){
               return false;
         }
       $.ajax({
            type: "POST",
            url: '${path}/anon/addExpert',
            data: $("#xinDai").serialize(),
            dateType:"json",
            success: function(msg){
              if( msg != 1){
                dialog.tipsPop('ban-pop','提示:',"操作失败",'确定');
                return false;
              }else{
              dialog.tipsPop('ban-pop','提示:',"注册成功",'确定');
              }
            }
        });
     });
        //增加
        $('.add').click(function(){
            var node = $('.module tr:last').clone(true).removeClass('module');
            $('.module tr:last').after(node);
        });
        //删除
        $('.delete').live('click',function(){
            $(this).parents('tr').remove();
        });
    });
    
     <!--上传附件-->
function ajaxFileUpload(index) { 
    var index=index;
    $.ajaxFileUpload({
        type: "POST",
        url: '${path}/anon/savePhoto?index='+index, 
        secureuri: false,
        fileElementId: 'UpFile'+index,
        dataType:"text",
        success: function(msg) {
            if(msg =="0"){
              dialog.tipsPop('ban-pop','提示:',"操作失败",'确定');
              return false;
            }else{
              if(index==9){
              $('#userlogo').val(msg);
              }else{
              $('#agencylogo').val(msg);
              }
              $("#xinDai img").eq(index-9).attr("src","${path}/resource/fileImage/"+msg);
            }
        }
    }); 
} 
</script>