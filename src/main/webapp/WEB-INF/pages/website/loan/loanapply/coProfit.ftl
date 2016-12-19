                        <!--利润表-->
                        <div class="nlistCont" style="display:none;">
                        	<p class="ntit">利润表<span class="red">(财务报表是贷款审核的重要依据，请正确完整填写。须与提交的书面纳税报表一致！</span>)<span class="fr">单位：元</span></p>
                            <form id="coProfit">
                            <input type="hidden" id="businesstype"   name="businesstype"   value="${applytype}"/>
                            <table width="100%" class="tab3 tab4">
                                <tr>
                                	<td><b>主营业务收入</b></td>
                                    <td><input name="mainincome" id="mainincome" value="${coAll.jltfispCoProfit[0].mainincome}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="mainincome" id="mainincome" value="${coAll.jltfispCoProfit[1].mainincome}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="mainincome" id="mainincome" value="${coAll.jltfispCoProfit[2].mainincome}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="mainincome" id="mainincome" value="${coAll.jltfispCoProfit[3].mainincome}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>减：主营业务成本</td>
                                    <td><input name="maincost" id="maincost" value="${coAll.jltfispCoProfit[0].maincost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="maincost" id="maincost" value="${coAll.jltfispCoProfit[1].maincost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="maincost" id="maincost" value="${coAll.jltfispCoProfit[2].maincost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="maincost" id="maincost" value="${coAll.jltfispCoProfit[3].maincost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>减：主营业务税金及附加</td>
                                    <td><input name="maintax" id="maintax" value="${coAll.jltfispCoProfit[0].maintax}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="maintax" id="maintax" value="${coAll.jltfispCoProfit[1].maintax}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="maintax" id="maintax" value="${coAll.jltfispCoProfit[2].maintax}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="maintax" id="maintax" value="${coAll.jltfispCoProfit[3].maintax}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td><b>主营业务利润(亏损以"-"号填列)</b></td>
                                    <td><input name="mainprofit" id="mainprofit" value="${coAll.jltfispCoProfit[0].mainprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="mainprofit" id="mainprofit" value="${coAll.jltfispCoProfit[1].mainprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="mainprofit" id="mainprofit" value="${coAll.jltfispCoProfit[2].mainprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="mainprofit" id="mainprofit" value="${coAll.jltfispCoProfit[3].mainprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>加：其他业务利润(亏损以"-"号填列)</td>
                                    <td><input name="otherprofit" id="otherprofit" value="${coAll.jltfispCoProfit[0].otherprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="otherprofit" id="otherprofit" value="${coAll.jltfispCoProfit[1].otherprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="otherprofit" id="otherprofit" value="${coAll.jltfispCoProfit[2].otherprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="otherprofit" id="otherprofit" value="${coAll.jltfispCoProfit[3].otherprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>减：营业费用</td>
                                    <td><input name="businesscost" id="businesscost" value="${coAll.jltfispCoProfit[0].businesscost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="businesscost" id="businesscost" value="${coAll.jltfispCoProfit[1].businesscost}"  type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="businesscost" id="businesscost" value="${coAll.jltfispCoProfit[2].businesscost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="businesscost" id="businesscost" value="${coAll.jltfispCoProfit[3].businesscost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>减：管理费用</td>
                                    <td><input name="managecost" id="managecost"  value="${coAll.jltfispCoProfit[0].managecost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="managecost" id="managecost" value="${coAll.jltfispCoProfit[1].managecost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="managecost" id="managecost" value="${coAll.jltfispCoProfit[2].managecost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="managecost" id="managecost" value="${coAll.jltfispCoProfit[3].managecost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>减：财务费用</td>
                                    <td><input name="financecost" id="financecost" value="${coAll.jltfispCoProfit[0].financecost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="financecost" id="financecost" value="${coAll.jltfispCoProfit[1].financecost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="financecost" id="financecost" value="${coAll.jltfispCoProfit[2].financecost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="financecost" id="financecost" value="${coAll.jltfispCoProfit[3].financecost}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td><b>营业利润(亏损以"-"号填列)</b></td>
                                    <td><input name="businessprofit" id="businessprofit" value="${coAll.jltfispCoProfit[0].businessprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="businessprofit" id="businessprofit" value="${coAll.jltfispCoProfit[1].businessprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="businessprofit" id="businessprofit" value="${coAll.jltfispCoProfit[2].businessprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="businessprofit" id="businessprofit" value="${coAll.jltfispCoProfit[3].businessprofit}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>加：投资收益(亏损以"-"号填列)</td>
                                    <td><input name="investmentincome" id="investmentincome" value="${coAll.jltfispCoProfit[0].investmentincome}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="investmentincome" id="investmentincome" value="${coAll.jltfispCoProfit[1].investmentincome}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="investmentincome" id="investmentincome" value="${coAll.jltfispCoProfit[2].investmentincome}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="investmentincome" id="investmentincome" value="${coAll.jltfispCoProfit[3].investmentincome}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>加：营业外收入</td>
                                    <td><input name="otherincome" id="otherincome" type="text" value="${coAll.jltfispCoProfit[0].otherincome}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="otherincome" id="otherincome" type="text" value="${coAll.jltfispCoProfit[1].otherincome}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="otherincome" id="otherincome" type="text" value="${coAll.jltfispCoProfit[2].otherincome}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="otherincome" id="otherincome" type="text" value="${coAll.jltfispCoProfit[3].otherincome}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>减：营业外支出</td>
                                    <td><input name="otherpay" id="otherpay" type="text" value="${coAll.jltfispCoProfit[0].otherpay}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="otherpay" id="otherpay" type="text" value="${coAll.jltfispCoProfit[1].otherpay}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="otherpay" id="otherpay" type="text" value="${coAll.jltfispCoProfit[2].otherpay}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="otherpay" id="otherpay" type="text" value="${coAll.jltfispCoProfit[3].otherpay}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>减：资产减值损失</td>
                                    <td><input name="assetloss" id="assetloss" type="text" value="${coAll.jltfispCoProfit[0].assetloss}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="assetloss" id="assetloss" type="text" value="${coAll.jltfispCoProfit[1].assetloss}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="assetloss" id="assetloss" type="text" value="${coAll.jltfispCoProfit[2].assetloss}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="assetloss" id="assetloss" type="text" value="${coAll.jltfispCoProfit[3].assetloss}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td><b>利润总额(亏损以"-"号填列)</b></td>
                                    <td><input name="profitamount" id="profitamount" type="text" value="${coAll.jltfispCoProfit[0].profitamount}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="profitamount" id="profitamount" type="text" value="${coAll.jltfispCoProfit[1].profitamount}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="profitamount" id="profitamount" type="text" value="${coAll.jltfispCoProfit[2].profitamount}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="profitamount" id="profitamount" type="text" value="${coAll.jltfispCoProfit[3].profitamount}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td>减：所得税</td>
                                    <td><input name="incometax" id="incometax" value="${coAll.jltfispCoProfit[0].incometax}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="incometax" id="incometax" value="${coAll.jltfispCoProfit[1].incometax}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="incometax" id="incometax" value="${coAll.jltfispCoProfit[2].incometax}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="incometax" id="incometax" value="${coAll.jltfispCoProfit[3].incometax}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                                <tr>
                                	<td><b>净利润(亏损以"-"号填列)</b></td>
                                    <td><input name="netprofit" id="netprofit" type="text" value="${coAll.jltfispCoProfit[0].netprofit}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="netprofit" id="netprofit" type="text" value="${coAll.jltfispCoProfit[1].netprofit}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="netprofit" id="netprofit" type="text" value="${coAll.jltfispCoProfit[2].netprofit}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                    <td><input name="netprofit" id="netprofit" type="text" value="${coAll.jltfispCoProfit[3].netprofit}" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" /></td>
                                </tr>
                            </table>
                            </form>
                            <div class="btnFld"><input type="button" value="保存并下一步" class="btnSave" /><a href="${path}/loan/onlineApplyPage?applytype=${applytype}"><input type="button" class="btnCan" value="取消" /></a></div>
                        </div>                      