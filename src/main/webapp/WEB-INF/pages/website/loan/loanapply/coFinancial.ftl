                <#setting date_format="yyyy-MM-dd">
                     <!--附加财务明细-->
                        <div class="nlistCont" style="display:none;">
                        	<h3>附件:明细表<br/><span class="perc red"></span></h3>
                            <form id="coFinancial">
                            <input type="hidden" id="businesstype"   name="businesstype"   value="${applytype}"/>
                            <p class="ntit">1、企业应收款明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>序号</th>
                                    <th>单位名称</th>
                                    <th>应收款余额</th>
                                    <th>账龄(月)</th>
                                    <th>占百分比%</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[0].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[0].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[0].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[0].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[1].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[1].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[1].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[1].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[2].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[2].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[2].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[2].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[3].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[3].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[3].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[3].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>合计</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[4].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[4].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[4].zl}" name="zl" id="zl" type="text" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[4].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                            </table>
                            <p class="ntit">2、企业其他应收款明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>序号</th>
                                    <th>单位名称</th>
                                    <th>其他应收款余额</th>
                                    <th>账龄(月)</th>
                                    <th>占百分比%</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[5].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[5].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[5].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[5].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[6].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[6].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[6].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[6].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[7].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[7].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[7].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[7].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[8].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[8].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[8].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[8].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>合计</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[9].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[9].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[9].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[9].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                            </table>
                            <p class="ntit">3、企业应付款明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>序号</th>
                                    <th>单位名称</th>
                                    <th>应付款余额</th>
                                    <th>账龄(月)</th>
                                    <th>占百分比%</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[10].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[10].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[10].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[10].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[11].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[11].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[11].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[11].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[12].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[12].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[12].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[12].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[13].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[13].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[13].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[13].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>合计</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[14].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[14].yszkye}" name="yszkye" id="yszkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[14].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[14].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                            </table>
                            <p class="ntit">4、企业其他应付款明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>序号</th>
                                    <th>单位名称</th>
                                    <th>其他应付款余额</th>
                                    <th>账龄(月)</th>
                                    <th>占百分比%</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[15].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[15].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[15].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[15].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[16].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[16].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[16].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[16].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[17].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[17].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[17].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[17].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[18].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[18].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[18].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[18].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>合计</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[19].company}" name="company" id="company type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[19].qtzkye}" name="qtzkye" id="qtzkye" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[19].zl}" name="zl" id="zl" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[19].percent}" name="percent" id="percent" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                            </table>
                            <p class="ntit">5、企业银行借款明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>序号</th>
                                    <th>贷款银行</th>
                                    <th>贷款金额</th>
                                    <th>担保方式</th>
                                    <th>开始日期</th>
                                    <th>结束日期</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[20].loanBank}" name="loanBank" id="loanBank" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[20].loanAccount}" name="loanAccount" id="loanAccount" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[20].sureMethod}" name="sureMethod" id="sureMethod" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="<#if coAll.jltfispCoFinancialList[20].startTime?date != "">${coAll.jltfispCoFinancialList[20].startTime?date}</#if>" name="startTime" id="startTime" onClick="WdatePicker()" type="text" class="txt2 validate[required]" /></td>
                                    <td><input value="<#if coAll.jltfispCoFinancialList[20].endTime?date != "">${coAll.jltfispCoFinancialList[20].endTime?date}</#if>" name="endTime" id="endTime" onClick="WdatePicker()" type="text" class="txt2 validate[required]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[21].loanBank}" name="loanBank" id="loanBank" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[21].loanAccount}" name="loanAccount" id="loanAccount" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[21].sureMethod}" name="sureMethod" id="sureMethod" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="<#if coAll.jltfispCoFinancialList[21].startTime?date != "">${coAll.jltfispCoFinancialList[21].startTime?date}</#if>" name="startTime" id="startTime" onClick="WdatePicker()" type="text" class="txt2 validate[required]" /></td>
                                    <td><input value="<#if coAll.jltfispCoFinancialList[21].endTime?date != "">${coAll.jltfispCoFinancialList[21].endTime?date}</#if>" name="endTime" id="endTime" onClick="WdatePicker()" type="text" class="txt2 validate[required]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[22].loanBank}" name="loanBank" id="loanBank" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[22].loanAccount}" name="loanAccount" id="loanAccount" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[22].sureMethod}" name="sureMethod" id="sureMethod" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="<#if coAll.jltfispCoFinancialList[22].startTime?date != ''>${coAll.jltfispCoFinancialList[22].startTime?date}</#if>" name="startTime" id="startTime" onClick="WdatePicker()" type="text" class="txt2 validate[required]" /></td>
                                    <td><input value="<#if coAll.jltfispCoFinancialList[22].endTime?date != ''>${coAll.jltfispCoFinancialList[22].endTime?date}</#if>" name="endTime" id="endTime" onClick="WdatePicker()" type="text" class="txt2 validate[required]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[23].loanBank}" name="loanBank" id="loanBank" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[23].loanAccount}" name="loanAccount" id="loanAccount" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[23].sureMethod}" name="sureMethod" id="sureMethod" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="<#if coAll.jltfispCoFinancialList[23].startTime?date != ''>${coAll.jltfispCoFinancialList[23].startTime?date}</#if>" name="startTime" id="startTime" onClick="WdatePicker()" type="text" class="txt2 validate[required]" /></td>
                                    <td><input value="<#if coAll.jltfispCoFinancialList[23].endTime?date != ''>${coAll.jltfispCoFinancialList[23].endTime?date}</#if>" name="endTime" id="endTime" onClick="WdatePicker()" type="text" class="txt2 validate[required]" /></td>
                                </tr>
                                <tr>
                                	<td><b>其他金融机构融资</b></td>
                                    <td colspan="2"><input value="${coAll.jltfispCoFinancialList[24].otherrz}" name="otherrz" id="otherrz" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number]]" style="width:316px;" /></td>
                                    <td><b>民间融资</b></td>
                                    <td colspan="2"><input value="${coAll.jltfispCoFinancialList[25].mjjk}" name="mjjk" id="mjjk" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number]]" style="width:316px;" /></td>
                                </tr>
                            </table>
                            <p class="ntit">6、企业关联公司明细表<span class="red fr">单位：万元</span></p>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th>序号</th>
                                    <th>关联企业名称</th>
                                    <th>关系</th>
                                    <th>注册资本</th>
                                    <th>主营业务</th>
                                    <th>主营收入</th>
                                </tr>
                                <tr>
                                	<td>1</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[26].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[26].gx}" name="gx" id="gx" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[26].zczb}" name="zczb" id="zczb" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[26].zyyw}" name="zyyw" id="zyyw" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[26].zysr}" name="zysr" id="zysr" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>2</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[27].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[27].gx}" name="gx" id="gx" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[27].zczb}" name="zczb" id="zczb" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[27].zyyw}" name="zyyw" id="zyyw" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[27].zysr}" name="zysr" id="zysr" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>3</td>
                                     <td><input value="${coAll.jltfispCoFinancialList[28].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[28].gx}" name="gx" id="gx" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[28].zczb}" name="zczb" id="zczb" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[28].zyyw}" name="zyyw" id="zyyw" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[28].zysr}" name="zysr" id="zysr" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>4</td>
                                    <td><input value="${coAll.jltfispCoFinancialList[29].company}" name="company" id="company" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[29].gx}" name="gx" id="gx" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[29].zczb}" name="zczb" id="zczb" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[29].zyyw}" name="zyyw" id="zyyw" type="text" class="txt2 validate[required,minSize[2],maxSize[20]]" /></td>
                                    <td><input value="${coAll.jltfispCoFinancialList[29].zysr}" name="zysr" id="zysr" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                            </table>
                            </form>
                            <div class="btnFld"><input type="button" value="保存并下一步" class="btnSave" /><a href="${path}/loan/onlineApplyPage"><input type="button" class="btnCan" value="取消" /></a></div>
                        </div>