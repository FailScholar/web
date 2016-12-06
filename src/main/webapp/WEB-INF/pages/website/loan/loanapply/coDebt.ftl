   <!--资产负债表-->
                        <div class="nlistCont" style="display:none;">
                        	<p class="ntit">资产负债表</p>
                            <ul class="lnav">

                            </ul>
                            <p class="ntit"><b><span id="tabYear">${coAll.jltfispCoDebt.year}</span>年末</b>资产负债表(<span class="red">财务报表是贷款审核的重要依据，请正确完整填写。须与提交的书面纳税报表一致！</span>)<span class="fr">单位：元</span></p>
                            <div class="clear"></div>
                            <form id="coDebt">
                            <input id="year" name="year" value="${coAll.jltfispCoDebt.year}" type="hidden">
                            <input type="hidden" id="businesstype"   name="businesstype"   value="${applytype}"/>
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
                                    <td>货币资金</td>
                                    <td><input name="capital" value="${coAll.jltfispCoDebt.capital}" id="capital" type="text" class="txt  validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>短期借款</td>
                                    <td><input name="shortborrow"  value="${coAll.jltfispCoDebt.shortborrow}" id="shortborrow" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>短期投资</td>
                                    <td><input name="shortinvestment" value="${coAll.jltfispCoDebt.shortinvestment}"  id="shortinvestment" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>应付票据</td>
                                    <td><input name="billpayable" value="${coAll.jltfispCoDebt.billpayable}" id="billpayable" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>应收票据</td>
                                    <td><input name="bill" id="bill" value="${coAll.jltfispCoDebt.bill}"  type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>应付账款</td>
                                    <td><input name="accountpayable"  value="${coAll.jltfispCoDebt.accountpayable}"  id="accountpayable" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>应收股息</td>
                                    <td><input name="dividend"  value="${coAll.jltfispCoDebt.dividend}" id="dividend" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>代付职工薪酬</td>
                                    <td><input name="salariespayable"  value="${coAll.jltfispCoDebt.salariespayable}" id="salariespayable" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>应收账款</td>
                                    <td><input name="accountreceivable" value="${coAll.jltfispCoDebt.accountreceivable}" id="accountreceivable" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>应付福利费</td>
                                    <td><input name="welfarepayable" value="${coAll.jltfispCoDebt.welfarepayable}" id="welfarepayable" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>其他应收款</td>
                                    <td><input name="otherreceivable" value="${coAll.jltfispCoDebt.otherreceivable}" id="otherreceivable" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>应付利润</td>
                                    <td><input name="profitpayable" value="${coAll.jltfispCoDebt.profitpayable}" id="profitpayable" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>存货</td>
                                    <td><input name="stock" id="stock" value="${coAll.jltfispCoDebt.stock}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>应交税金</td>
                                    <td><input name="taxpayable" value="${coAll.jltfispCoDebt.taxpayable}" id="taxpayable" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>待摊费用</td>
                                    <td><input name="prepaidexpenses" value="${coAll.jltfispCoDebt.prepaidexpenses}" id="prepaidexpenses" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>其他应交款</td>
                                    <td><input name="otherpayment" value="${coAll.jltfispCoDebt.otherpayment}" id="otherpayment" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>一年内到期的长期债权投资</td>
                                    <td><input name="debtsinvestment" value="${coAll.jltfispCoDebt.debtsinvestment}" id="debtsinvestment" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>其他应付款</td>
                                    <td><input name="otherpayable" value="${coAll.jltfispCoDebt.otherpayable}" id="otherpayable" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>其他流动资产</td>
                                    <td><input name="liquidassets" value="${coAll.jltfispCoDebt.liquidassets}" id="liquidassets" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>预提费用</td>
                                    <td><input name="accruedexpenses" value="${coAll.jltfispCoDebt.accruedexpenses}" id="accruedexpenses" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>预付账款</td>
                                    <td><input name="preaccountsreceivable" value="${coAll.jltfispCoDebt.preaccountsreceivable}" id="preaccountsreceivable" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>一年到期的长期负债</td>
                                    <td><input name="oneyeardebt" value="${coAll.jltfispCoDebt.oneyeardebt}" id="oneyeardebt" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>流动资产合计</td>
                                    <td><input name="liquidassetsamount" value="${coAll.jltfispCoDebt.liquidassetsamount}" id="liquidassetsamount" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>其他流动负债</td>
                                    <td><input name="currentdebt" value="${coAll.jltfispCoDebt.currentdebt}" id="currentdebt" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><b>长期投资</b></td>
                                    <td>预收账款</td>
                                    <td><input name="preaccountsreceivable2" value="${coAll.jltfispCoDebt.preaccountsreceivable2}" id="preaccountsreceivable2" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>长期股权投资</td>
                                    <td><input name="longstockinvestment " value="${coAll.jltfispCoDebt.longstockinvestment}" id="longstockinvestment" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>流动负债合计</td>
                                    <td><input name="currentdebtamount"  value="${coAll.jltfispCoDebt.currentdebtamount}" id="currentdebtamount" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td>长期债权投资</td>
                                    <td><input name="longdebtsinvestment" value="${coAll.jltfispCoDebt.longdebtsinvestment}" id="longdebtsinvestment" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td colspan="2"><b>长期负债</b></td>
                                </tr>
                                <tr>
                                    <td>长期投资合计</td>
                                    <td><input name="longinvestmentamount" value="${coAll.jltfispCoDebt.longinvestmentamount}" id="longinvestmentamount" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>长期借款</td>
                                    <td><input name="longborrow" id="longborrow" value="${coAll.jltfispCoDebt.longborrow}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><b>固定资产</b></td>
                                    <td>长期应付款</td>
                                    <td><input name="longpayable" id="longpayable" value="${coAll.jltfispCoDebt.longpayable}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td >累计折旧</td>
                                    <td><input name="depreciation" id="depreciation" value="${coAll.jltfispCoDebt.depreciation}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>其他长期负债</td>
                                    <td><input name="otherlongdebt" id="otherlongdebt" value="${coAll.jltfispCoDebt.otherlongdebt}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td >固定资产净值</td>
                                    <td><input name="fixedassetsvalue" id="fixedassetsvalue" value="${coAll.jltfispCoDebt.fixedassetsvalue}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>长期负债合计</td>
                                    <td><input name="longdebtamount" id="longdebtamount" value="${coAll.jltfispCoDebt.longdebtamount}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td >工程物资</td>
                                    <td><input name="engineeringmaterial" id="engineeringmaterial" value="${coAll.jltfispCoDebt.engineeringmaterial}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>负债合计（流动负债+长期负债）</td>
                                    <td><input name="debtamount" id="debtamount" type="text" value="${coAll.jltfispCoDebt.debtamount}" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td >固定资产清理</td>
                                    <td><input name="fixedassetsclean" id="fixedassetsclean" value="${coAll.jltfispCoDebt.fixedassetsclean}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td colspan="2"><b>所有者（或股东权益）</b></td>
                                </tr>
                                <tr>
                                    <td >固定资产合计</td>
                                    <td><input name="fixedassetsamount" id="fixedassetsamount" value="${coAll.jltfispCoDebt.fixedassetsamount}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>实收资本</td>
                                    <td><input name="paidincapital" id="paidincapital" type="text" value="${coAll.jltfispCoDebt.paidincapital}" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td colspan="2"><b>无形资产及其他资产</b></td>
                                    <td>资本公积</td>
                                    <td><input name="capitalreserve" id="capitalreserve" value="${coAll.jltfispCoDebt.capitalreserve}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td >无形资产</td>
                                    <td><input name="intangibleassets" id="intangibleassets" value="${coAll.jltfispCoDebt.intangibleassets}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>盈余公积</td>
                                    <td><input name="surplusreserve" id="surplusreserve" value="${coAll.jltfispCoDebt.surplusreserve}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td >长期待摊费用</td>
                                    <td><input name="longprepaidexpenses" id="longprepaidexpenses" value="${coAll.jltfispCoDebt.longprepaidexpenses}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>其中：法定公积</td>
                                    <td><input name="legalreserve" id="legalreserve" value="${coAll.jltfispCoDebt.legalreserve}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td >其他长期资产</td>
                                    <td><input name="otherlongassets" id="otherlongassets" value="${coAll.jltfispCoDebt.otherlongassets}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>未分配利润</td>
                                    <td><input name="undistributedprofit" id="undistributedprofit"  value="${coAll.jltfispCoDebt.undistributedprofit}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td >无形资产及其他资产合计</td>
                                    <td><input name="intangibleandotherassets" value="${coAll.jltfispCoDebt.intangibleandotherassets}"  id="intangibleandotherassets" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>所有者权益（或股东权益）合计</td>
                                    <td><input name="ownerequity" id="ownerequity" value="${coAll.jltfispCoDebt.ownerequity}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                                <tr>
                                    <td >资产合计</td>
                                    <td><input name="assetsamount" id="assetsamount" value="${coAll.jltfispCoDebt.assetsamount}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                    <td>负债和所有者权益（或股东权益）总计</td>
                                    <td><input name="ownerequityamount" id="ownerequityamount" value="${coAll.jltfispCoDebt.ownerequityamount}" type="text" class="txt validate[required,minSize[1],maxSize[10,custom[number]]" /></td>
                                </tr>
                            </table>
                            </form>
                            <div class="btnFld"><input type="button" value="保存并下一步" class="btnSave" /><a href="${path}/loan/onlineApplyPage"><input type="button" class="btnCan" value="取消" /></a></div>
                        </div>