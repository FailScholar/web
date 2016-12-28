<input id="year" name="year" value="${coAll.jltfispCoDebt.year}" type="hidden">
<input type="hidden" id="businesstype"  name="businesstype" value="${applytype}"/>
<table width="100%" class="tab3 tab4">
                            	<tr>
                                    <th>资产</th>
                                    <th>金额(期末数)</th>
                                    <th>负债和所有者权益</th>
                                    <th>金额(期末数)</th>
                                </tr>
                                <tr>
                                    <td colspan="2"><b>流动资产</b></td>
                                    <td colspan="2"><b>流动负债</b></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtCapital}</td>
                                    <td><input name="capital" value="${coAll.jltfispCoDebt.capital}" id="capital" type="text" class="txt  validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtShortBorrow}</td>
                                    <td><input name="shortborrow"  value="${coAll.jltfispCoDebt.shortborrow}" id="shortborrow" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtShortInvestment}</td>
                                    <td><input name="shortinvestment" value="${coAll.jltfispCoDebt.shortinvestment}"  id="shortinvestment" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtBillPayable}</td>
                                    <td><input name="billpayable" value="${coAll.jltfispCoDebt.billpayable}" id="billpayable" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtBill}</td>
                                    <td><input name="bill" id="bill" value="${coAll.jltfispCoDebt.bill}"  type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtAccountPayable}</td>
                                    <td><input name="accountpayable"  value="${coAll.jltfispCoDebt.accountpayable}"  id="accountpayable" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtDividend}</td>
                                    <td><input name="dividend"  value="${coAll.jltfispCoDebt.dividend}" id="dividend" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtSalariesPayable}</td>
                                    <td><input name="salariespayable"  value="${coAll.jltfispCoDebt.salariespayable}" id="salariespayable" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtAccountReceivable}</td>
                                    <td><input name="accountreceivable" value="${coAll.jltfispCoDebt.accountreceivable}" id="accountreceivable" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtWelfarePayable}</td>
                                    <td><input name="welfarepayable" value="${coAll.jltfispCoDebt.welfarepayable}" id="welfarepayable" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtOtherReceivable}</td>
                                    <td><input name="otherreceivable" value="${coAll.jltfispCoDebt.otherreceivable}" id="otherreceivable" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtProfitPayable}</td>
                                    <td><input name="profitpayable" value="${coAll.jltfispCoDebt.profitpayable}" id="profitpayable" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtStock}</td>
                                    <td><input name="stock" id="stock" value="${coAll.jltfispCoDebt.stock}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtTaxPayable}</td>
                                    <td><input name="taxpayable" value="${coAll.jltfispCoDebt.taxpayable}" id="taxpayable" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtPrepaidExpenses}</td>
                                    <td><input name="prepaidexpenses" value="${coAll.jltfispCoDebt.prepaidexpenses}" id="prepaidexpenses" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtOtherPayment}</td>
                                    <td><input name="otherpayment" value="${coAll.jltfispCoDebt.otherpayment}" id="otherpayment" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtDebtsInvestment}</td>
                                    <td><input name="debtsinvestment" value="${coAll.jltfispCoDebt.debtsinvestment}" id="debtsinvestment" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtOtherPayable}</td>
                                    <td><input name="otherpayable" value="${coAll.jltfispCoDebt.otherpayable}" id="otherpayable" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtLiquidAssets}</td>
                                    <td><input name="liquidassets" value="${coAll.jltfispCoDebt.liquidassets}" id="liquidassets" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtAccruedExpenses}</td>
                                    <td><input name="accruedexpenses" value="${coAll.jltfispCoDebt.accruedexpenses}" id="accruedexpenses" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtPreAccountsReceivable}</td>
                                    <td><input name="preaccountsreceivable" value="${coAll.jltfispCoDebt.preaccountsreceivable}" id="preaccountsreceivable" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtOneYearDebt}</td>
                                    <td><input name="oneyeardebt" value="${coAll.jltfispCoDebt.oneyeardebt}" id="oneyeardebt" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtLiquidAssetsAmount}</td>
                                    <td><input name="liquidassetsamount" value="${coAll.jltfispCoDebt.liquidassetsamount}" id="liquidassetsamount" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtCurrentDebt}</td>
                                    <td><input name="currentdebt" value="${coAll.jltfispCoDebt.currentdebt}" id="currentdebt" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><b>长期投资</b></td>
                                    <td><b class="red">*</b>${loanformManage.debtPreAccountsReceivable2}</td>
                                    <td><input name="preaccountsreceivable2" value="${coAll.jltfispCoDebt.preaccountsreceivable2}" id="preaccountsreceivable2" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtLongStockInvestment}</td>
                                    <td><input name="longstockinvestment" value="${coAll.jltfispCoDebt.longstockinvestment}" id="longstockinvestment" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtCurrentDebtAmount}</td>
                                    <td><input name="currentdebtamount"  value="${coAll.jltfispCoDebt.currentdebtamount}" id="currentdebtamount" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtLongDebtsInvestment}</td>
                                    <td><input name="longdebtsinvestment" value="${coAll.jltfispCoDebt.longdebtsinvestment}" id="longdebtsinvestment" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td colspan="2"><b>长期负债</b></td>
                                </tr>
                                <tr>
                                    <td><b class="red">*</b>${loanformManage.debtLongInvestmentAmount}</td>
                                    <td><input name="longinvestmentamount" value="${coAll.jltfispCoDebt.longinvestmentamount}" id="longinvestmentamount" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtLongBorrow}</td>
                                    <td><input name="longborrow" id="longborrow" value="${coAll.jltfispCoDebt.longborrow}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><b>固定资产</b></td>
                                    <td><b class="red">*</b>${loanformManage.debtLongPayable}</td>
                                    <td><input name="longpayable" id="longpayable" value="${coAll.jltfispCoDebt.longpayable}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtDepreciation}</td>
                                    <td><input name="depreciation" id="depreciation" value="${coAll.jltfispCoDebt.depreciation}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtOtherLongDebt}</td>
                                    <td><input name="otherlongdebt" id="otherlongdebt" value="${coAll.jltfispCoDebt.otherlongdebt}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtFixedAssetsValue}</td>
                                    <td><input name="fixedassetsvalue" id="fixedassetsvalue" value="${coAll.jltfispCoDebt.fixedassetsvalue}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtLongDebtAmount}</td>
                                    <td><input name="longdebtamount" id="longdebtamount" value="${coAll.jltfispCoDebt.longdebtamount}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtEngineeringMaterial}</td>
                                    <td><input name="engineeringmaterial" id="engineeringmaterial" value="${coAll.jltfispCoDebt.engineeringmaterial}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtDebtAmount}</td>
                                    <td><input name="debtamount" id="debtamount" type="text" value="${coAll.jltfispCoDebt.debtamount}" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtFixedAssetsClean}</td>
                                    <td><input name="fixedassetsclean" id="fixedassetsclean" value="${coAll.jltfispCoDebt.fixedassetsclean}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td colspan="2"><b>所有者（或股东权益）</b></td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtFixedAssetsAmount}</td>
                                    <td><input name="fixedassetsamount" id="fixedassetsamount" value="${coAll.jltfispCoDebt.fixedassetsamount}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtPaidInCapital}</td>
                                    <td><input name="paidincapital" id="paidincapital" type="text" value="${coAll.jltfispCoDebt.paidincapital}" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><b>无形资产及其他资产</b></td>
                                    <td><b class="red">*</b>${loanformManage.debtCapitalReserve}</td>
                                    <td><input name="capitalreserve" id="capitalreserve" value="${coAll.jltfispCoDebt.capitalreserve}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtIntangibleAssets}</td>
                                    <td><input name="intangibleassets" id="intangibleassets" value="${coAll.jltfispCoDebt.intangibleassets}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtSurplusReserve}</td>
                                    <td><input name="surplusreserve" id="surplusreserve" value="${coAll.jltfispCoDebt.surplusreserve}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtLongPrepaidExpenses}</td>
                                    <td><input name="longprepaidexpenses" id="longprepaidexpenses" value="${coAll.jltfispCoDebt.longprepaidexpenses}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtLegalReserve}</td>
                                    <td><input name="legalreserve" id="legalreserve" value="${coAll.jltfispCoDebt.legalreserve}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtOtherLongAssets}</td>
                                    <td><input name="otherlongassets" id="otherlongassets" value="${coAll.jltfispCoDebt.otherlongassets}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtUndistributedProfit}</td>
                                    <td><input name="undistributedprofit" id="undistributedprofit"  value="${coAll.jltfispCoDebt.undistributedprofit}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtIntangibleAndOtherAssets}</td>
                                    <td><input name="intangibleandotherassets" value="${coAll.jltfispCoDebt.intangibleandotherassets}"  id="intangibleandotherassets" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtOwnerEquity}</td>
                                    <td><input name="ownerequity" id="ownerequity" value="${coAll.jltfispCoDebt.ownerequity}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtAssetsAmount}</td>
                                    <td><input name="assetsamount" id="assetsamount" value="${coAll.jltfispCoDebt.assetsamount}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                    <td><b class="red">*</b>${loanformManage.debtOwnerEquityAmount}</td>
                                    <td><input name="ownerequityamount" id="ownerequityamount" value="${coAll.jltfispCoDebt.ownerequityamount}" type="text" class="txt validate[required,minSize[1],maxSize[10],custom[number2]]" /></td>
                                </tr>
</table>