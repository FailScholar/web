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
                                        <div>
                                            <#if coAll.jltfispCoFileList[0].preName ==''>
                                                                                                                                       未上传
                                            <#else>
                                            ${coAll.jltfispCoFileList[0].preName}
                                            </#if>
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
                                        <div>
                                            <#if coAll.jltfispCoFileList[1].preName ==''>
                                                                                                                                       未上传
                                            <#else>
                                            ${coAll.jltfispCoFileList[1].preName}
                                            </#if>
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
                                        <div>
                                            <#if coAll.jltfispCoFileList[2].preName ==''>
                                                                                                                                       未上传
                                            <#else>
                                            ${coAll.jltfispCoFileList[2].preName}
                                            </#if>
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
                                        <div>
                                            <#if coAll.jltfispCoFileList[3].preName ==''>
                                                                                                                                       未上传
                                            <#else>
                                            ${coAll.jltfispCoFileList[3].preName}
                                            </#if>
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
                                        <div>
                                            <#if coAll.jltfispCoFileList[4].preName ==''>
                                                                                                                                       未上传
                                            <#else>
                                            ${coAll.jltfispCoFileList[4].preName}
                                            </#if>
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
                                        <div>
                                            <#if coAll.jltfispCoFileList[5].preName ==''>
                                                                                                                                       未上传
                                            <#else>
                                            ${coAll.jltfispCoFileList[5].preName}
                                            </#if>
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
                                        <div>
                                            <#if coAll.jltfispCoFileList[6].preName ==''>
                                                                                                                                       未上传
                                            <#else>
                                            ${coAll.jltfispCoFileList[6].preName}
                                            </#if>
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
                                       <div>
                                            <#if coAll.jltfispCoFileList[7].preName ==''>
                                                                                                                                       未上传
                                            <#else>
                                            ${coAll.jltfispCoFileList[7].preName}
                                            </#if>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
         