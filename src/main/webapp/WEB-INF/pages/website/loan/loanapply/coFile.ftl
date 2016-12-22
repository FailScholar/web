      <!--附件-->
                        <div class="nlistCont" style="display:none;">
                        	<p class="ntit">附件 <span class="red">格式：jpg</span></p>
                            <form id="coFile">
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th style="width:8%;">名称</th>
                                    <th>附件</th>
                                </tr>
                            	<tr>
                                	<td>${loanformManage.fileLabel1}</td>
                                    <td>
                                       <#if coAll.jltfispCoFileList[0] !=null>
                                    	<img width="110px" height="110px;"  src="${path}${coAll.jltfispCoFileList[0].filepath}" class="blank" />
                                        <#else>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        <div class="btnUp" style="cursor:pointer;">
                                        	<input onclick="blur();" type="file" style="cursor:pointer;" name="UpFile1" id="UpFile1" onchange="ajaxFileUpload(1,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel2}</td>
                                    <td>
                                    	<#if coAll.jltfispCoFileList[1] !=null>
                                    	<img width="110px" height="110px;"  src="${path}${coAll.jltfispCoFileList[1].filepath}" class="blank" />
                                        <#else>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        <div class="btnUp">
                                        	<input onclick="blur();" type="file" style="cursor:pointer;" name="UpFile2" id="UpFile2" onchange="ajaxFileUpload(2,${applytype})"/>
                                           <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel3}</td>
                                    <td>
                                    	<#if coAll.jltfispCoFileList[2] !=null>
                                    	<img width="110px" height="110px;"  src="${path}${coAll.jltfispCoFileList[2].filepath}" class="blank" />
                                        <#else>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        <div class="btnUp">
                                        	<input onclick="blur();" type="file" style="cursor:pointer;" name="UpFile3" id="UpFile3" onchange="ajaxFileUpload(3,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel4}</td>
                                    <td>
                                    	<#if coAll.jltfispCoFileList[3] !=null>
                                    	<img width="110px" height="110px;"  src="${path}${coAll.jltfispCoFileList[3].filepath}" class="blank" />
                                        <#else>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        <div class="btnUp">
                                        	<input onclick="blur();" type="file" style="cursor:pointer;" name="UpFile4" id="UpFile4" onchange="ajaxFileUpload(4,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel5}</td>
                                    <td>
                                    	<#if coAll.jltfispCoFileList[4] !=null>
                                    	<img width="110px" height="110px;"  src="${path}${coAll.jltfispCoFileList[4].filepath}" class="blank" />
                                        <#else>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        <div class="btnUp">
                                        	<input onclick="blur();" type="file" style="cursor:pointer;" name="UpFile5" id="UpFile5" onchange="ajaxFileUpload(5,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel6}</td>
                                    <td>
                                    	<#if coAll.jltfispCoFileList[5] !=null>
                                    	<img width="110px" height="110px;"  src="${path}${coAll.jltfispCoFileList[5].filepath}" class="blank" />
                                        <#else>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        <div class="btnUp">
                                        	<input onclick="blur();" type="file" style="cursor:pointer;" name="UpFile6" id="UpFile6" onchange="ajaxFileUpload(6,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel7}</td>
                                    <td>
                                    	<#if coAll.jltfispCoFileList[6] !=null>
                                    	<img width="110px" height="110px;"  src="${path}${coAll.jltfispCoFileList[6].filepath}" class="blank" />
                                        <#else>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        <div class="btnUp">
                                        	<input onclick="blur();" type="file" style="cursor:pointer;" name="UpFile7" id="UpFile7" onchange="ajaxFileUpload(7,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel8}</td>
                                    <td>
                                    	<#if coAll.jltfispCoFileList[7] !=null>
                                    	<img width="110px" height="110px;"  src="${path}${coAll.jltfispCoFileList[7].filepath}" class="blank" />
                                        <#else>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        <div class="btnUp" >
                                        	<input onclick="blur();" style="cursor:pointer;" type="file" name="UpFile8" id="UpFile8" onchange="ajaxFileUpload(8,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            </form>
                            <div class="btnFld"><a href="${path}/anon/loan/fillinApply?applytype=${applytype}"><input type="button" value="填写申请表" class="btnSave" /></a><a href="${path}/loan/onlineApplyPage?applytype=${applytype}"><input type="button" class="btnCan" value="取消" /></a></div>
                        </div>
                    </div>
                </div>
            </div>
         