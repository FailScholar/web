<#assign path=request.contextPath />
<#assign n = 0/>
 <div class="info">
                      <ul class="infoTab">
                          <#list columnList as column>
                          <#assign n = n+1>
                          <!--<li <#if type=="1">class="active"</#if>><a href="javascript:;">科技金融专家</a></li>-->
                          <li name="${column.id}" id="Type${column.id}"><a href="javascript:void(0);">${column.columnName}</a></li>
                          <#if (n>4) >
                          <#break>
                          </#if>
                          </#list>
                          <#if  (columnList?size>4)>
                          <li>
                         <select id="columnName" name="columnName" >
                         <option  value="">请选择</option>
                         <#list columnList as column>
                         <#if   (column_index>4)>
                         <option  value="${column.id}">${column.columnName}</option>
                         </#if>
                         </#list>
                         </select>
                         </li>
                         </#if>
                      </ul>
                      <div class="clear"></div>
                      <#list columnList as column>
                          <!--<a href="#" class="apply2"<#if type!="1">style="width:150px; display:none"</#if><#if type=="1">style="width:150px;"</#if>>申请成为科技金融专家</a>-->
                          <a href="${path}/anon/addExpertPage?columnId=${column.id}" class="apply2" style="width:150px;" id="${column.id}">申请成为${column.columnName}</a>
                      </#list>
                      
                      <div class="infoList">
                           <ul class="ul2">
                           <#list pm.datas as expert>
                              <li>
                                  <img width="220px" height="246px" src="${path}/${expert.agencylogo}" alt="head" style="cursor: pointer;" onclick="expertDetail(${expert.id})"/>
                                  <h4 class="blue">${expert.worktitle}</h4>
                                  <p>${expert.workpost} | ${expert.businesaddress}</p>
                                  <p class="phone">${expert.phone}</p>
                                  <p class="email">${expert.email}</p>
                              </li>
                           </#list>
</ul>
                      </div>
                  </div>
                  <div class="clear"></div>
                  <#include "website/common/commonPager.ftl"/>
                  <!--<div class="page">
                      <a href="javascript:;">&lt;</a>
                      <a href="javascript:;">1</a>
                      <a href="javascript:;">2</a>
                      <span>...</span>
                      <a href="javascript:;">15</a>
                      <a href="javascript:;">16</a>
                      <a href="javascript:;">&gt;</a>
                  </div>-->
<script type="text/javascript">
    $(document).ready(function(e) {
    var columnId=${columnId};
    $('#Type'+columnId).addClass('active');
    $('.apply2').hide();
    $('#'+columnId).show();
    $("#columnName   option[value='"+columnId+"']").attr("selected",true);
    val = $('select option:selected').val();
    if('' != val){
    $('.infoTab li').eq(5).addClass('active');
    }

     $("#columnName").change(function(){  
        var columnId=$(this).val();
        $.ajax({
                type: 'POST',
                url:'${path}/anon/expert',
                data: {columnId: columnId,type:1},
                success: function (data) {
                $('.content').html(data);
                }
          });
          $("#columnName   option[value='"+columnId+"']").attr("selected",true);
          $('.infoTab li').eq(5).addClass('active');
        }); 
    
    $('.infoTab li').click(function(){
       var index=$(this).index();
       if(index < 5){ 
        var columnId=$(this).attr("name");
        $(this).addClass('active').siblings('li').removeClass('active');
		<!--传当前子栏目ID-->
		$.ajax({
                type: 'POST',
                url:'${path}/anon/expert',
                data: {columnId: columnId,type:1},
                success: function (data) {
                $('.content').html(data);
                }
          });
		$('.apply2').hide();
		$('#'+columnId).show();
		}
	});
});
</script>