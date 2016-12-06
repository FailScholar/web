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
    <title>专家资源</title>
</head>

<body>
<#include "website/common/header.ftl"/>
            <!--content开始-->
            <div class="content">
                <div class="bread">
                    <a href="javascript:;">首页</a>&gt;<a href="javascript:;">保费补贴</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt">
                    <p>保费补贴申请</p>
                    <h2>在线申请<a href="javascript:;" class="notice fr" onClick="popCon01()">申请须知</a></h2>
                    <ul class="progress">
                        <li class="li1 active"><b></b>1.填写企业基本信息<i></i></li>
                        <li class="li2"><b></b>2.填写申请表格<i></i></li>
                        <li class="li3"><b></b>3.完成申请</li>
                    </ul>
                    <div class="clear"></div>
                      <!--填写企业基本信息-->
                       <#include "website/loan/subsidy/coBase.ftl" />
                      <!--填写申请表格-->
                       <#include "website/loan/subsidy/fillApplyForm.ftl" />
                      <!--完成-->
                      <div id="finishApplyForm" class="proList nli" style="padding-top:0; display:none;"> </div>
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
        //输入框验证
         $("#coBase ,#psMaterialInfo").validationEngine({promptPosition :'bottomRight',focusFirstField:true,showOneMessage:true});
        //申请页面点击上一步
        $('.proList .logbtn input.por').click(function(){
            $('.progress li').removeClass('active').eq(0).addClass('active');
            $(this).parents('.proList').hide().prev('.proList').show();
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

        //固定tab栏
        $(window).scroll(function(){
            autoRisize();
        });
        autoRisize();

        $('.lnav li').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
        });

        //确认提交
        $('.proList:last').find(".nor:first").click(function(){
            window.location.href="${path}/loan/success";
        });

        //删除
        $('.delete').live('click',function(){
            $(this).parents('.tab3').remove();
        });
        //增加
        /* $('.add').click(function(){
            var node = $('.module').clone(true).removeClass('module');
            $('.module').after(node);
        });
 */
      var index;
      $('.add').click(function(){
         index = $(this).parents('p.ntit').nextAll("table:last").index()-1;
         var content="<table width='100%' class='tab3 module'>"+
         "<tr> <td colspan='4'><a href='javascript:;' class='fr delete'>删除</a></td></tr>"+
         "<tr><th style='width:8%'>借款合同编号</th><td colspan='3'><input  name='jltfispPsInfoList["+index+"].contractNumber'  type='text' class='txt' placeholder='请输入合同编号' /></td></tr>"+
         "<tr><th><b class='red'>*</b><b>保单号</b></th>"+
         "<td><input name='jltfispPsInfoList["+index+"].policyNumber' type='text' class='txt' placeholder='请输入' /></td>"+
         "<th><b class='red'>*</b><b>担保金额</b></th>"+
         "<td><input name='jltfispPsInfoList["+index+"].premiumMoney' type='text' class='txt' placeholder='请输入' />万元</td></tr>"+
         "<tr><th><b class='red'>*</b><b>贷款银行</b></th><td>"+
         "<input name='jltfispPsInfoList["+index+"].loanBank' type='text' class='txt' placeholder='请输入' /></td>"+
         "<th><b class='red'>*</b><b>保险/担保公司</b></th>"+
         "<td> <input name='jltfispPsInfoList["+index+"].InsuranceCompany' type='text' class='txt' placeholder='请输入' /></td>"+
         "</tr><tr><th>实际支付保额金额</th><td colspan='3'><input name='jltfispPsInfoList["+index+"].loanMoney' type='text' class='txt' placeholder='请输入' />元</td></tr>"+
         "<tr><th>实际还款日</th><td><input name='jltfispPsInfoList["+index+"].repaymentDate' type='text' class='txt' placeholder='请输入' /></td>"+
         "<th>实际支付本息(本金+利息)</th><td><input name='jltfispPsInfoList["+index+"].principalInterest' type='tex' class='txt' placeholder='请输入' />元</td></tr>"+
         "<tr><th>实际放贷日</th><td><input name='jltfispPsInfoList["+index+"].lendDate' type='text' class='txt' placeholder='请输入实际放贷日' /></td>"+
         "<th>贷款期限</th><td><input name='jltfispPsInfoList["+index+"].loanTerm' type='text' class='txt' placeholder='请输入贷款期限' /></td></tr>"+
         "</table>";
         $("table.tab3.module:first").before(content);
         index++;
     });
      //初始化加载经营地省、市、区
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
        //获取城市
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
        //获取区域
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
          
         //填写完企业基本信息以后点击取消跳转至首页
         $('.proList .logbtn input.can').click(function(){
        	 window.location.href="${path}/index";
          });
         
       /*   $('.proList .logbtn input.nor').click(function(){
            var index=$(this).parents('.proList').index()-3;
            if(index<3)
            {
                $('.progress li').removeClass('active').eq(index).addClass('active');
                $(this).parents('.proList').hide().next('.proList').show();
            }
        }); */
       //填写完企业基本信息以后点击下一步
        $('.proList .logbtn input.nor').click(function(){
             var index=$(this).parents('.proList').index()-3;
             var url;
             var data;
             if(index==1){
                 if(!$('#coBase').validationEngine('validate')){
                   return false;
                 } 
                 url='${path}/loan/saveSubsidyCoBase';
                 data=$("#coBase").serialize();
             }else if(index==2){
                 //保存填写申请表格
                 if(!$('#psMaterialInfo').validationEngine('validate')){
                   return false;
                 } 
                 url='${path}/loan/SavePsMaterialInfo';
                 data=$("#psMaterialInfo").serialize();
              }
             if(index<3){    
            	 $.ajax({
                     type: "POST",
                     url: url,
                     data: data,
                     dateType:"json",
                     success: function(msg){
                       if(index==2){
                          $("#finishApplyForm").html(msg);
                         }
                     }
                 });
                 $('.progress li').removeClass('active').eq(index).addClass('active');
                 $(this).parents('.proList').hide().next('.proList').show();
             }
         }); 
        
    });

    function popCon01()
    {
        dialog({
            id: 'dialogPop',
            width: 600,
            height:240,
            padding: 20,
            title: '申请须知',
            content: document.getElementById('test01'),
            okValue: '确定',
            cancelValue: '取消',
            ok: function (){},
            cancel: function (){}
        })
                .showModal();
    }

</script>