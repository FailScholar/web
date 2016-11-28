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
    <title>贷款服务在线申请</title>
  </head>

  <body>
  <div class="wrap">
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="clear"></div>
            <!--content开始-->
            <div class="content">
                <div class="bread">
                    <a href="javascript:;">首页</a>&gt;<a href="javascript:;">贷款服务</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt">
                	<p>${applyname}</p>
                    <h2>在线申请<a href="${path}/anon/loan/guideApply?applytype=${applytype}" class="notice fr">申请须知</a></h2>
                    <ul class="progress">
                    	<li class="li1 active"><b></b>1.填写企业基本信息<i></i></li>
                        <li class="li2"><b></b>2.填写申请表格<i></i></li>
                        <li class="li3"><b></b>3.完成申请</li>
                    </ul>
                    <div class="clear"></div>
                    <div class="proList nli">
                    	<ul class="nlist">
                        	<li class="active">企业基本信息</li>
                            <li>企业概况</li>
                            <li>资产负债表</li>
                            <li>利润表</li>
                            <li>企业其他情况</li>
                            <li>附加财务明细</li>
                            <li>附件</li>
                        </ul>
                        <div class="clear"></div>
                        <#include "website/loan/loanapply/coBase.ftl" />
                        <#include "website/loan/loanapply/coProfile.ftl" />
                        <#include "website/loan/loanapply/coDebt.ftl" />
                        <#include "website/loan/loanapply/coProfit.ftl" />
                        <#include "website/loan/loanapply/coOther.ftl" />
                        <#include "website/loan/loanapply/coFinancial.ftl" />
                        <#include "website/loan/loanapply/coFile.ftl" />
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
        $("#coBase").validationEngine({promptPosition :'bottomRight',focusFirstField:true,showOneMessage:true});
        
        <!--初始化办公地址下拉框-->
            $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            dateType:"json",
            success: function(msg){
              for(var i=0;i<msg.length;i++){  
                    $("#officeProv").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                  } 
                  changCity($("#officeProv").val());
              }
        });
        
        
        function changCity(id){
            $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            data:{areaId:id},
            dateType:"json",
            success: function(msg){
              $("#officeCity").html("");
              for(var i=0;i<msg.length;i++){
                    $("#officeCity").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                  }
              changArea($("#officeCity").val());
              }
        });
        }
        
        function changArea(id){
            $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            data:{areaId:id},
            dateType:"json",
            success: function(msg){
              $("#officeArea").html("");
              for(var i=0;i<msg.length;i++){
                    $("#officeArea").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                  }
              }
        });
  }
        $("#officeProv").change(function(){  
        changCity($(this).val());
        }); 
        
        $("#officeCity").change(function(){  
        changArea($(this).val());
        }); 
        
                
        <!--初始化生产地址下拉框-->
            $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            dateType:"json",
            success: function(msg){
              for(var i=0;i<msg.length;i++){  
                    $("#productProv").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                  } 
                  changProductCity($("#productProv").val());
              }
        });
        
        
        function changProductCity(id){
            $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            data:{areaId:id},
            dateType:"json",
            success: function(msg){
              $("#productCity").html("");
              for(var i=0;i<msg.length;i++){
                    $("#productCity").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                  }
              changProductArea($("#productCity").val());
              }
        });
        }
        
        function changProductArea(id){
            $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            data:{areaId:id},
            dateType:"json",
            success: function(msg){
              $("#productArea").html("");
              for(var i=0;i<msg.length;i++){
                    $("#productArea").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                  }
              }
        });
  }
        $("#productProv").change(function(){  
        changProductCity($(this).val());
        }); 
        
        $("#productCity").change(function(){  
        changProductArea($(this).val());
        }); 
        
        
        $('.proList .logbtn input').click(function(){
            var index=$(this).parents('.proList').index()-3;
            $('.progress li').removeClass('active').eq(index).addClass('active');
            $(this).parents('.proList').hide().next('.proList').show();
        });

        $('.nlist li').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
            $(this).parent().siblings(".nlistCont").hide().eq($(this).index()).show();
        });

        function autoRisize()
        {
            if($(window).scrollTop()>536)
                $('.nlist').css('top',$(window).scrollTop()-536+"px");
            else
                $('.nlist').css('top',0);
        }

        $(window).scroll(function(){
            autoRisize();
        });
        autoRisize();

        $('.lnav li').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
        });

        $('.btnSave').click(function(){
            var index=$(this).parents('.nlistCont').index()-1;
            var url;
            var data;
            if(index==1){
               if(!$('#coBase').validationEngine('validate')){
               return false;
               }
            url='${path}/anon/loan/saveCoBase';
            data=$("#coBase").serialize();
            }else if(index==2){
            url='${path}/anon/loan/saveCoProfile';
            data=$("#coProfile").serialize();
            }else if(index==3){
            url='${path}/anon/loan/saveCoDebt';
            data=$("#coDebt").serialize();
            }else if(index==4){
            url='${path}/anon/loan/saveCoProfit';
            data=$("#coProfit").serialize();
            }else if(index==5){
            url='${path}/anon/loan/saveOnlineApply';
            data=$("#coBase").serialize();
            }else if(index==6){
            url='${path}/anon/loan/saveCoFinancial';
            data=$("#coFinancial").serialize();
            }else{
            url='${path}/anon/loan/saveOnlineApply';
            data=$("#coBase").serialize();
            }
            if(index<7) {
                <!--贷款服务--科技履约贷款申请--填写企业基本信息-->
            $.ajax({
            type: "POST",
            url: url,
            data: data,
            dateType:"json",
            success: function(msg){
                if(msg != 1){
                    dialog.tipsPop('ban-pop','提示:',"操作失败",'确定');
                    return false;
                }
            }
        });
                $(this).parents('.nlistCont').hide().next('.nlistCont').show();
                $(this).parents('.nlistCont').siblings('.nlist').find('li').eq(index).addClass('active').siblings('li').removeClass('active');
                                    }
        });
    });
</script>