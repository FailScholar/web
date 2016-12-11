<#assign path=request.contextPath />
 <div class="calt">
    <div class="log proList pro4">
    	<form method="post" action="" class="ant">
        	<h1>提交成功</h1>
            <p class="antp" style="text-indent:0;">等待时间：<b class="second">5</b> 秒后页面自动<span class="ml10 mr10"><a href="#">跳转</a></span>或者<span class="ml10 mr10"><a href="${path}/index">返回首页</a></span></p>
        </form>
    </div>
</div>

<script>
$(document).ready(function(e) {
	var num=parseInt($('.second').text());
	var timer = setInterval(function(){
		$('.second').html(num--);
		if($('.second').text()==0)
		{
			clearInterval(timer);
			window.location.href="${path}/perm/institution";
		}
	},1000)
});
</script>