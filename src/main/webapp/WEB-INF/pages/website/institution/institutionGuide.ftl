<#assign path=request.contextPath />
<div class="bread">
    <a href="javascript:;">首页</a>&gt;<a href="javascript:;">合作机构</a>&gt;<a href="javascript:;">在线申请</a>&gt;<a href="javascript:;">申请须知</a>
</div>
<div class="calt">
	<p>合作机构申请</p>
    <h2>申请须知</h2>
    <p class="note">${institutManage.applyGuide}</p>
</div>
<form id="agreeForm">
<div class="chkbg"><b></b><input type="checkbox" name="agree" class="validate[required]" />同意</div>
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
</script>