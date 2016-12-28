                        <!--利润表-->
                            <table width="100%" class="tab3 tab4">
                                <tr><th>项目</th><th>${firstYear}年末</th><th>${secondYear}年末</th><th>${thirdYear}年末</th><th>${fourYear}年1~
                                <#if coAll.jltfispCoProfit[0].month?exists>
                                ${coAll.jltfispCoProfit[0].month}
                                <#else>
                                ${month}
                                </#if>
                                
                                月</th></tr>
                                <tr>
                                	<td><b class="red">*</b><b>${loanformManage.profitMainIncome}</b></td>
                                    <td>${coAll.jltfispCoProfit[0].mainincome}</td>
                                    <td>${coAll.jltfispCoProfit[1].mainincome}</td>
                                    <td>${coAll.jltfispCoProfit[2].mainincome}</td>
                                    <td>${coAll.jltfispCoProfit[3].mainincome}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b>${loanformManage.profitMainCost}</td>
                                    <td>${coAll.jltfispCoProfit[0].maincost}</td>
                                    <td>${coAll.jltfispCoProfit[1].maincost}</td>
                                    <td>${coAll.jltfispCoProfit[2].maincost}</td>
                                    <td>${coAll.jltfispCoProfit[3].maincost}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b>${loanformManage.profitMainTax}</td>
                                    <td>${coAll.jltfispCoProfit[0].maintax}</td>
                                    <td>${coAll.jltfispCoProfit[1].maintax}</td>
                                    <td>${coAll.jltfispCoProfit[2].maintax}</td>
                                    <td>${coAll.jltfispCoProfit[3].maintax}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b><b>${loanformManage.profitMainProfit}</b></td>
                                    <td>${coAll.jltfispCoProfit[0].mainprofit}</td>
                                    <td>${coAll.jltfispCoProfit[1].mainprofit}</td>
                                    <td>${coAll.jltfispCoProfit[2].mainprofit}</td>
                                    <td>${coAll.jltfispCoProfit[3].mainprofit}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b>${loanformManage.profitOtherProfit}</td>
                                    <td>${coAll.jltfispCoProfit[0].otherprofit}</td>
                                    <td>${coAll.jltfispCoProfit[1].otherprofit}</td>
                                    <td>${coAll.jltfispCoProfit[2].otherprofit}</td>
                                    <td>${coAll.jltfispCoProfit[3].otherprofit}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b>${loanformManage.profitBusinessCost}</td>
                                    <td>${coAll.jltfispCoProfit[0].businesscost}</td>
                                    <td>${coAll.jltfispCoProfit[1].businesscost}</td>
                                    <td>${coAll.jltfispCoProfit[2].businesscost}</td>
                                    <td>${coAll.jltfispCoProfit[3].businesscost}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b>${loanformManage.profitManageCost}</td>
                                    <td>${coAll.jltfispCoProfit[0].managecost}</td>
                                    <td>${coAll.jltfispCoProfit[1].managecost}</td>
                                    <td>${coAll.jltfispCoProfit[2].managecost}</td>
                                    <td>${coAll.jltfispCoProfit[3].managecost}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b>${loanformManage.profitFinanceCost}</td>
                                    <td>${coAll.jltfispCoProfit[0].financecost}</td>
                                    <td>${coAll.jltfispCoProfit[1].financecost}</td>
                                    <td>${coAll.jltfispCoProfit[2].financecost}</td>
                                    <td>${coAll.jltfispCoProfit[3].financecost}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b><b>${loanformManage.profitBusinessProfit}</b></td>
                                    <td>${coAll.jltfispCoProfit[0].businessprofit}</td>
                                    <td>${coAll.jltfispCoProfit[1].businessprofit}</td>
                                    <td>${coAll.jltfispCoProfit[2].businessprofit}</td>
                                    <td>${coAll.jltfispCoProfit[3].businessprofit}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b>${loanformManage.profitInvestmentIncome}</td>
                                    <td>${coAll.jltfispCoProfit[0].investmentincome}</td>
                                    <td>${coAll.jltfispCoProfit[1].investmentincome}</td>
                                    <td>${coAll.jltfispCoProfit[2].investmentincome}</td>
                                    <td>${coAll.jltfispCoProfit[3].investmentincome}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b>${loanformManage.profitOtherIncome}</td>
                                    <td>${coAll.jltfispCoProfit[0].otherincome}</td>
                                    <td>${coAll.jltfispCoProfit[1].otherincome}</td>
                                    <td>${coAll.jltfispCoProfit[2].otherincome}</td>
                                    <td>${coAll.jltfispCoProfit[3].otherincome}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b>${loanformManage.profitOtherPay}</td>
                                    <td>${coAll.jltfispCoProfit[0].otherpay}</td>
                                    <td>${coAll.jltfispCoProfit[1].otherpay}</td>
                                    <td>${coAll.jltfispCoProfit[2].otherpay}</td>
                                    <td>${coAll.jltfispCoProfit[3].otherpay}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b>${loanformManage.profitAssetLoss}</td>
                                    <td>${coAll.jltfispCoProfit[0].assetloss}</td>
                                    <td>${coAll.jltfispCoProfit[1].assetloss}</td>
                                    <td>${coAll.jltfispCoProfit[2].assetloss}</td>
                                    <td>${coAll.jltfispCoProfit[3].assetloss}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b><b>${loanformManage.profitAmount}</b></td>
                                    <td>${coAll.jltfispCoProfit[0].profitamount}</td>
                                    <td>${coAll.jltfispCoProfit[1].profitamount}</td>
                                    <td>${coAll.jltfispCoProfit[2].profitamount}</td>
                                    <td>${coAll.jltfispCoProfit[3].profitamount}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b>${loanformManage.profitIncomeTax}</td>
                                    <td>${coAll.jltfispCoProfit[0].incometax}</td>
                                    <td>${coAll.jltfispCoProfit[1].incometax}</td>
                                    <td>${coAll.jltfispCoProfit[2].incometax}</td>
                                    <td>${coAll.jltfispCoProfit[3].incometax}</td>
                                </tr>
                                <tr>
                                	<td><b class="red">*</b><b>${loanformManage.profitNetProfit}</b></td>
                                    <td>${coAll.jltfispCoProfit[0].netprofit}</td>
                                    <td>${coAll.jltfispCoProfit[1].netprofit}</td>
                                    <td>${coAll.jltfispCoProfit[2].netprofit}</td>
                                    <td>${coAll.jltfispCoProfit[3].netprofit}</td>
                                </tr>
                            </table>                   