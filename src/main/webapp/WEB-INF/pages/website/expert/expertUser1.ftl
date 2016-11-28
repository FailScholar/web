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
    <title>科技金融专家申请</title>
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
                            <p class="ntit">科技金融专家登记注册表</p>
                            <table width="100%" class="tab3">
                                <tr>
                                    <th><b class="red">*</b>姓名</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th rowspan="4">照片</th>
                                    <td rowspan="4">
                                        <img src="${path}/resource/images/blank.png" class="fl" />
                                        <span class="notice fr">建议尺寸120px*150px<br />上传大小不超过320K<br />支持JPG</span>
                                        <div class="clear"></div>
                                        <div class="btnUp fl">
                                            <input type="file" />
                                            <a href="javascript:;">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>性别</th>
                                    <td><label><input type="radio" name="sex" />保密</label><label><input type="radio" name="sex" />男</label><label><input type="radio" name="sex" />女</label></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>出生年月</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>学位</th>
                                    <td>
                                        <select>
                                            <option>请选择</option>
                                            <option>博士</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>工作单位</th>
                                    <td colspan="3"><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>技术领域</th>
                                    <td>
                                        <select>
                                            <option>请选择</option>
                                            <option>IT</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>职务</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>职称</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>传真</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>邮编</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>手机</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <th><b class="red">*</b>电子邮件</th>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>主要工作地</th>
                                    <td colspan="3">
                                        <select>
                                            <option>上海市</option>
                                        </select>
                                        <select>
                                            <option>请选择城区</option>
                                        </select>
                                        <input type="text" class="txt" placeholder="详细地址" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>通讯地址</th>
                                    <td colspan="3">
                                        <select>
                                            <option>上海市</option>
                                        </select>
                                        <select>
                                            <option>请选择城区</option>
                                        </select>
                                        <input type="text" class="txt" placeholder="详细地址" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>办公地址</th>
                                    <td colspan="3">
                                        <select>
                                            <option>上海市</option>
                                        </select>
                                        <select>
                                            <option>请选择城区</option>
                                        </select>
                                        <input type="text" class="txt" placeholder="详细地址" />
                                    </td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>教育背景</th>
                                    <td colspan="3"><textarea class="txta"></textarea></td>
                                </tr>
                                <tr>
                                    <th>兼职/专职情况</th>
                                    <td colspan="3"><textarea class="txta"></textarea></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>近五年主要的研究成果或成果转化项目</th>
                                    <td colspan="3"><textarea class="txta"></textarea></td>
                                </tr>
                                <tr>
                                    <th><b class="red">*</b>近三年来承担国家和地方科研项目情况</th>
                                    <td colspan="3"><textarea class="txta"></textarea></td>
                                </tr>
                                <tr>
                                    <th>机构logo</th>
                                    <td colspan="3">
                                        <img src="${path}/resource/images/blank.png" class="fl" />
                                        <span class="notice fl ml16">建议尺寸250px*100px<br />上传大小不超过320K<br />支持JPG</span>
                                        <div class="clear"></div>
                                        <div class="btnUp fl">
                                            <input type="file" />
                                            <a href="javascript:;">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <th>机构介绍(500字以内)</th>
                                    <td colspan="3"><textarea class="txta"></textarea></td>
                                </tr>
                            </table>
                            <p class="ntit"><b class="red">*</b>技术领域<a href="javascript:;" class="fr add">添加</a></p>
                            <table width="100%" class="tab3 tab4 module">
                                <tr>
                                    <th>一级领域</th>
                                    <th>二级领域</th>
                                    <th>三级领域</th>
                                    <th>操作</th>
                                </tr>
                                <tr>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <td><input type="text" class="txt" placeholder="请输入" /></td>
                                    <td><a href="javascript:;" class="fr delete">删除</a></td>
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
</script>