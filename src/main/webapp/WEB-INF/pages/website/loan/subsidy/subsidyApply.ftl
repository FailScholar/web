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
    <title>贷款服务申请</title>
</head>

<body>
<#include "website/common/header.ftl"/>
            <!--content开始-->
            <div class="content">
                <div class="bread">
                    <a href="${path}/index">首页</a>&gt;<a href="${path}/anon/loan">贷款服务</a>&gt;<a href="javascript:;">在线申请</a>
                </div>
                <div class="calt">
                    <p>保费补贴申请</p>
                    <!-- <h2>在线申请<a href="javascript:;" class="notice fr" onClick="popCon01()">申请须知</a></h2> -->
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
    positionNavigation(1);
	//办公地址省份
	var officeProv="${jlfispPsBaseDto.officeProv}";
	//办公地址市级
	var officeCity="${jlfispPsBaseDto.officeCity}";
	//办公地址区县
	var officeArea="${jlfispPsBaseDto.officeArea}";
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

        //删除之后给name值下标重新排序
        $('.delete').live('click',function(){
            $(this).parents('.tab3').remove();
            for(var j=1;j<$('table.tab3.module').length;j++)
			  {
			 	$('table.tab3.module').eq(j).find('tr td input.hetongbianhao ').attr("name","jltfispPsInfoList["+(j)+"].contractNumber"); 
			 	$('table.tab3.module').eq(j).find('tr td input.baodanhao').attr("name","jltfispPsInfoList["+(j)+"].policyNumber"); 
			 	$('table.tab3.module').eq(j).find('tr td input.danbaojiner').attr("name","jltfispPsInfoList["+(j)+"].premiumMoney"); 
			 	$('table.tab3.module').eq(j).find('tr td input.daikuanyinhang').attr("name","jltfispPsInfoList["+(j)+"].loanBank"); 
			 	$('table.tab3.module').eq(j).find('tr td input.baoxiangongsi').attr("name","jltfispPsInfoList["+(j)+"].insuranceCompany"); 
			 	$('table.tab3.module').eq(j).find('tr td input.shijizhifujine').attr("name","jltfispPsInfoList["+(j)+"].loanMoney"); 
			 	$('table.tab3.module').eq(j).find('tr td input.shijihuankuanri').attr("name","jltfispPsInfoList["+(j)+"].repaymentDate"); 
			 	$('table.tab3.module').eq(j).find('tr td input.shijizhifubenxi').attr("name","jltfispPsInfoList["+(j)+"].principalInterest");
			 	$('table.tab3.module').eq(j).find('tr td input.shijifangdairi').attr("name","jltfispPsInfoList["+(j)+"].lendDate"); 
			 	$('table.tab3.module').eq(j).find('tr td input.daikuanqixian').attr("name","jltfispPsInfoList["+(j)+"].loanTerm");  
			 	
			  }
        });
        //增加
      var index;
      $('.add').click(function(){
         index = $(this).parents('p.ntit').nextAll("table:last").index()-1;
         if(index >9){
        	 dialog.tipsPop('ban-pop','提示:',"最多可添加10条保费补贴信息！",'确定');
             return false;
         }
         var content="<table width='100%' class='tab3 module'>"+
         "<tr> <td colspan='4'><a href='javascript:;' class='fr delete'>删除</a></td></tr>"+
         "<tr><th style='width:8%'><b class='red'>*</b>${loanformManage.infoContractNumber}</b></th><td colspan='3'><input  name='jltfispPsInfoList["+index+"].contractNumber'  type='text' class='txt validate[required,custom[userLoginPassword],minSize[1],maxSize[20]] hetongbianhao' placeholder='请输入' /></td></tr>"+
         "<tr><th><b class='red'>*</b><b>${loanformManage.infoPolicyNumber}</b></th>"+
         "<td><input name='jltfispPsInfoList["+index+"].policyNumber' type='text' class='txt validate[required,custom[userLoginPassword],minSize[1],maxSize[50]] baodanhao' placeholder='请输入' /></td>"+
         "<th><b class='red'>*</b><b>${loanformManage.infoPremiumMoney}</b></th>"+
         "<td><input name='jltfispPsInfoList["+index+"].premiumMoney' type='text' class='txt validate[required,custom[number2],minSize[1],maxSize[10]] danbaojiner' placeholder='请输入' />万元</td></tr>"+
         "<tr><th><b class='red'>*</b><b>${loanformManage.infoLoanBank}</b></th><td>"+
         "<input name='jltfispPsInfoList["+index+"].loanBank' type='text' class='txt validate[required,minSize[1],maxSize[20]] daikuanyinhang' placeholder='请输入' /></td>"+
         "<th><b class='red'>*</b><b>${loanformManage.infoInsuranceCompany}</b></th>"+
         "<td> <input name='jltfispPsInfoList["+index+"].insuranceCompany' type='text' class='txt validate[required,minSize[1],maxSize[20]] baoxiangongsi' placeholder='请输入' /></td>"+
         "</tr><tr><th><b class='red'>*</b>${loanformManage.infoLoanMoney}</b></th><td colspan='3'><input name='jltfispPsInfoList["+index+"].loanMoney' type='text' class='txt validate[required,custom[number2],minSize[1],maxSize[10]] shijizhifujine' placeholder='请输入' />元</td></tr>"+
         "<tr><th><b class='red'>*</b>${loanformManage.infoRepaymentDate}</b></th><td><input name='jltfispPsInfoList["+index+"].repaymentDate' type='text' onClick='WdatePicker({readOnly:true})' class='txt validate[required] shijihuankuanri' placeholder='请输入' /></td>"+
         "<th><b class='red'>*</b>${loanformManage.infoPrincipalInterest}</b></th><td><input name='jltfispPsInfoList["+index+"].principalInterest' type='tex' class='txt validate[required,custom[number2], minSize[1],maxSize[10]] shijizhifubenxi' placeholder='请输入' />元</td></tr>"+
         "<tr><th><b class='red'>*</b>${loanformManage.infoLendDate}</b></th><td><input name='jltfispPsInfoList["+index+"].lendDate' type='text' onClick='WdatePicker({readOnly:true})' class='txt validate[required] shijifangdairi' placeholder='请输入' /></td>"+
         "<th><b class='red'>*</b>${loanformManage.infoLoanTerm}</b></th><td><input name='jltfispPsInfoList["+index+"].loanTerm' type='text' class='txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]] daikuanqixian' placeholder='请输入' />月</td></tr>"+
         "</table>";
         $("table.tab3.module:first").after(content);
         index++;
     });
      //初始化加载经营地省、市、区
        $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            dateType:"json",
            success: function(msg){
            	 $("#officeProv").append("<option value='"+msg[7].id+"'>"+msg[7].name+"</option>");  
            	 for(var i=1;i<msg.length;i++){
                 //默认吉林省顶头
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
                 if(null!=officeCity || ""!=officeCity){
                      $("#officeCity   option[value='"+officeCity+"']").attr("selected",true);
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
	            	if(msg !=null && msg !=undefined){
                        if(msg.length <=0){
                        	$("#officeArea").hide();
                        }else
                        {
                        	$("#officeArea").show();
                         }
		            }
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
          
         //填写完企业基本信息以后点击取消跳转至首页
//          $('.proList .logbtn input.can').click(function(){
//         	 window.location.href="${path}/index";
//           });
         
       //填写完企业基本信息以后点击下一步
        $('.proList .logbtn input.nor').click(function(){
             var index=$(this).parents('.proList').index()-2;
             var url;
             var data;
             if(index==1){
                 if(!$('#coBase').validationEngine('validate')){
                   return false;
                 } 
                 url='${path}/loan/saveSubsidyCoBase?xss=true';
                 data=$("#coBase").serialize();
             }else if(index==2){
                 //保存填写申请表格
                 if(!$('#psMaterialInfo').validationEngine('validate')){
                   return false;
                 } 
                 url='${path}/loan/SavePsMaterialInfo?xss=true';
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


</script>