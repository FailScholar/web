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
                                       <#assign n1 = 0>
                                       <#list coAll.jltfispCoFileList as expert>
                                       <#if (expert.filetype == 1 && expert.filepath != null) >
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <div>
                                        ${expert.preName} 
                                        </div>
                                        <#elseif (expert.filetype == 1 && expert.filepath ==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        <#else>
                                        <#assign n1 = n1+1>
                                        <#if (coAll.jltfispCoFileList?size == n1)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        </#if>
                                        </#if>
                                        </#list>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel2}</td>
                                    <td>
                                        <#assign n2 = 0>
                                       <#list coAll.jltfispCoFileList as expert>
                                       <#if (expert.filetype == 2 && expert.filepath != null) >
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <div>
                                        ${expert.preName} 
                                        </div>
                                        <#elseif (expert.filetype == 2 && expert.filepath ==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        <#else>
                                        <#assign n2 = n2+1>
                                        <#if (coAll.jltfispCoFileList?size == n2)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        </#if>
                                        </#if>
                                        </#list>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel3}</td>
                                    <td>
                                       <#assign n3 = 0>
                                       <#list coAll.jltfispCoFileList as expert>
                                       <#if (expert.filetype == 3 && expert.filepath != null) >
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <div>
                                        ${expert.preName} 
                                        </div>
                                        <#elseif (expert.filetype == 3 && expert.filepath ==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        <#else>
                                        <#assign n3 = n3+1>
                                        <#if (coAll.jltfispCoFileList?size == n3)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        </#if>
                                        </#if>
                                        </#list>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel4}</td>
                                    <td>
                                    	<#assign n4 = 0>
                                       <#list coAll.jltfispCoFileList as expert>
                                       <#if (expert.filetype == 4 && expert.filepath != null) >
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <div>
                                        ${expert.preName} 
                                        </div>
                                        <#elseif (expert.filetype == 4 && expert.filepath ==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        <#else>
                                        <#assign n4 = n4+1>
                                        <#if (coAll.jltfispCoFileList?size == n4)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        </#if>
                                        </#if>
                                        </#list>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel5}</td>
                                    <td>
                                    	<#assign n5 = 0>
                                       <#list coAll.jltfispCoFileList as expert>
                                       <#if (expert.filetype == 5 && expert.filepath != null) >
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <div>
                                        ${expert.preName} 
                                        </div>
                                        <#elseif (expert.filetype == 5 && expert.filepath ==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        <#else>
                                        <#assign n5 = n5+1>
                                        <#if (coAll.jltfispCoFileList?size == n5)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        </#if>
                                        </#if>
                                        </#list>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel6}</td>
                                    <td>
                                    	<#assign n6 = 0>
                                       <#list coAll.jltfispCoFileList as expert>
                                       <#if (expert.filetype == 6 && expert.filepath != null) >
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <div>
                                        ${expert.preName} 
                                        </div>
                                        <#elseif (expert.filetype == 6 && expert.filepath ==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        <#else>
                                        <#assign n6 = n6+1>
                                        <#if (coAll.jltfispCoFileList?size == n6)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        </#if>
                                        </#if>
                                        </#list>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel7}</td>
                                    <td>
                                    	<#assign n7 = 0>
                                       <#list coAll.jltfispCoFileList as expert>
                                       <#if (expert.filetype == 7 && expert.filepath != null) >
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <div>
                                        ${expert.preName} 
                                        </div>
                                        <#elseif (expert.filetype == 7 && expert.filepath ==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        <#else>
                                        <#assign n7 = n7+1>
                                        <#if (coAll.jltfispCoFileList?size == n7)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        </#if>
                                        </#if>
                                        </#list>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel8}</td>
                                    <td>
                                    	<#assign n8 = 0>
                                       <#list coAll.jltfispCoFileList as expert>
                                       <#if (expert.filetype == 8 && expert.filepath != null) >
                                    	<img width="110px" height="110px;"  src="${path}${expert.filepath}" class="blank" />
                                        <div>
                                        ${expert.preName} 
                                        </div>
                                        <#elseif (expert.filetype == 8 && expert.filepath ==null)>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        <#else>
                                        <#assign n8 = n8+1>
                                        <#if (coAll.jltfispCoFileList?size == n8)>
                                        <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        </#if>
                                        </#if>
                                        </#list>
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
                                        <div>
                                                                                                                           未上传
                                        </div>
                                        
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel2}</td>
                                    <td>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>

                                                                                                                                       未上传

                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel3}</td>
                                    <td>

                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />

                                        <div>

                                                                                                                                         未上传

                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel4}</td>
                                    <td>

                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />

                                        <div>

                                                                                                                                         未上传

                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel5}</td>
                                    <td>

                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />

                                        <div>

                                                                                                                                      未上传

                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel6}</td>
                                    <td>

                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />

                                        <div>

                                                                                                                                          未上传

                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel7}</td>
                                    <td>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                        <div>
                                                                                                                          未上传
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                	<td>${loanformManage.fileLabel8}</td>
                                    <td>
                                         <img width="110px" height="110px;"  src="${path}/resource/images/blank.png" class="blank" />
                                       <div>
                                                                                                                                        未上传
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            </#if>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
         