<#assign path=request.contextPath />
<thead>
  <tr>
      <th width="16.2%">企业名称</th>
      <#if t.type != '5'>
      	<th width="16.2%">融资金额/万元</th>
      </#if>
      <th>所属领域</th>
      <th>申请时间</th>
      <th width="11.2%">状态</th>
      <th width="11.2%">操作</th>
  </tr>
  </thead>
  <tbody>
  <#list pageInfo.data as business>
  <tr>
      <td>${business.companyName}</td>
      <#if t.type != '5'>
      	<td>${business.loanValue}</td>
      </#if>
      <td>${business.tecName}</td>
      <td>${(business.submitDate?string("yyyy-MM-dd"))}</td>
      <td>
      	<#if business.state = 0>
      		已提交
      	<#elseif business.state = 1>
      		通过
      	<#elseif business.state =2>
      		不通过
      	<#else>
      		未提交
      	</#if>
      </td>
      <td>
      <#if business.state == 3>
     	<#if business.type =='5'>
     		<a href="${path}/loan/subsidy?isReFill=${business.type}" target="_blank">编辑</a>
     		<#elseif business.type =='6'>
     		<a href="${path}/loan/financeApply" target="_blank">编辑</a>
     		<#else>
     		<a href="${path}/loan/onlineApplyPage?applytype=${business.type}" target="_blank">编辑</a>
     	</#if>
     	<a href="javascript:;" onclick="subInfo(${business.id},${business.type})" target="_blank">提交</a>
      <#elseif business.type =='5'>
      	<a href="${path}/business/showSubsidyDetail?businessType=${business.type}" target="_blank">查看</a>
      <#elseif business.type =='1'>
      	<a href="${path}/business/detail?businessType=${business.type}" target="_blank">查看</a>
      <#elseif business.type =='6'>
      	<a href="${path}/business/showFinanceApplyDetail?businessType=${business.type}" target="_blank">查看</a>
      </#if>
      </td>
  </tr>
  </#list>
  </tbody>