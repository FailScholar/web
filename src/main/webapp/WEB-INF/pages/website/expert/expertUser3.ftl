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
                        <a href="javascript:;">首页</a>&gt;<a href="javascript:;">合作机构</a>&gt;<a href="javascript:;">在线申请</a>
                    </div>
                    <div class="calt">
                        <div class="proList nli">
                            <!--企业基本信息-->
                            <div class="nlistCont">
                                <p class="ntit">信贷、投资咨询、上市辅导、保险、其他专家登记注册表</p>
                                <form id="xinDai">
                                <input type="hidden" name="columnid" id="columnid" value="21" />
                                <table width="100%" class="tab3">
                                    <tr>
                                        <th><b class="red">*</b>姓名</th>
                                        <td><input name="name" id="name" type="text" class="txt" placeholder="请输入" /></td>
                                        <th rowspan="4">照片</th>
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
                                        <th>性别</th>
                                        <td><label><input id="sex" type="radio" name="sex" />保密</label><label><input type="radio" name="sex" />男</label><label><input type="radio" name="sex" />女</label></td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>出生年月</th>
                                        <td><input name="birthday" onClick="WdatePicker()" id="birthday" type="text" class="txt" placeholder="请输入" /></td>
                                    </tr>
                                    <tr>

                                        <th><b class="red">*</b>学位</th>
                                        <td>
                                            <select name="degree" id="degree" >
                                                <option>请选择</option>
                                                <option>博士</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>工作单位</th>
                                        <td colspan="3"><input name="businesaddress" id="businesaddress" type="text" class="txt" placeholder="请输入" /></td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>从事行业</th>
                                        <td>
                                            <select name="technologydomain" id="technologydomain">
                                                <option>请选择</option>
                                                <option>IT</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>职务</th>
                                        <td><input name="workpost" id="workpost" type="text" class="txt" placeholder="请输入" /></td>
                                        <th><b class="red">*</b>职称</th>
                                        <td><input name="worktitle" id="worktitle" type="text" class="txt" placeholder="请输入" /></td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>传真</th>
                                        <td><input name="fax" id="fax" type="text" class="txt" placeholder="请输入" /></td>
                                        <th><b class="red">*</b>邮编</th>
                                        <td><input name="postcode" id="postcode" type="text" class="txt" placeholder="请输入" /></td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>手机</th>
                                        <td><input name="phone" id="phone" type="text" class="txt" placeholder="请输入" /></td>
                                        <th><b class="red">*</b>电子邮件</th>
                                        <td><input name="email" name="email" type="text" class="txt" placeholder="请输入" /></td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>主要工作地</th>
                                        <td colspan="3">
                                            <input name="mainaddress" id="mainaddress" type="text" class="txt" placeholder="主要工作地" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>通讯地址</th>
                                        <td colspan="3">
                                            <input name="postaladdress" id="postaladdress" type="text" class="txt" placeholder="通讯地址" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>办公地址</th>
                                        <td colspan="3">
                                            <input name="businesaddress" id="businesaddress" type="text" class="txt" placeholder="详细地址" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>教育背景或工作经历</th>
                                        <td colspan="3">
                                            <textarea name="educationalbackground" id="educationalbackground" class="txta"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>专业特长</th>
                                        <td colspan="3">
                                            <textarea name="partfull" id="partfull" class="txta"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th><b class="red">*</b>近三年服务业绩</th>
                                        <td colspan="3">
                                            <textarea name="projectinfo" id="projectinfo" class="txta"></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>机构logo</th>
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
                                        <th>机构介绍(500字以内)</th>
                                        <td colspan="3"><textarea name="agencyinfo" id="agencyinfo" class="txta"></textarea></td>
                                    </tr>
                                </table>
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
             $('.btnSave').click(function(){
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