      <!--附件-->
                        <div class="nlistCont" style="display:none;">
                        	<p class="ntit">附件 <span class="red">格式：jpg</span></p>
                            <form id="coFile">
                            <#if (coAll.jltfispCoFileList?exists && coAll.jltfispCoFileList?size > 0)>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th style="width:8%;">名称</th>
                                    <th>附件</th>
                                </tr>
                            	<tr>
                                	<td>${loanformManage.fileLabel1}</td>
                                    <td>
                                       <#assign n1 = 0/>
                                       <#list coAll.jltfispCoFileList as expert>
                                       <#if (expert.filetype == 1 && expert.filepath !=null)>
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <#elseif (expert.filetype == 1 && expert.filepath ==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <#else>
                                        <#assign n1 = n1+1/>
                                        <#if (coAll.jltfispCoFileList?size == n1)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        </#if>
                                        </#list>
                                        <div class="btnUp" style="cursor:pointer;">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile1" id="UpFile1" onchange="ajaxFileUpload(1,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel2}</td>
                                    <td>
                                        <#assign n2 = 0/>
                                        <#list coAll.jltfispCoFileList as expert>
                                    	<#if (expert.filetype == 2 && expert.filepath!=null)>
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <#elseif (expert.filetype == 2 && expert.filepath==null)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <#else>
                                        <#assign n2 = n2+1/>
                                        <#if (coAll.jltfispCoFileList?size == n2)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        </#if>
                                        </#list>
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile2" id="UpFile2" onchange="ajaxFileUpload(2,${applytype})"/>
                                           <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel3}</td>
                                    <td>
                                        <#assign n3 = 0/>
                                        <#list coAll.jltfispCoFileList as expert>
                                    	<#if (expert.filetype == 3 && expert.filepath !=null)>
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <#elseif (expert.filetype == 3 && expert.filepath==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <#else>
                                        <#assign n3 = n3+1/>
                                        <#if (coAll.jltfispCoFileList?size == n3)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        </#if>
                                        </#list>
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile3" id="UpFile3" onchange="ajaxFileUpload(3,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel4}</td>
                                    <td>
                                        <#assign n4 = 0/>
                                        <#list coAll.jltfispCoFileList as expert>
                                    	<#if (expert.filetype == 4 && expert.filepath !=null)>
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <#elseif (expert.filetype == 4 && expert.filepath==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <#else>
                                        <#assign n4 = n4+1/>
                                        <#if (coAll.jltfispCoFileList?size == n4)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        </#if>
                                        </#list>
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile4" id="UpFile4" onchange="ajaxFileUpload(4,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel5}</td>
                                    <td>
                                        <#assign n5 = 0/>
                                        <#list coAll.jltfispCoFileList as expert>
                                    	<#if (expert.filetype == 5 && expert.filepath !=null)>
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <#elseif (expert.filetype == 5 && expert.filepath==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <#else>
                                        <#assign n5 = n5+1/>
                                        <#if (coAll.jltfispCoFileList?size == n5)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        </#if>
                                        </#list>
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile5" id="UpFile5" onchange="ajaxFileUpload(5,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel6}</td>
                                    <td>
                                        <#assign n6 = 0/>
                                        <#list coAll.jltfispCoFileList as expert>
                                    	<#if (expert.filetype == 6 && expert.filepath !=null)>
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <#elseif (expert.filetype == 6 && expert.filepath==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <#else>
                                        <#assign n6 = n6+1/>
                                        <#if (coAll.jltfispCoFileList?size == n6)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        </#if>
                                        </#list>
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile6" id="UpFile6" onchange="ajaxFileUpload(6,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                        
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel7}</td>
                                    <td>
                                        <#assign n7 = 0>
                                        <#list coAll.jltfispCoFileList as expert>
                                    	<#if (expert.filetype == 7 && expert.filepath !=null)>
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <#elseif (expert.filetype == 7 && expert.filepath==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <#else>
                                        <#assign n7 = n7+1>
                                        <#if (coAll.jltfispCoFileList?size == n7)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        </#if>
                                        </#list>
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile7" id="UpFile7" onchange="ajaxFileUpload(7,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                        
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel8}</td>
                                    <td>
                                        <#assign n8 = 0>
                                        <#list coAll.jltfispCoFileList as expert>
                                    	<#if (expert.filetype == 8 && expert.filepath !=null)>
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <#elseif (expert.filetype == 8 && expert.filepath==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <#else>
                                        <#assign n8 = n8+1>
                                        <#if (coAll.jltfispCoFileList?size == n8)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        </#if>
                                        </#if>
                                        </#list>
                                        <div class="btnUp" >
                                        	<input  unselectable="on" style="cursor:pointer;" type="file" name="UpFile8" id="UpFile8" onchange="ajaxFileUpload(8,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <#else>
                            <table width="100%" class="tab3 tab4">
                            	<tr>
                                	<th style="width:8%;">名称</th>
                                    <th>附件</th>
                                </tr>
                            	<tr>
                                	<td>${loanformManage.fileLabel1}</td>
                                    <td>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div class="btnUp" style="cursor:pointer;">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile1" id="UpFile1" onchange="ajaxFileUpload(1,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel2}</td>
                                    <td>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile2" id="UpFile2" onchange="ajaxFileUpload(2,${applytype})"/>
                                           <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel3}</td>
                                    <td>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile3" id="UpFile3" onchange="ajaxFileUpload(3,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel4}</td>
                                    <td>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile4" id="UpFile4" onchange="ajaxFileUpload(4,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel5}</td>
                                    <td>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile5" id="UpFile5" onchange="ajaxFileUpload(5,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel6}</td>
                                    <td>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile6" id="UpFile6" onchange="ajaxFileUpload(6,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel7}</td>
                                    <td>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div class="btnUp">
                                        	<input  unselectable="on" type="file" style="cursor:pointer;" name="UpFile7" id="UpFile7" onchange="ajaxFileUpload(7,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel8}</td>
                                    <td>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div class="btnUp" >
                                        	<input  unselectable="on" style="cursor:pointer;" type="file" name="UpFile8" id="UpFile8" onchange="ajaxFileUpload(8,${applytype})"/>
                                            <a href="javascript:void(0);">上传</a>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            </#if>
                            </form>
                            <div class="btnFld"><a href="${path}/anon/loan/fillinApply?applytype=${applytype}"><input type="button" value="填写申请表" class="btnSave" /></a><a href="${path}/loan/onlineApplyPage?applytype=${applytype}"><input type="button" class="btnCan" value="取消" /></a></div>
                        </div>
                    </div>
                </div>
            </div>
         