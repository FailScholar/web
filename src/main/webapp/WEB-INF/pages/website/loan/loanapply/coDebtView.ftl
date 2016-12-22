                        <!--资产负债表/利润表-->
                          <div class="nlistCont" style="display:none;">
                              <p class="ntit" id="tableType2">资产负债表</p>
                              <ul class="lnav">
                                  <li class="active">${coAll.jltfispCoDebt.year}年</li>
                                  <li>${coAll.jltfispCoDebt.year?number+1}年</li>
                                  <li>${coAll.jltfispCoDebt.year?number+2}年</li>
                                  <li>${coAll.jltfispCoDebt.year?number+3}年</li>
                                  <li>利润表</li>
                              </ul>
                              <p class="ntit"><b><span id="tabYear"><span></b><span id="tableType">资产负债表</span>(<span class="red">财务报表是贷款审核的重要依据，请正确完整填写。须与提交的书面纳税报表一致！</span>)<span class="fr">单位：元</span></p>
                              <div class="clear"></div>
                              <form id="coDebt">
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
                                      <td>${coAll.jltfispCoDebt.capital}</td>
                                      <td><b class="red">*</b>${loanformManage.debtShortBorrow}</td>
                                      <td>${coAll.jltfispCoDebt.shortborrow}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtShortInvestment}</td>
                                      <td>${coAll.jltfispCoDebt.shortinvestment}</td>
                                      <td><b class="red">*</b>${loanformManage.debtBillPayable}</td>
                                      <td>${coAll.jltfispCoDebt.billpayable}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtBill}</td>
                                      <td>${coAll.jltfispCoDebt.bill}</td>
                                      <td><b class="red">*</b>${loanformManage.debtAccountPayable}</td>
                                      <td>${coAll.jltfispCoDebt.accountpayable}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtDividend}</td>
                                      <td>${coAll.jltfispCoDebt.dividend}</td>
                                      <td><b class="red">*</b>${loanformManage.debtSalariesPayable}</td>
                                      <td>${coAll.jltfispCoDebt.salariespayable}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtAccountReceivable}</td>
                                      <td>${coAll.jltfispCoDebt.accountreceivable}</td>
                                      <td><b class="red">*</b>${loanformManage.debtWelfarePayable}</td>
                                      <td>${coAll.jltfispCoDebt.welfarepayable}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtOtherReceivable}</td>
                                      <td>${coAll.jltfispCoDebt.otherreceivable}</td>
                                      <td><b class="red">*</b>${loanformManage.debtProfitPayable}</td>
                                      <td>${coAll.jltfispCoDebt.profitpayable}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtStock}</td>
                                      <td>${coAll.jltfispCoDebt.stock}</td>
                                      <td><b class="red">*</b>${loanformManage.debtTaxPayable}</td>
                                      <td>${coAll.jltfispCoDebt.taxpayable}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtPrepaidExpenses}</td>
                                      <td>${coAll.jltfispCoDebt.prepaidexpenses}</td>
                                      <td><b class="red">*</b>${loanformManage.debtOtherPayment}</td>
                                      <td>${coAll.jltfispCoDebt.otherpayment}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtDebtsInvestment}</td>
                                      <td>${coAll.jltfispCoDebt.debtsinvestment}</td>
                                      <td><b class="red">*</b>${loanformManage.debtOtherPayable}</td>
                                      <td>${coAll.jltfispCoDebt.otherpayable}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtLiquidAssets}</td>
                                      <td>${coAll.jltfispCoDebt.liquidassets}</td>
                                      <td><b class="red">*</b>${loanformManage.debtAccruedExpenses}</td>
                                      <td>${coAll.jltfispCoDebt.accruedexpenses}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtPreAccountsReceivable}</td>
                                      <td>${coAll.jltfispCoDebt.preaccountsreceivable}</td>
                                      <td><b class="red">*</b>${loanformManage.debtOneYearDebt}</td>
                                      <td>${coAll.jltfispCoDebt.oneyeardebt}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtLiquidAssetsAmount}</td>
                                      <td>${coAll.jltfispCoDebt.liquidassetsamount}</td>
                                      <td><b class="red">*</b>${loanformManage.debtCurrentDebt}</td>
                                      <td>${coAll.jltfispCoDebt.currentdebt}</td>
                                  </tr>
                                  <tr>
                                      <td colspan="2"><b>长期投资</b></td>
                                      <td><b class="red">*</b>${loanformManage.debtPreAccountsReceivable2}</td>
                                      <td>${coAll.jltfispCoDebt.preaccountsreceivable2}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtLongStockInvestment}</td>
                                      <td>${coAll.jltfispCoDebt.longstockinvestment}</td>
                                      <td><b class="red">*</b>${loanformManage.debtCurrentDebtAmount}</td>
                                      <td>${coAll.jltfispCoDebt.currentdebtamount}</td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtLongDebtsInvestment}</td>
                                      <td>${coAll.jltfispCoDebt.preaccountsreceivable2}</td>
                                      <td colspan="2"><b>长期负债</b></td>
                                  </tr>
                                  <tr>
                                      <td><b class="red">*</b>${loanformManage.debtLongInvestmentAmount}</td>
                                      <td>${coAll.jltfispCoDebt.longinvestmentamount}</td>
                                      <td><b class="red">*</b>${loanformManage.debtLongBorrow}</td>
                                      <td>${coAll.jltfispCoDebt.longborrow}</td>
                                  </tr>
                                  <tr>
                                      <td colspan="2"><b>固定资产</b></td>
                                      <td><b class="red">*</b>${loanformManage.debtLongPayable}</td>
                                      <td>${coAll.jltfispCoDebt.longpayable}</td>
                                  </tr>
                                  <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtDepreciation}</td>
                                    <td>${coAll.jltfispCoDebt.depreciation}</td>
                                    <td><b class="red">*</b>${loanformManage.debtOtherLongDebt}</td>
                                    <td>${coAll.jltfispCoDebt.otherlongdebt}</td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtFixedAssetsValue}</td>
                                    <td>${coAll.jltfispCoDebt.fixedassetsvalue}</td>
                                    <td><b class="red">*</b>${loanformManage.debtLongDebtAmount}</td>
                                    <td>${coAll.jltfispCoDebt.longdebtamount}</td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtEngineeringMaterial}</td>
                                    <td>${coAll.jltfispCoDebt.engineeringmaterial}</td>
                                    <td><b class="red">*</b>${loanformManage.debtDebtAmount}</td>
                                    <td>${coAll.jltfispCoDebt.debtamount}</td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtFixedAssetsClean}</td>
                                    <td>${coAll.jltfispCoDebt.fixedassetsclean}</td>
                                    <td colspan="2"><b>所有者（或股东权益）</b></td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtFixedAssetsAmount}</td>
                                    <td>${coAll.jltfispCoDebt.fixedassetsamount}</td>
                                    <td><b class="red">*</b>${loanformManage.debtPaidInCapital}</td>
                                    <td>${coAll.jltfispCoDebt.paidincapital}</td>
                                </tr>
                                <tr>
                                    <td colspan="2"><b>无形资产及其他资产</b></td>
                                    <td><b class="red">*</b>${loanformManage.debtCapitalReserve}</td>
                                    <td>${coAll.jltfispCoDebt.capitalreserve}</td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtIntangibleAssets}</td>
                                    <td>${coAll.jltfispCoDebt.intangibleassets}</td>
                                    <td><b class="red">*</b>${loanformManage.debtSurplusReserve}</td>
                                    <td>${coAll.jltfispCoDebt.surplusreserve}</td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtLongPrepaidExpenses}</td>
                                    <td>${coAll.jltfispCoDebt.longprepaidexpenses}</td>
                                    <td><b class="red">*</b>${loanformManage.debtLegalReserve}</td>
                                    <td>${coAll.jltfispCoDebt.legalreserve}</td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtOtherLongAssets}</td>
                                    <td>${coAll.jltfispCoDebt.otherlongassets}</td>
                                    <td><b class="red">*</b>${loanformManage.debtUndistributedProfit}</td>
                                    <td>${coAll.jltfispCoDebt.undistributedprofit}</td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtIntangibleAndOtherAssets}</td>
                                    <td>${coAll.jltfispCoDebt.intangibleandotherassets}</td>
                                    <td><b class="red">*</b>${loanformManage.debtOwnerEquity}</td>
                                    <td>${coAll.jltfispCoDebt.ownerequity}</td>
                                </tr>
                                <tr>
                                    <td ><b class="red">*</b>${loanformManage.debtAssetsAmount}</td>
                                    <td>${coAll.jltfispCoDebt.assetsamount}</td>
                                    <td><b class="red">*</b>${loanformManage.debtOwnerEquityAmount}</td>
                                    <td>${coAll.jltfispCoDebt.ownerequityamount}</td>
                                </tr>
                              </table>
                              </form>
                          </div>