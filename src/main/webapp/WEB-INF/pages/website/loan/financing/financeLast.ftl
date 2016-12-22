<#assign path=request.contextPath />
<div class="alptable nlistCont">
   <h1 style="width:100%; background:none">吉林省科技股权融资申请表</h1>
   <div class="clear"></div>
   <table class="tab2" style="word-wrap:break-word;word-break:break-all;">
   		<tbody>
   			<tr class="tal">
                 <th>${formLabel.baseProjectName}</th>
                 <td><span>${jltfispCoBaseDto2.projectname}</span></td>
                 <th>${formLabel.baseTecDomain}</th>
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
                <th>${formLabel.baseCompany}</th>
                <td><span>${user.username}</span></td>
                <th>${formLabel.baseOfficeaddress}</th>
                <td colspan="3"><span>${provName}&nbsp;${cityName}&nbsp;${areaName}&nbsp;${jltfispCoBaseDto2.officeAddress}</span></td>
            </tr>
            <tr class="tal">
                 <th>${formLabel.baseRegisteredcapital}</th>
                 <td><span>${capilMoney}万元</span></td>
                 <th>${formLabel.baseRegisteredaddress}</th>
                 <td colspan="3"><span>${jltfispCoBaseDto2.registeredAddress}</span></td>
                 </tr>
                            <tr class="tal">
                                <th width="16.6%">${formLabel.baseCorporaterepresentative}</th>
                                <td width="16.6%"><span>${jltfispCoBaseDto2.corporateRepresentative}</span></td>
                                <th width="16.6%">${formLabel.baseEstablishtime}</th>
                                <td width="16.6%"><span>${jltfispCoBaseDto2.establishTime}</span></td>
                                <th width="16.6%">${formLabel.baseLinkemail}</th>
                                <td><span>${jltfispCoBaseDto2.linkEmail}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>${formLabel.basePostCode}</th>
                                <td><span>${jltfispCoBaseDto2.email}</span></td>
                                <th>${formLabel.baseSocialcreditcode}</th>
                                <td><span>${user.socialCode}</span></td>
                                <th>${formLabel.baseWorkerNumber}</th>
                                <td><span>${jltfispCoBaseDto2.workernumber}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>${formLabel.baseLinkman}</th>
                                <td><span>${jltfispCoBaseDto2.linkMan}</span></td>
                                <th>${formLabel.basePhoneorfax}</th>
                                <td><span>${jltfispCoBaseDto2.zoneDescription}-${jltfispCoBaseDto2.phoneOrFax}</span></td>
                                <th>${formLabel.baseLinkmobile}</th>
                                <td><span>${jltfispCoBaseDto2.linkMobile}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>${formLabel.baseCompanyUrl}</th>
                                <td  colspan="5"><span>${provName}&nbsp;${cityName}&nbsp;${areaName}&nbsp;${jltfispCoBaseDto2.officeAddress}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>${formLabel.baseRefereeCompany}</th>
                                <td><span>${jltfispCoBaseDto2.refereecompany}</span></td>
                                <th>${formLabel.baseReferee}</th>
                                <td colspan="3"><span>${jltfispCoBaseDto2.referee}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>${formLabel.baseRefereeMobile}</th>
                                <td><span>${jltfispCoBaseDto2.refereemobile}</span></td>
                                <th>${formLabel.baseRefereeEmail}</th>
                                <td colspan="3"><span>${jltfispCoBaseDto2.refereeemail}</span></td>
                            </tr>
                            <tr>
                                <th colspan="6">${formLabel.baseMainshareholder}</th>
                            </tr>
                            <tr>
                                <th colspan="2">${formLabel.baseShareholdername}</th>
                                <th colspan="2">${formLabel.baseCorporaterepresentative}</th>
                                <th colspan="2">${formLabel.baseStock}</th>
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
                                <th>${formLabel.baseMarketProductSummary}</th>
                                <td colspan="5"><span>${jltfispCoBaseDto2.marketproductsummary}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>${formLabel.baseManagerTeamSummary}</th>
                                <td colspan="5"><span>${jltfispCoBaseDto2.managerteamsummary}</span></td>
                            </tr>
                            <tr class="tal">
                            	<th>${formLabel.baseTechnologyQualifications}</th>
                                <td colspan="5">
                                	<#if jltfispCoBaseDto2.technologyqualifications==1>
			                 	 		<span>高科技企业</span>
			                 		<#elseif jltfispCoBaseDto2.technologyqualifications==2>
			                 	 		<span>科技小巨人企业</span>
			                 		<#elseif jltfispCoBaseDto2.technologyqualifications==3>
			                 			<span>科技小巨人培训企业</span>
			                 		<#elseif jltfispCoBaseDto2.technologyqualifications==3>
			                 	 		<span>软件企业</span>
			                 	 	<#else>
			                 	 		<span>其它</span>
			                 		</#if>
			                 	 </td>
                            </tr>
                            <tr>
                                <th colspan="6">近三年经营情况(单位：万元)</th>
                            </tr>
                            <tr class="tal">
                                <th>${formLabel.finMaterialYear}</th>
                                <td>${year-1}年</td>
                                <td>${year-2}年</td>
                                <td colspan="3">${year-3}年</td>
                            </tr>
                            <tr class="tal">
                                <th>${formLabel.finMaterialIncome}</th>
                                <td><span>${jltfispFinMaterial3.incomeLast}</span></td>
                                <td><span>${jltfispFinMaterial3.incomeBeforeLast}</span></td>
                                <td colspan="3"><span>${jltfispFinMaterial3.incomeThreeLast}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>${formLabel.finMaterialProfit}</th>
                                <td><span>${jltfispFinMaterial3.profitLast}</span></td>
                                <td><span>${jltfispFinMaterial3.profitBeforeLast}</span></td>
                                <td colspan="3"><span>${jltfispFinMaterial3.profitThreeLast}</span></td>
                            </tr>
                            <tr class="tal">
                                <th>${formLabel.finMaterialCapitals}</th>
                                <td colspan="5"><span>${jltfispFinMaterial3.capitals}&nbsp;万元</span></td>
                            </tr>
                            <tr class="tal">
                                <th>${formLabel.finMaterialRequireOrganization}</th>
                                <td colspan="5"><span>${jltfispFinMaterial3.requireOrganization}</span></td>
                            </tr class="tal">
                            <tr class="tal">
                                <th>${formLabel.finMaterialRequireService}</th>
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
                                        <p class="ntit"><span class="ml70"></span>公司名称：<U>&nbsp;&nbsp;&nbsp;&nbsp;${user.username}&nbsp;&nbsp;&nbsp;&nbsp;</U></p>
                                        <p class="ntit"><span class="ml70"></span>${year}&nbsp;&nbsp;年&nbsp;&nbsp;${month}&nbsp;&nbsp;月&nbsp;&nbsp;${date}&nbsp;&nbsp;日</span></p>
                                    </div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        
                        <p class="tip4" style="color:#d17d00">企业承诺：本企业提供上述信息真实可靠！</p>
                        <div class="logbtn" style="margin-top:30px;">
                            <input type="submit" class="can" value="返回修改" onclick="location.href='${path}/anon/loan/financeApply'"/>
                            <input type="button" class="nor" value="确认提交" onclick="location.href='${path}/anon/loan/submitFinanceApply'"/>
                            <input type="button" class="nor" value="打印输出"  onclick="location.href='${path}/business/printFinanceApply?businessType=6&infoId=${jltfispCoBaseDto2.id}'"/>
             </div>
</div>
