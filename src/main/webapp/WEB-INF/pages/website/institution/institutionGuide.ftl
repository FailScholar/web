<#assign path=request.contextPath />
<#include "website/common/common.ftl" />
<div class="bread">
    <a href="${path}/index">首页</a>&gt;<a href="${path}/perm/institution">${dictColumnDto.value}</a>&gt;<a href="javascript:void(0);" onclick="goBack(${jltfispColumn.id})">${jltfispColumn.columnName}</a>&gt;<a href="javascript:;">申请须知</a>
</div>
<div class="calt wangEditor-container" style="border: 0px;">
    <h2>申请须知</h2>
    <div class=" wangEditor-txt">
    <p class="note">${institutManage.applyGuide}</p>
    </div>
</div>
<form id="agreeForm">
<div style="text-align:center;">
<input type="checkBox" style="font-size:16px;border-radius:3px;" name="agree" class="validate[required]" >
<span style="width:300px;height:50px;text-align:center;font-size:16px;border-radius:3px;">同意协议</span></br></br></br>
</div>
</form>
<a href="javascript: void(0);" class="apply" onclick="apply()">马上申请</a>
<input type="hidden" name="id" id="id" value="${columnId }"/>
<script>
$(function(){
	//输入框验证
    $.validationEngineLanguage.newLang();   
    $("#agreeForm").validationEngine('attach', {
        promptPosition: "bottomRight:-10", scroll: false
    });
    $("p").addClass("note");
});

//复选框选中/选不中
$('.chkbg').toggle(function(){
	$(this).find('input').attr("checked",true);
	$(this).find('b').addClass('active');
},function(){
	$(this).find('input').attr("checked",false);
	$(this).find('b').removeClass('active');
});
	
//点击马上申请
function apply(){
  if($("#agreeForm").validationEngine("validate")){//表单验证成功
	window.location.href = "${path}/anon/institutionApply?columnId="+$("#id").val();
  }else{
  	return false;
  }
}
function goBack(columnId){
	 window.location.href="${path}/perm/institution?columnId="+columnId;
	 }
</script>