<div class="alptable nlistCont">
   <h1 style="width:100%; background:none">吉林省科技股权融资申请表</h1>
   <div class="clear"></div>
   <table class="tab2" style="width:100%">
   		<tbody>
   			<tr class="tal">
                 <th>项目名称</th>
                 <td><span>${jltfispCoBaseDto2.projectname}</span></td>
                 <th>所属技术领域</th>
                  <td colspan="3">
                 	 <#if jltfispCoBaseDto2.tecdomain==1>
                 	 	<span>电子信息技术</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==2>
                 	 	<span>生物医药技术</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==3>
                 		<span>航空航天技术</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==4>
                 		<span>新科技技术</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==5>
                 	 	<span>高技术服务业</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==6>
                 		<span>新能源节能技术</span>
                 	 <#elseif jltfispCoBaseDto2.tecdomain==7>
                 	    <span>新能源节能技术</span>
                 	 <#else>
                 	 	<span>资源环境技术</span>
                 	 </#if>
                  </td>
            </tr>
            <tr class="tal">
                <th>公司名称(全称)</th>
                <td><span>${user.username}</span></td>
                <th>公司通讯地址</th>
                <td colspan="3"><span>${provName}&nbsp;${cityName}&nbsp;${areaName}&nbsp;${jltfispCoBaseDto2.officeAddress}</span></td>
            </tr>
            <tr class="tal">
                 <th>注册资本</th>
                 <td><span>${jltfispCoBaseDto2.registeredCapital}</span></td>
                 <th>注册地址</th>
                 <td colspan="3"><span>${jltfispCoBaseDto2.registeredAddress}</span></td>
                 </tr>
                            <tr class="tal">
                                <th width="16.6%">法人代表</th>
                                <td width="16.6%"><span>${jltfispCoBaseDto2.corporateRepresentative}</span></td>
                                <th width="16.6%">成立时间</th>
                                <td width="16.6%"><span>${jltfispCoBaseDto2.establishTime}</span></td>
                                <th width="16.6%">联系人邮箱</th>
                                <td><span>${jltfispCoBaseDto2.linkEmail}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>邮编</th>
                                <td><span>${jltfispCoBaseDto2.email}</span></td>
                                <th>组织机构代码</th>
                                <td><span>${user.socialCode}</span></td>
                                <th>职工人数(人)</th>
                                <td><span>${jltfispCoBaseDto2.workernumber}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>联系人姓名</th>
                                <td><span>${jltfispCoBaseDto2.linkMan}</span></td>
                                <th>联系人电话</th>
                                <td><span>${jltfispCoBaseDto2.phoneOrFax}</span></td>
                                <th>联系人手机</th>
                                <td><span>${jltfispCoBaseDto2.linkMobile}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>公司网址</th>
                                <td  colspan="5"><span>${provName}&nbsp;${cityName}&nbsp;${areaName}&nbsp;${jltfispCoBaseDto2.officeAddress}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>推荐人单位</th>
                                <td><span>${jltfispCoBaseDto2.refereecompany}</span></td>
                                <th>推荐人姓名</th>
                                <td colspan="3"><span>${jltfispCoBaseDto2.referee}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>推荐人手机</th>
                                <td><span>${jltfispCoBaseDto2.refereemobile}</span></td>
                                <th>推荐人邮箱</th>
                                <td colspan="3"><span>${jltfispCoBaseDto2.refereeemail}</span></td>
                            </tr>
                            <tr>
                                <th colspan="6">主要股东</th>
                            </tr>
                            <tr>
                                <th colspan="2">股东名称</th>
                                <th colspan="2">法人代表(或证件号)</th>
                                <th colspan="2">所占股份%</th>
                            </tr>
                             <#if jltfispCoBaseDto2.jltfispFinShareholderList?? && (jltfispCoBaseDto2.jltfispFinShareholderList?size > 0) >
	                            <#list jltfispCoBaseDto2.jltfispFinShareholderList as jltfispFinShareholderList>
	                         		<tr>
	                               	 	 <td colspan="2"><span>${jltfispFinShareholderList.name}</span></td>
	                               		 <td colspan="2"><span>${jltfispFinShareholderList.number}</span></td>
	                               		 <td colspan="2"><span>${jltfispFinShareholderList.ratio}</span></td>
	                            	</tr>
				      			 </#list> 
                            </#if>
                            <tr>
                                <th colspan="6">项目简介</th>
                            </tr>
                            <tr class="tal">
                                <th>市场及产品综述</th>
                                <td colspan="5"><span>${jltfispCoBaseDto2.marketproductsummary}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>公司管理团队简介</th>
                                <td colspan="5"><span>${jltfispCoBaseDto2.managerteamsummary}</span></td>
                            </tr>
                            <tr class="tal">
                            	<th>科技资质</th>
                                <td colspan="5">
                                	<#if jltfispCoBaseDto2.technologyqualifications==1>
			                 	 		<span>高科技企业&nbsp;${jltfispCoBaseDto2.otherDesc}</span>
			                 		<#elseif jltfispCoBaseDto2.technologyqualifications==2>
			                 	 		<span>科技小巨人企业&nbsp;${jltfispCoBaseDto2.otherDesc}</span>
			                 		<#elseif jltfispCoBaseDto2.technologyqualifications==3>
			                 			<span>科技小巨人培训企业&nbsp;${jltfispCoBaseDto2.otherDesc}</span>
			                 		<#else>
			                 	 		<span>软件企业&nbsp;${jltfispCoBaseDto2.otherDesc}</span>
			                 		</#if>
			                 	 </td>
                            </tr>
                            <tr>
                                <th colspan="6">近三年经营情况(单位：万元)</th>
                            </tr>
                            <tr class="tal">
                                <th>年度</th>
                                <td>${year-1}年</td>
                                <td>${year-2}年</td>
                                <td colspan="3">${year-3}年</td>
                            </tr>
                            <tr class="tal">
                                <th>总收入</th>
                                <td><span>${jltfispFinMaterial3.incomeLast}</span></td>
                                <td><span>${jltfispFinMaterial3.incomeBeforeLast}</span></td>
                                <td colspan="3"><span>${jltfispFinMaterial3.incomeThreeLast}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>净利润</th>
                                <td><span>${jltfispFinMaterial3.profitLast}</span></td>
                                <td><span>${jltfispFinMaterial3.profitBeforeLast}</span></td>
                                <td colspan="3"><span>${jltfispFinMaterial3.profitThreeLast}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>融资金额</th>
                                <td colspan="5"><span>${jltfispFinMaterial3.capitals}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>对投资机构的要求</th>
                                <td colspan="5"><span>${jltfispFinMaterial3.requireOrganization}</span></td>
                            </tr class="tal">
                            <tr class="tal">
                                <th>服务要求</th>
                                <td colspan="5">
 									<#if jltfispFinMaterial3.requireService=="1">
			                 	 		<span>网站上发布&nbsp;${jltfispFinMaterial3.requireServiceText}</span>
			                 		<#elseif jltfispFinMaterial3.requireService=="2">
			                 	 		<span>项目洽谈会发布&nbsp;${jltfispFinMaterial3.requireServiceText}</span>
			                 		<#else>
			                 	 		<span>与投资机构个别洽谈&nbsp;${jltfispFinMaterial3.requireServiceText}</span>
			                 		</#if>
								</td>
                            </tr>
                            <tr>
                                <td colspan="6">
                                    <div class="cover cv1 fr">
                                        <p class="ntit">公司名称：<U>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</U></p>
                                        <p class="ntit">填&nbsp;表&nbsp;人    ：<U>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</U></p>
                                        <p class="ntit"><span class="ml70"></span>&nbsp;&nbsp;&nbsp;&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;月&nbsp;&nbsp;&nbsp;&nbsp;日</span></p>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        
                        <p class="tip4" style="color:#d17d00">企业承诺：本企业提供上述信息真实可靠！</p>
                        <div class="logbtn" style="margin-top:30px;">
                            <input type="submit" class="can" value="返回修改" onclick="location.href='/jltfisp_web/anon/loan/financeApply'"/>
                            <input type="button" class="nor" value="确认提交" onclick="location.href='/jltfisp_web/anon/loan/submitFinanceApply'"/>
                            <input type="button" class="nor" value="打印输出"  onclick="location.href='/jltfisp_web/business/printFinanceApply?businessType=6'"/>
             </div>
</div>
