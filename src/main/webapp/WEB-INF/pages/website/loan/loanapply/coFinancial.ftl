                <#setting date_format="yyyy-MM-dd">
                     <!--附加财务明细-->
                        <div class="nlistCont" style="display:none;">
                        	<h3>附件:明细表<br/><span class="perc red"></span></h3>
                            <form id="coFinancial">
                            <input type="hidden" id="businesstype"   name="businesstype"   value="${applytype}"/>
                            <p class="ntit">1、企业应收款明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>${loanformManage.finOrdernumOne}</th>
                                    <th><b class="red">*</b>${loanformManage.finCompanyOne}</th>
                                    <th><b class="red">*</b>${loanformManage.finYszkyeOne}</th>
                                    <th><b class="red">*</b>${loanformManage.finZlOne}</th>
                                    <th><b class="red">*</b>${loanformManage.finPercentOne}</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[0].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[0].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[0].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[0].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[1].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[1].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[1].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[1].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[2].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[2].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[2].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[2].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[3].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[3].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[3].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[3].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>合计</td>
                                    <td><input value="1" name="company" id="company" type="hidden" class="txt2" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[4].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[4].zl}" name="zl" id="zl" type="text" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[4].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                            </table>
                            <p class="ntit">2、企业其他应收款明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>${loanformManage.finOrdernumTwo}</th>
                                    <th><b class="red">*</b>${loanformManage.finCompanyTwo}</th>
                                    <th><b class="red">*</b>${loanformManage.finYszkyeTwo}</th>
                                    <th><b class="red">*</b>${loanformManage.finZlTwo}</th>
                                    <th><b class="red">*</b>${loanformManage.finPercentTwo}</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[5].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[5].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[5].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[5].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[6].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[6].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[6].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[6].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[7].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[7].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[7].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[7].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[8].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[8].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[8].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[8].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>合计</td>
                                    <td><input value="1" name="company" id="company" type="hidden" class="txt2" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[9].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[9].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[9].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                            </table>
                            <p class="ntit">3、企业应付款明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>${loanformManage.finOrdernumThree}</th>
                                    <th><b class="red">*</b>${loanformManage.finCompanyThree}</th>
                                    <th><b class="red">*</b>${loanformManage.finYszkyeThree}</th>
                                    <th><b class="red">*</b>${loanformManage.finZlThree}</th>
                                    <th><b class="red">*</b>${loanformManage.finPercentThree}</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[10].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[10].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[10].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[10].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[11].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[11].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[11].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[11].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[12].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[12].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[12].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[12].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[13].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[13].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[13].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[13].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>合计</td>
                                    <td><input value="1" name="company" id="company" type="hidden" class="txt2" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[14].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[14].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[14].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                            </table>
                            <p class="ntit">4、企业其他应付款明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>${loanformManage.finOrdernumFour}</th>
                                    <th><b class="red">*</b>${loanformManage.finCompanyFour}</th>
                                    <th><b class="red">*</b>${loanformManage.finYszkyeFour}</th>
                                    <th><b class="red">*</b>${loanformManage.finZlFour}</th>
                                    <th><b class="red">*</b>${loanformManage.finPercentFour}</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[15].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[15].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[15].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[15].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[16].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[16].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[16].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[16].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[17].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[17].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[17].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[17].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[18].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[18].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[18].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[18].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                                <tr>
                                	<td>合计</td>
                                    <td><input value="1" name="company" id="company" type="hidden" class="txt2" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[19].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[19].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[19].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],max[100],custom[number3]]" /></td>
                                </tr>
                            </table>
                            <p class="ntit">5、企业银行借款明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>${loanformManage.finOrdernumFive}</th>
                                    <th><b class="red">*</b>${loanformManage.finLoanbank}</th>
                                    <th><b class="red">*</b>${loanformManage.finLoanaccount}</th>
                                    <th><b class="red">*</b>${loanformManage.finSuremethod}</th>
                                    <th><b class="red">*</b>${loanformManage.finStarttime}</th>
                                    <th><b class="red">*</b>${loanformManage.finEndtime}</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[20].loanBank}" name="loanBank" id="loanBank" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[20].loanAccount}" name="loanAccount" id="loanAccount" type="text" class="txt2 validate[required,min[0],minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[20].sureMethod}" name="sureMethod" id="sureMethod" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="<#if (coAll.jltfispCoFinancialList[20].startTime?exists)>${coAll.jltfispCoFinancialList[20].startTime?date}</#if>" name="startTime" id="startTime1" onClick="WdatePicker({maxDate:'#F{$dp.$D(\'endTime1\')}',readOnly:true})" type="text" class="txt2 validate[required]" /></td>
                                    <td><input value="<#if (coAll.jltfispCoFinancialList[20].endTime?exists)>${coAll.jltfispCoFinancialList[20].endTime?date}</#if>" name="endTime" id="endTime1" onClick="WdatePicker({minDate:'#F{$dp.$D(\'startTime1\')}',readOnly:true})" type="text" class="txt2 validate[required]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[21].loanBank}" name="loanBank" id="loanBank" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[21].loanAccount}" name="loanAccount" id="loanAccount" type="text" class="txt2 validate[required,min[0],minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[21].sureMethod}" name="sureMethod" id="sureMethod" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="<#if (coAll.jltfispCoFinancialList[21].startTime?exists)>${coAll.jltfispCoFinancialList[21].startTime?date}</#if>" name="startTime" id="startTime2" onClick="WdatePicker({maxDate:'#F{$dp.$D(\'endTime2\')}',readOnly:true})" type="text" class="txt2 validate[required]" /></td>
                                    <td><input value="<#if (coAll.jltfispCoFinancialList[21].endTime?exists)>${coAll.jltfispCoFinancialList[21].endTime?date}</#if>" name="endTime" id="endTime2" onClick="WdatePicker({minDate:'#F{$dp.$D(\'startTime2\')}',readOnly:true})" type="text" class="txt2 validate[required]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[22].loanBank}" name="loanBank" id="loanBank" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[22].loanAccount}" name="loanAccount" id="loanAccount" type="text" class="txt2 validate[required,min[0],minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[22].sureMethod}" name="sureMethod" id="sureMethod" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="<#if (coAll.jltfispCoFinancialList[22].startTime?exists)>${coAll.jltfispCoFinancialList[22].startTime?date}</#if>" name="startTime" id="startTime3" onClick="WdatePicker({maxDate:'#F{$dp.$D(\'endTime3\')}',readOnly:true})" type="text" class="txt2 validate[required]" /></td>
                                    <td><input value="<#if (coAll.jltfispCoFinancialList[22].endTime?exists)>${coAll.jltfispCoFinancialList[22].endTime?date}</#if>" name="endTime" id="endTime3" onClick="WdatePicker({minDate:'#F{$dp.$D(\'startTime3\')}',readOnly:true})" type="text" class="txt2 validate[required]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[23].loanBank}" name="loanBank" id="loanBank" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[23].loanAccount}" name="loanAccount" id="loanAccount" type="text" class="txt2 validate[required,min[0],minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[23].sureMethod}" name="sureMethod" id="sureMethod" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="<#if (coAll.jltfispCoFinancialList[23].startTime?exists)>${coAll.jltfispCoFinancialList[23].startTime?date}</#if>" name="startTime" id="startTime4" onClick="WdatePicker({maxDate:'#F{$dp.$D(\'endTime4\')}',readOnly:true})" type="text" class="txt2 validate[required]" /></td>
                                    <td><input value="<#if (coAll.jltfispCoFinancialList[23].endTime?exists)>${coAll.jltfispCoFinancialList[23].endTime?date}</#if>" name="endTime" id="endTime4" onClick="WdatePicker({minDate:'#F{$dp.$D(\'startTime4\')}',readOnly:true})" type="text" class="txt2 validate[required]" /></td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b><b>${loanformManage.finOtherrz}</b></td>
                                    <td colspan="2"><input value="${coAll.jltfispCoFinancialList[24].otherrz}" name="otherrz" id="otherrz" type="text" class="txt validate[required,minSize[1],maxSize[10],min[0],custom[number2]]" style="width:316px;" /></td>
                                    <td><b class="red">*</b><b>${loanformManage.finMjjk}</b></td>
                                    <td colspan="2"><input value="${coAll.jltfispCoFinancialList[25].mjjk}" name="mjjk" id="mjjk" type="text" class="txt validate[required,minSize[1],maxSize[10],min[0],custom[number]]" style="width:316px;" /></td>
                                </tr>
                            </table>
                            <p class="ntit">6、企业关联公司明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>${loanformManage.finOrdernumSix}</th>
                                    <th><b class="red">*</b>${loanformManage.finCompanySix}</th>
                                    <th><b class="red">*</b>${loanformManage.finGx}</th>
                                    <th><b class="red">*</b>${loanformManage.finZczb}</th>
                                    <th><b class="red">*</b>${loanformManage.finZyyw}</th>
                                    <th><b class="red">*</b>${loanformManage.finZysr}</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[26].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[26].gx}" name="gx" id="gx" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[26].zczb}" name="zczb" id="zczb" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[26].zyyw}" name="zyyw" id="zyyw" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[26].zysr}" name="zysr" id="zysr" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[27].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[27].gx}" name="gx" id="gx" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[27].zczb}" name="zczb" id="zczb" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[27].zyyw}" name="zyyw" id="zyyw" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[27].zysr}" name="zysr" id="zysr" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                     <td><input value="${coAll.jltfispCoFinancialList[28].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[28].gx}" name="gx" id="gx" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[28].zczb}" name="zczb" id="zczb" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[28].zyyw}" name="zyyw" id="zyyw" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[28].zysr}" name="zysr" id="zysr" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[29].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[29].gx}" name="gx" id="gx" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[29].zczb}" name="zczb" id="zczb" type="text" class="txt2 validate[required,minSize[1],min[0],maxSize[10],custom[number2]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[29].zyyw}" name="zyyw" id="zyyw" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[29].zysr}" name="zysr" id="zysr" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                            </table>
                            </form>
                            <div class="btnFld"><input type="button" value="保存并下一步" class="btnSave" /><a href="${path}/loan/onlineApplyPage?applytype=${applytype}"><input type="button" class="btnCan" value="取消" /></a></div>
                        </div>