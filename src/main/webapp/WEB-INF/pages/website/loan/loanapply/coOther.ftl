                      <!--企业其他情况-->
                        <div class="nlistCont" style="display:none;">
                        	<p class="ntit">企业其他信息</p>
                        	<form id="coOther">
                        	<input type="hidden" id="businesstype"   name="businesstype"   value="${applytype}"/>
                            <table width="100%" class="tab3">
                            	<tr>
                                	<th style="width:20%">本年度已签订所有合同的标的总额</th>
                                    <td><input name="subjectamount" id="subjectamount" value="${coAll.jltfispCoOther.subjectamount}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" placeholder="请输入" />万元</td>
                                    <th style="width:20%">实际控制人或核心股东个人经营性贷款</th>
                                    <td><input name="loanamount" id="loanamount" value="${coAll.jltfispCoOther.loanamount}" type="text" class="txt2 validate[required,minSize[1],maxSize[10],custom[number]]" placeholder="请输入" />万元</td>
                                </tr>
                                <tr>
                                	<th>其他说明</th>
                                    <td colspan="3"><textarea name="otherexplain"  id="otherexplain" class="txta validate[required,maxSize[1000]]">${coAll.jltfispCoOther.otherexplain}</textarea></td>
                                </tr>
                            </table>
                            </form>
                            <div class="btnFld"><input type="button" value="保存并下一步" class="btnSave" /><a href="${path}/loan/onlineApplyPage"><input type="button" class="btnCan" value="取消" /></a></div>
                        </div>
 