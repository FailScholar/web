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
                    <a href="${path}/index">首页</a>&gt;<a href="javascript:history.go(-2);">贷款服务</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt">
                	<p>${applyname}</p>
                    <h2>在线申请<!--<a href="${path}/anon/loan/guideApply?applytype=${applytype}" class="notice fr">申请须知</a>--></h2>
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
     var firstYear;
     var secondYear;
     var thirdYear;
     var fourYear;
     <!--办公地址省份-->
     var officeProv="${coAll.jltfispCoBase.officeProv}";
     <!--办公地址市级-->
     var officeCity="${coAll.jltfispCoBase.officeCity}";
     <!--办公地址区县-->
     var officeArea="${coAll.jltfispCoBase.officeArea}";
     
     <!--生产地址省份-->
     var productProv="${coAll.jltfispCoBase.productProv}";
     <!--生产地址市级-->
     var productCity="${coAll.jltfispCoBase.productCity}";
     <!--生产地址区县-->
     var productArea="${coAll.jltfispCoBase.productArea}";
     <!--获取当前业务申请类型-->
     var applytype="${applytype}";
     <!--企业概况企业曾获得科技认定字段-->
     var technologyOrFinance="${coAll.jltfispCoProfile.technologyOrFinance}";
     var technologyOrFinanceList= new Array(); 
     technologyOrFinanceList=technologyOrFinance.split(",");
     var month="${coAll.jltfispCoProfit[0].month}";
    $(document).ready(function(e) {
        $("#coBase ,#coDebt, #coProfit ,#coFinancial ,#coProfile, #coOther").validationEngine({promptPosition :'bottomRight',focusFirstField:true,showOneMessage:true});
          <!--初始化页面数据-->
          var Year=new Date();
          firstYear=Year.getFullYear()-3;
          secondYear=firstYear+1;
          thirdYear=secondYear+1;
          fourYear=thirdYear+1;
          $('#year').eq(0).val(firstYear);
          <!--初始化企业概况企业曾获得科技认定字段-->
          for (i=0;i<technologyOrFinanceList.length;i++)
          {    
              $("#technologyOrFinance"+technologyOrFinanceList[i]).attr("checked",true);
          } 
          $('.lnav').html("<li class='active'>"+firstYear+"年</li><li>"+secondYear+"年</li><li>"+thirdYear+"年</li><li>"+fourYear+"年</li>");
          $('#coProfit tr').eq(0).before("<tr><th>项目</th><th>"+firstYear+"年末</th><th>"+secondYear+"年末</th><th>"+thirdYear+"年末</th><th>"+fourYear+"年1~<select name='month' id='month'><option value='2'>2</option><option value='3'>3</option><option value='4'>4</option><option value='5'>5</option><option value='6'>6</option><option value='7'>7</option><option value='8'>8</option><option value='9'>9</option><option value='10'>10</option><option value='11'>11</option><option value='12'>12</option></select></th></tr>");
          if(""!=month || null != month){
            $("#month   option[value='"+month+"']").attr("selected",true);
          }
        <!--初始化办公地址下拉框-->
            $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            dateType:"json",
            success: function(msg){
              $("#officeProv").append("<option value='"+msg[7].id+"'>"+msg[7].name+"</option>");  
              for(var i=1;i<msg.length;i++){
                     <!--默认吉林省顶头-->
                    if(i!=7){
                     $("#officeProv").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                     }
                  } 
                  if(null!=officeProv || ""!=officeProv){
                  $("#officeProv   option[value='"+officeProv+"']").attr("selected",true);
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
              if(null!=officeCity || ""!=officeCity){
                  $("#officeCity   option[value='"+officeCity+"']").attr("selected",true);
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
               if(null!=officeArea || ""!=officeArea){
                  $("#officeArea   option[value='"+officeArea+"']").attr("selected",true);
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
               $("#productProv").append("<option value='"+msg[7].id+"'>"+msg[7].name+"</option>");  
              for(var i=1;i<msg.length;i++){
                    <!--默认吉林省顶头-->
                    if(i!=7){
                    $("#productProv").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>"); 
                    }
                  } 
                   if(null!=productProv || ""!=productProv){
                  $("#productProv   option[value='"+productProv+"']").attr("selected",true);
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
               if(null!=productCity || ""!=productCity){
                  $("#productCity   option[value='"+productCity+"']").attr("selected",true);
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
              if(null!=productArea || ""!=productArea){
                  $("#productArea   option[value='"+productArea+"']").attr("selected",true);
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
        
        <!--上传功能-->
        
        $('.proList .logbtn input').click(function(){
            var index=$(this).parents('.proList').index()-3;
            $('.progress li').removeClass('active').eq(index).addClass('active');
            $(this).parents('.proList').hide().next('.proList').show();
        });

        $('.nlist li').click(function(){
                    var index =$(this).index();
                    $.ajax({
                    type: "POST",
                    url: "${path}/anon/loan/queryCoBase",<!--查询企业基本信息是否已添加-->
                    data: {applytype:applytype},
                    dateType:"json",
                    success: function(msg){
                     if(msg==0){
                       dialog.tipsPop('ban-pop','提示:',"企业基本信息必须先填写并保存后才能填写其他信息",'确定');
                       return false;
                     }else{
                     $('.nlist li').eq(index).addClass('active').siblings().removeClass('active');
                     $('.nlist li').eq(index).parent().siblings(".nlistCont").hide().eq(index).show();
                     }
                   }
                });
            
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
            if(!$('#coDebt').validationEngine('validate')){
               return false;
               }
            var index=$(this).index();
            url='${path}/anon/loan/saveCoDebt';
            data=$("#coDebt").serialize();
            $.ajax({
            type: "POST",
            url: url,
            data: data,
            dateType:"json",
            success: function(msg){
                if(msg != 1){
                    dialog.tipsPop('ban-pop','提示:',"操作失败",'确定');
                    return false;
                }else{
                    if(index==0){
                    coDebtTable(firstYear);
                    }else if(index==1){
                    coDebtTable(secondYear);
                    }else if(index==2){
                    coDebtTable(thirdYear);
                    }else{
                    coDebtTable(fourYear);
                    }
                }
            }
        });
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
            if(!$('#coProfile').validationEngine('validate')){
               return false;
               }
            url='${path}/anon/loan/saveCoProfile';
            data=$("#coProfile").serialize();
            }else if(index==3){
            if(!$('#coDebt').validationEngine('validate')){
               return false;
               }
            url='${path}/anon/loan/saveCoDebt';
            data=$("#coDebt").serialize();
            }else if(index==4){
            if(!$('#coProfit').validationEngine('validate')){
               return false;
               }
            url='${path}/anon/loan/saveCoProfit';
            data=$("#coProfit").serialize();
            }else if(index==5){
            if(!$('#coOther').validationEngine('validate')){
               return false;
               }
            url='${path}/anon/loan/saveCoOther';
            data=$("#coOther").serialize();
            }else if(index==6){
            if(!$('#coFinancial').validationEngine('validate')){
               return false;
               }
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
               if((index==4 && msg != 4) || (index==6 && msg != 30) || (index!=4 && index!=6 && msg != 1 )){
                dialog.tipsPop('ban-pop','提示:',"操作失败",'确定');
                return false;
               };
            }
        });
                $(this).parents('.nlistCont').hide().next('.nlistCont').show();
                $(this).parents('.nlistCont').siblings('.nlist').find('li').eq(index).addClass('active').siblings('li').removeClass('active');
                                    }
        });
    });
<!--切换年份时获取该年费数据-->
function coDebtTable(year){
                    var year =year;
                    $.ajax({
                    type: "POST",
                    url: "${path}/anon/loan/selectCoDebtTable",
                    data: {year:year,applytype:applytype},
                    dateType:"json",
                    success: function(msg){
                     $('#coDebt').html(msg);
                     $('#year').val(year);
                     $('#tabYear').html(year);
             }
             });
}
    
          <!--上传附件-->
function ajaxFileUpload(index,applytype) { 
    var index=index;
    $.ajaxFileUpload({
        type: "POST",
        url: '${path}/anon/loan/saveCoFile?index='+index+'&applytype='+applytype, 
        secureuri: false,
        fileElementId: 'UpFile'+index,
        dataType:"text",
        success: function(msg) {
            if(msg =="0"){
              dialog.tipsPop('ban-pop','提示:',"操作失败",'确定');
              return false;
            }else{
              $("#coFile img").eq(index-1).attr("src","${path}"+msg);
            }
        }
    }); 
} 
<!--上传附件代码结束-->
</script>