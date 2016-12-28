<div class="proList nli" style="padding-top:0; display:none;">
    <!--填写申请表格-->
    <div class="nlistCont">
        <p class="ntit"><b class="red">*</b>主要经济指标</p>
       <form id="psMaterialInfo">
        <table width="100%" class="tab3 tab4">
            <tr>
                <th style="float:left;width:90px;height:30px;">${loanformManage.psMaterialEconomicTime}</th>
                <th width="12.5%">${loanformManage.psMaterialGross}</th>
                <th width="12.5%">${loanformManage.psMaterialGrossIncrease}</th>
                <th width="12.5%">${loanformManage.psMaterialInvestment}</th>
                <th width="12.5%">${loanformManage.psMaterialInvestmentIncrease}</th>
                <th width="12.5%">${loanformManage.psMaterialProfit}</th>
                <th width="12.5%">${loanformManage.psMaterialProfitIncrease}</th>
                <th width="12.5%">${loanformManage.psMaterialTaxes}</th>
            </tr>
            <tr>
                <th style="float:left;width:90px;height:30px;">${loanformManage.psMaterialLastYear}</th>
                <td><input style="width:90px;" id="grossedLast" name="grossedLast" value="${PsMaterialInfo.grossedLast }" type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="increaseGrossedLast" name="increaseGrossedLast" value="${PsMaterialInfo.increaseGrossedLast }" type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="investmentLast" name="investmentLast" value="${PsMaterialInfo.investmentLast }" type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="increaseInvestmentLast" name="increaseInvestmentLast"  value="${PsMaterialInfo.increaseInvestmentLast }" type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="profitLast" name="profitLast" value="${PsMaterialInfo.profitLast }"  type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="increaseProfitLast" name="increaseProfitLast" value="${PsMaterialInfo.increaseProfitLast }"  type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="taxesLast" name="taxesLast" value="${PsMaterialInfo.taxesLast }" type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
            </tr>
            <tr>
                <th style="float:left;width:90px;height:30px;">${loanformManage.psMaterialCurrentYear}</th>
                <td><input style="width:90px;"  id="grossedThis" name="grossedThis" value="${PsMaterialInfo.grossedThis }" type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="increaseGrossedThis" name="increaseGrossedThis" value="${PsMaterialInfo.increaseGrossedThis }" type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="investmentThis" name="investmentThis" value="${PsMaterialInfo.investmentThis }" type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="increaseInvestmentThis" name="increaseInvestmentThis" value="${PsMaterialInfo.increaseInvestmentThis }" type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="profitThis" name="profitThis" value="${PsMaterialInfo.profitThis }" type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="increaseProfitThis" name="increaseProfitThis" value="${PsMaterialInfo.increaseProfitThis }" type="text" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="taxesThis" name="taxesThis" type="text" value="${PsMaterialInfo.taxesThis }" class="txt3 validate[required,custom[number2],minSize[1],maxSize[10]]" /></td>
            </tr>
        </table>
        <p class="tip4" style="color:#d17d00">提示：如果没有可填0！</p>
        <p class="ntit"><b class="red">*</b>知识产权情况（单位：项）</p>
        <table width="100%" class="tab3 tab4">
            <tr>
                <th style="float:left;width:90px;height:30px;">${loanformManage.psMaterialIntellectualTime}</th>
                <th width="12.5%">${loanformManage.psMaterialInvention}</th>
                <th width="12.5%">${loanformManage.psMaterialUtilitarian}</th>
                <th width="12.5%">${loanformManage.psMaterialAppearance}</th>
                <th width="12.5%">${loanformManage.psMaterialIc}</th>
                <th width="12.5%">${loanformManage.psMaterialSoftware}</th>
                <th width="12.5%">${loanformManage.psMaterialSoftwares}</th>
                <th width="12.5%">${loanformManage.psMaterialKnowledge}</th>
            </tr>
            <tr>
                <th style="float:left;width:90px;height:30px;">${loanformManage.psMaterialIntellectualLast}</th>
                <td><input style="width:90px;"  id="inventionLast" name="inventionLast" value="${PsMaterialInfo.inventionLast }" type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="utilitarianLast" name="utilitarianLast" value="${PsMaterialInfo.utilitarianLast }"  type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="appearanceLast" name="appearanceLast" value="${PsMaterialInfo.appearanceLast }" type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="icLast" name="icLast" type="text" value="${PsMaterialInfo.icLast }"  class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="softwareLast" name="softwareLast" value="${PsMaterialInfo.softwareLast }" type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="softwaresLast" name="softwaresLast"  value="${PsMaterialInfo.softwaresLast }" type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="knowledgeLast" name="knowledgeLast" value="${PsMaterialInfo.knowledgeLast }" type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
            </tr>
            <tr>
                <th style="float:left;width:90px;height:30px;">${loanformManage.psMaterialIntellectualCurrent}</th>
                <td><input style="width:90px;"  id="inventionThis" name="inventionThis" value="${PsMaterialInfo.inventionThis }" type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="utilitarianThis" name="utilitarianThis"  value="${PsMaterialInfo.utilitarianThis }" type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="appearanceThis" name="appearanceThis" value="${PsMaterialInfo.appearanceThis }" type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="icThis" name="icThis" type="text" value="${PsMaterialInfo.icThis }" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="softwareThis" name="softwareThis" value="${PsMaterialInfo.softwareThis }" type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="softwaresThis" name="softwaresThis" value="${PsMaterialInfo.softwaresThis }" type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
                <td><input style="width:90px;"  id="knowledgeThis" name="knowledgeThis"value="${PsMaterialInfo.knowledgeThis }"  type="text" class="txt3 validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" /></td>
            </tr>
        </table>
        <p class="tip4" style="color:#d17d00">提示：如果没有可填0！</p>
        <p class="ntit">获得荣誉奖项等情况</p>
        <table class="tab3" width="100%">
            <tr>
                <th><b class="red">*</b>${loanformManage.psMaterialCognizance}</th>
                <td>
                    <label><input name="cognizance" class="validate[required]" type="radio" value="1" <#if PsMaterialInfo.cognizance==1>checked="checked"</#if> >私营企业</label>
                    <label><input name="cognizance" class="validate[required]" type="radio" value="2" <#if PsMaterialInfo.cognizance==2>checked="checked"</#if> >中外合资企业</label>
                    <label><input name="cognizance" class="validate[required]" type="radio" value="3" <#if PsMaterialInfo.cognizance==3>checked="checked"</#if> >国有企业</label>
                    <label><input name="cognizance" class="validate[required]" type="radio" value="4" <#if PsMaterialInfo.cognizance==4>checked="checked"</#if> >集体企业</label>
                    <label><input name="cognizance" class="validate[required]" type="radio" value="5" <#if PsMaterialInfo.cognizance==5>checked="checked"</#if> >其他</label>
                </td>
            </tr>
            <tr>
                <th><b class="red">*</b>${loanformManage.psMaterialMeta}</th>
                <td><textarea style="width:885px;" name="meta" class="txta validate[required,minSize[1],maxSize[500]]">${PsMaterialInfo.meta }</textarea></td>
            </tr>
        </table>
        </form>
        <p class="tip4" style="color:#d17d00">企业承诺：本企业提供上述信息真实可靠！</p>
        <div class="logbtn" style="margin-top:30px;">
            <input type="button" class="por" value="上一步" />
            <input type="button" class="nor" value="下一步" />
        </div>
    </div>
</div>
