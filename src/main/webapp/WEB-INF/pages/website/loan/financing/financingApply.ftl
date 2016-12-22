<#assign path=request.contextPath />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="renderer" content="webkit">
<#include "website/common/common.ftl" />
    <title>贷款服务在线申请</title>
</head>

<body>
<#include "website/common/header.ftl"/>
        <!--content开始-->
        <div class="content">
            <div class="bread">
                <a href="${path}/index">首页</a>&gt;<a href="${path}/anon/loan">贷款服务</a>&gt;<a href="javascript:;">在线申请</a>
            </div>
            <div class="calt">
                <p>股权融资申请</p>
                <h2>在线申请</h2>
                <ul class="progress">
                    <li class="li1 active"><b></b>1.填写企业基本信息<i></i></li>
                    <li class="li2"><b></b>2.填写申请表格<i></i></li>
                    <li class="li3"><b></b>3.完成申请</li>
                </ul>
                <div class="clear"></div>
                <div class="proList nli" style="padding-top:0;">
                    <!--填写企业基本信息-->
                    <div class="nlistCont">
                        <p class="ntit">企业基本信息</p>
                        <form id="coBase">
                        <table width="100%" class="tab3">
                            <tr>
                                <th><b class="red">*</b>${formLabel.baseCompany}</th>
                                <td colspan="3"><input type="text" class="txt" value="${user.username}" readonly="readonly" /></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>${formLabel.baseCorporaterepresentative}</th>
                                <td><input type="text" class="txt validate[required,mixSize[2],maxSize[50]]" id="corporateRepresentative" name="corporateRepresentative" value="${jltfispCoBaseDto.corporateRepresentative}" placeholder="请输入"/></td>
                                <th><b class="red">*</b>${formLabel.baseRegisteredcapital}</th>
                                <td><input type="text" class="txt validate[required,custom[number],maxSize[15]]" id="registeredCapital" name="registeredCapital" value="${jltfispCoBaseDto.registeredCapital}" placeholder="请输入"/>万元</td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>${formLabel.baseEstablishtime}</th>
                                <td><input type="text" class="txt dateIcon validate[required]" onClick="WdatePicker({readOnly:true})" placeholder="请选择"  id="establishTime" name="establishTime" value="${jltfispCoBaseDto.establishTime}" readonly="readonly"/></td>
                                <th><b class="red">*</b>${formLabel.baseSocialcreditcode}</th>
                                 <td><input type="text" class="txt" value="${user.socialCode}" readonly="readonly" /></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>${formLabel.baseTecDomain}</th>
                                <td colspan="3">
                                   <label><input type="radio" class="validate[required]" value="1" name="tecdomain" id="tecdomain" <#if jltfispCoBaseDto.tecdomain==1>checked="checked"</#if>/>电子信息技术</label>
                                   <label><input type="radio" class="validate[required]" value="2" name="tecdomain" id="tecdomain" <#if jltfispCoBaseDto.tecdomain==2>checked="checked"</#if>/>生物医药技术</label>
                                   <label><input type="radio" class="validate[required]" value="3" name="tecdomain" id="tecdomain" <#if jltfispCoBaseDto.tecdomain==3>checked="checked"</#if>/>航空航天技术</label>
                                   <label><input type="radio" class="validate[required]" value="4" name="tecdomain" id="tecdomain" <#if jltfispCoBaseDto.tecdomain==4>checked="checked"</#if>/>新科技技术</label>
                                   <label><input type="radio" class="validate[required]" value="5" name="tecdomain" id="tecdomain" <#if jltfispCoBaseDto.tecdomain==5>checked="checked"</#if>/>高技术服务业</label>
                                   <label><input type="radio" class="validate[required]" value="6" name="tecdomain" id="tecdomain" <#if jltfispCoBaseDto.tecdomain==6>checked="checked"</#if>/>新能源节能技术</label>
                                   <label><input type="radio" class="validate[required]" value="7" name="tecdomain" id="tecdomain" <#if jltfispCoBaseDto.tecdomain==7>checked="checked"</#if>/>资源环境技术</label>
                                   <label><input type="radio" class="validate[required]" value="8" name="tecdomain" id="tecdomain" <#if jltfispCoBaseDto.tecdomain==8>checked="checked"</#if>/>高新技术改造传统行业</label>
                                </td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>${formLabel.baseLastYearSellScale}</th>
                                <td colspan="3">
                                  <label><input type="radio" class="validate[required]" value="1" name="lastyearsellscale" id="lastyearsellscale" <#if jltfispCoBaseDto.lastyearsellscale==1>checked="checked"</#if>/>0-500万</label>
                                  <label><input type="radio" class="validate[required]" value="2" name="lastyearsellscale" id="lastyearsellscale" <#if jltfispCoBaseDto.lastyearsellscale==2>checked="checked"</#if>/>501-1000万</label>
                                  <label><input type="radio" class="validate[required]" value="3" name="lastyearsellscale" id="lastyearsellscale" <#if jltfispCoBaseDto.lastyearsellscale==3>checked="checked"</#if>/>1001-3000万</label>
                                  <label><input type="radio" class="validate[required]" value="4" name="lastyearsellscale" id="lastyearsellscale" <#if jltfispCoBaseDto.lastyearsellscale==4>checked="checked"</#if>/>3001-5000万</label>
                                  <label><input type="radio" class="validate[required]" value="5" name="lastyearsellscale" id="lastyearsellscale" <#if jltfispCoBaseDto.lastyearsellscale==5>checked="checked"</#if>/>5001-1亿</label>
                                  <label><input type="radio" class="validate[required]" value="6" name="lastyearsellscale" id="lastyearsellscale" <#if jltfispCoBaseDto.lastyearsellscale==6>checked="checked"</#if>/>1-2亿</label>
                                  <label><input type="radio" class="validate[required]" value="7" name="lastyearsellscale" id="lastyearsellscale" <#if jltfispCoBaseDto.lastyearsellscale==7>checked="checked"</#if>/>2亿以上</label>
                                  <label><input type="radio" class="validate[required]" value="8" name="lastyearsellscale" id="lastyearsellscale" <#if jltfispCoBaseDto.lastyearsellscale==8>checked="checked"</#if>/>其他</label>
                                </td>
                            </tr>
                            <tr>
                               <th><b class="red">*</b>${formLabel.baseOfficeaddress}</th>
                               <td colspan="3">
                               		<select id="officeProv" name="officeProv" value="${jltfispCoBaseDto.officeProv}"></select>
                                    <select id="officeCity" name="officeCity" value="${jltfispCoBaseDto.officeCity}"></select>
                                    <select id="officeArea" name="officeArea" value="${jltfispCoBaseDto.officeArea}"></select>
                                    <input id="officeAddress" name="officeAddress" type="text" value="${jltfispCoBaseDto.officeAddress}" class="txt validate[required,mixSize[2],maxSize[50]]" placeholder="详细地址"  />
                                </td>
                            </tr>
                            <tr>
								<!-- 数据库未设置邮编，此处将邮箱email字段又来保存邮编-->
                                <th><b class="red">*</b>${formLabel.basePostCode}</th>
                                <td><input type="text" class="txt validate[required,minSize[6],maxSize[6],custom[number]]"  id="email" name="email" value="${jltfispCoBaseDto.email}" class="txt validate[required,mixSize[6],maxSize[6]]" placeholder="请输入"/></td>
                                <th><b class="red">*</b>${formLabel.baseWorkerNumber}</th>
                                <td><input type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[8]]" id="workernumber" name="workernumber" value="${jltfispCoBaseDto.workernumber}" placeholder="请输入"/></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>${formLabel.baseRegisteredaddress}</th>
                                <td colspan="3">
                                   <input type="text" class="txt validate[required,mixSize[2],maxSize[50]]" placeholder="请输入"  id="registeredAddress" name="registeredAddress" value="${jltfispCoBaseDto.registeredAddress}"/>
                                </td>
                            </tr>
                            <tr>
                                <th>${formLabel.baseRefereeCompany}</th>
                                <td><input type="text" class="txt validate[mixSize[2],maxSize[30]]" placeholder="请输入" id="refereecompany" name="refereecompany" value="${jltfispCoBaseDto.refereecompany}"/></td>
                                <th>${formLabel.baseReferee}</th>
                                <td><input type="text" class="txt validate[mixSize[2],maxSize[20]]" placeholder="请输入" id="referee" name="referee" value="${jltfispCoBaseDto.referee}"/></td>
                            </tr>
                            <tr>
                                <th>${formLabel.baseRefereeMobile}</th>
                                <td><input type="text" class="txt validate[custom[mobile]]" placeholder="请输入" id="refereemobile" name="refereemobile" value="${jltfispCoBaseDto.refereemobile}"/></td>
                                <th>${formLabel.baseRefereeEmail}</th>
                                <td><input type="text" class="txt validate[mixSize[2],maxSize[50],custom[email]]" placeholder="请输入" id="refereeemail" name="refereeemail" value="${jltfispCoBaseDto.refereeemail}"/></td>
                            </tr>
                            <tr>
                                <th>${formLabel.baseCompanyUrl}</th>
                                <td colspan="3"><input type="text" class="txt validate[mixSize[5],maxSize[100],custom[url]]" placeholder="请输入网址" id="companyurl" name="companyurl" value="${jltfispCoBaseDto.companyurl}"/></td>
                            </tr>
                        </table>
                        <input type="hidden" id="shareholderListSize" value="${shareholderListSize}"/>
                        <p class="ntit">${formLabel.baseMainshareholder}<a href="javascript:;" class="fr add">添加</a></p>
                        <table width="100%" class="tab3 tab4 module">
                            <tr>
                                <th>${formLabel.baseShareholdername}</th>
                                <th>${formLabel.baseCorporaterepresentative}</th>
                                <th>${formLabel.baseStock}</th>
                            </tr>
                            <#if jltfispCoBaseDto.jltfispFinShareholderList?? && (jltfispCoBaseDto.jltfispFinShareholderList?size > 0) >
	                            <#list jltfispCoBaseDto.jltfispFinShareholderList as jltfispFinShareholderList>
	                            	<#if jltfispFinShareholderList_index==0>
	                         		<tr>
	                               	 	 <td><b class="red">*</b><input type="text" class="txt validate[required,mixSize[2],maxSize[20]]" name="jltfispFinShareholderList[${jltfispFinShareholderList_index}].name" value="${jltfispFinShareholderList.name}"/></td>
	                               		 <td><b class="red">*</b><input type="text" class="txt validate[required,mixSize[2],maxSize[20]]" name="jltfispFinShareholderList[${jltfispFinShareholderList_index}].number" value="${jltfispFinShareholderList.number}"/></td>
	                               		 <td><b class="red">*</b><input type="text" class="txt validate[required,mixSize[1],maxSize[3]]" name="jltfispFinShareholderList[${jltfispFinShareholderList_index}].ratio" value="${jltfispFinShareholderList.ratio}"/><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
	                            	</tr>
	                            	<#else>
	                            	<tr>
	                               	 	 <td><b class="red">*</b><input type="text" class="txt validate[required,minSize[1],maxSize[20]]" name="jltfispFinShareholderList[${jltfispFinShareholderList_index}].name" value="${jltfispFinShareholderList.name}"/></td>
	                               		 <td><b class="red">*</b><input type="text" class="txt validate[required,minSize[1],maxSize[20]]" name="jltfispFinShareholderList[${jltfispFinShareholderList_index}].number" value="${jltfispFinShareholderList.number}"/></td>
	                               		 <td><b class="red">*</b><input type="text" class="txt validate[required,minSize[1],maxSize[3]]" name="jltfispFinShareholderList[${jltfispFinShareholderList_index}].ratio" value="${jltfispFinShareholderList.ratio}"/><a onclick='removetr(this)' href='javascript:void(0)'>删除</a></td>
	                            	</tr>
	                            	</#if>
				      			 </#list> 
	                         <#else> 
	                            <tr>
	                                <td><b class="red">*</b><input type="text" class="txt validate[required,minSize[1],maxSize[20]]"  name="jltfispFinShareholderList[0].name" placeholder="请输入" /></td>
	                                <td><b class="red">*</b><input type="text" class="txt validate[required,minSize[1],maxSize[20]]"  name="jltfispFinShareholderList[0].number" placeholder="请输入" /></td>
	                                <td><b class="red">*</b><input type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[3]]"  name="jltfispFinShareholderList[0].ratio" placeholder="请输入" /><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
	                            </tr>
                            </#if>
                        </table>
                        <p class="ntit">企业联系人</p>
                        <table width="100%" class="tab3">
                            <tr>
                                <th><b class="red">*</b>${formLabel.baseLinkman}</th>
                                <td><input type="text" class="txt validate[required,minSize[1],maxSize[20]]"  placeholder="请输入" id="linkMan" name="linkMan" value="${jltfispCoBaseDto.linkMan}"/></td>
                                <th><b class="red">*</b>${formLabel.basePhoneorfax}</th>
                                <td><input type="text" class="txt validate[required,minSize[3],maxSize[4],custom[number]]" style="width:56px;" placeholder="区号" id="zoneDescription" name="zoneDescription" value="${jltfispCoBaseDto.zoneDescription}"/>-<input type="text" class="txt validate[required,minSize[6],maxSize[10],custom[number]]" style="width:120px;" placeholder="电话" id="phoneOrFax" name="phoneOrFax" value="${jltfispCoBaseDto.phoneOrFax}"/></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>${formLabel.baseLinkmobile}</th>
                                <td><input type="text" class="txt validate[required,custom[mobile]]" placeholder="请输入" id="linkMobile" name="linkMobile" value="${jltfispCoBaseDto.linkMobile}"/></td>
                                <th><b class="red">*</b>${formLabel.baseLinkemail}</th>
                                <td><input type="text" class="txt validate[required,mixSize[2],maxSize[50],custom[email]]" placeholder="请输入" id="linkEmail" name="linkEmail" value="${jltfispCoBaseDto.linkEmail}"/></td>
                            </tr>
                        </table>
                        <p class="ntit">项目简介</p>
                        <table width="100%" class="tab3">
                            <tr>
                                <th width="8%"><b class="red">*</b>${formLabel.baseProjectName}</th>
                                <td><input type="text" class="txt validate[required,minSize[1],maxSize[50]]" placeholder="请输入" id="projectname" name="projectname" value="${jltfispCoBaseDto.projectname}"/></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>${formLabel.baseMarketProductSummary}</th>
                                <td><textarea class="txta dateIcon validate[required,minSize[1],maxSize[500]]" id="marketproductsummary" name="marketproductsummary">${jltfispCoBaseDto.marketproductsummary}</textarea></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>${formLabel.baseManagerTeamSummary}</th>
                                <td><textarea class="txta dateIcon validate[required,minSize[1],maxSize[500]]" id="managerteamsummary" name="managerteamsummary">${jltfispCoBaseDto.managerteamsummary}</textarea></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>${formLabel.baseTechnologyQualifications}</th>
                                <td>
	                                <label><input type="radio" class="validate[required]"  value="1" name="technologyqualifications" id="technologyqualifications" <#if jltfispCoBaseDto.technologyqualifications==1>checked="checked"</#if>/>高科技企业</label>
	                                <label><input type="radio" class="validate[required]"  value="2" name="technologyqualifications" id="technologyqualifications" <#if jltfispCoBaseDto.technologyqualifications==2>checked="checked"</#if>/>科技小巨人企业</label>
	                                <label><input type="radio" class="validate[required]"  value="3" name="technologyqualifications" id="technologyqualifications" <#if jltfispCoBaseDto.technologyqualifications==3>checked="checked"</#if>/>科技小巨人培训企业</label>
	                                <label><input type="radio" class="validate[required]"  value="4" name="technologyqualifications" id="technologyqualifications" <#if jltfispCoBaseDto.technologyqualifications==4>checked="checked"</#if>/>软件企业</label>
	                                <label><input type="radio" class="validate[required]"  value="5" name="technologyqualifications" id="technologyqualifications" <#if jltfispCoBaseDto.technologyqualifications==4>checked="checked"</#if>/>其它</label><br/>
<!--                                     <div class="else">其他<input name="otherDesc" id="otherDesc" name="otherDesc" type="text" class="txt validate[maxSize[1000]]" value="${jltfispCoBaseDto.otherDesc}"/></div> -->
                                </td>
                            </tr>
                        </table>
                        </form>
                        <div class="logbtn" style="margin-top:30px;">
                        	<input type="submit" class="can" value="取消" onclick="location.href='${path}/index'"/>	
                       		<input type="button" class="nor" value="下一步" />
                        </div>
                    </div>
                </div>

                <div class="proList nli" style="padding-top:0; display:none;">
                    <!--填写申请表格-->
                    <div class="nlistCont">
                        <p class="ntit">企业申请表格</p>
                        <form id="finMaterial">
                        <table width="100%" class="tab3">
                            <tr>
                                <th width="8%"><b class="red">*</b>${formLabel.baseCompany}</th>
                                <td><input type="text" class="txt" value="${user.username}" readonly="readonly" /></td>
                                <input type="hidden" class="txt" id="infoId" name="infoId"  value="${jltfispCoBaseDto.id}"/>
                            </tr>
                            <tr>
                                <th width="8%"><b class="red">*</b>${formLabel.baseProjectName}</th>
                                <td><input type="text" class="txt" id="projectname2" readonly="readonly" /></td>
                            </tr>
                        </table>
                        <p class="ntit">近三年经营情况</p>
                        <table width="100%" class="tab3">
                            <tr>
                                <th width="8%"><b class="red">*</b>${formLabel.finMaterialYear}</th>
                                <td><input type="text" class="txt2" value="${year-1}" readonly="readonly" />年</td>
                                <td><input type="text" class="txt2" value="${year-2}" readonly="readonly" />年</td>
                                <td><input type="text" class="txt2" value="${year-3}" readonly="readonly" />年</td>
                            </tr>
                            <tr>
                                <th width="8%"><b class="red">*</b>${formLabel.finMaterialIncome}</th>
                                <td><input type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" id="incomeLast" name="incomeLast" value="${jltfispFinMaterial.incomeLast}"/>万元</td>
                                <td><input type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" id="incomeBeforeLast" name="incomeBeforeLast" value="${jltfispFinMaterial.incomeBeforeLast}"/>万元</td>
                                <td><input type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" id="incomeThreeLast" name="incomeThreeLast" value="${jltfispFinMaterial.incomeThreeLast}"/>万元</td>
                            </tr>
                            <tr>
                                <th width="8%"><b class="red">*</b>${formLabel.finMaterialProfit}</th>
                                <td><input type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]"  id="profitLast" name="profitLast" value="${jltfispFinMaterial.profitLast}"/>万元</td>
                                <td><input type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]"  id="profitBeforeLast" name="profitBeforeLast" value="${jltfispFinMaterial.profitBeforeLast}"/>万元</td>
                                <td><input type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]"  id="profitThreeLast" name="profitThreeLast" value="${jltfispFinMaterial.profitThreeLast}"/>万元</td>
                            </tr>
                        </table>
                        <p class="ntit">企业需求</p>
                        <table class="tab3" width="100%">
                            <tr>
                                <th><b class="red">*</b>${formLabel.finMaterialCapitals}</th>
                                <td><input type="text" class="txt validate[required,custom[onlyNumberSp],minSize[1],maxSize[10]]" id="capitals" name="capitals" value="${jltfispFinMaterial.capitals}"/>万元</td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>${formLabel.finMaterialRequireOrganization}</th>
                                <td><textarea class="txta dateIcon validate[required,minSize[1],maxSize[250]]" style="height:40px;" id="requireOrganization" name="requireOrganization">${jltfispFinMaterial.requireOrganization}</textarea></td>
                            </tr>
                            <tr>
                                <th><b class="red">*</b>${formLabel.finMaterialRequireService}</th>
                                <td>
	                                <label><input type="radio" class="validate[required] " value="1" name="requireService" id="requireService" <#if jltfispFinMaterial.requireService=="1">checked="checked"</#if>/>网站上发布</label>
	                                <label><input type="radio" class="validate[required] " value="2" name="requireService" id="requireService" <#if jltfispFinMaterial.requireService=="2">checked="checked"</#if>/>项目洽谈会发布</label>
	                                <label><input type="radio" class="validate[required] " value="3" name="requireService" id="requireService" <#if jltfispFinMaterial.requireService=="3">checked="checked"</#if>/>与投资机构个别洽谈</label>
                                    <div class="else" style="line-height:24px;">具体要求</div>
                                    <textarea class="txta dateIcon validate[required,minSize[1],maxSize[250]]" style="height:40px;" id="requireServiceText" name="requireServiceText">${jltfispFinMaterial.requireServiceText}</textarea>
                                </td>
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
				<div id="finishApplyForm" class="proList nli" style="padding-top:0; display:none;"> </div>
  

            </div>
        </div>
        <!--content结束-->

</div>
</div>

<div class="clear"></div>
<div class="clearfix"></div>
</div>
<#include "website/common/footer.ftl" />
</body>
</html>

<script type="text/javascript">
	
	//办公地址省份
	var officeProv="${jlfispPsBaseDto.officeProv}";
	//办公地址市级
	var officeCity="${jlfispPsBaseDto.officeCity}";
	//办公地址区县
	var officeArea="${jlfispPsBaseDto.officeArea}";
    positionNavigation(1);
	var index;
    $(document).ready(function(e) {
    	 $("#coBase ,#finMaterial").validationEngine({promptPosition :'bottomRight',focusFirstField:true,showOneMessage:true});
        $('.proList .logbtn input.nor').click(function(){
            var index2=$(this).parents('.proList').index()-3;
            var url;
            var data;
            if(index2==1)
            {
            	var registeredCapital=$("#registeredCapital").val();
            	$("#registeredCapital").val(Number(registeredCapital).toFixed(2));
            	if(!$('#coBase').validationEngine('validate')){
                      return false;
                }
                var projectname2=$("#projectname").val();
                $("#projectname2").val(projectname2);
            	data=$("#coBase").serialize();
            	$.ajax({
                    type: "POST",
                    url: '${path}/anon/loan/saveFinanceBasicInfo',
                    data: data,
                    dateType:"json",
                    success: function(msg){
                    }
                })
                $('.progress li').removeClass('active').eq(index2).addClass('active');
                $(this).parents('.proList').hide().next('.proList').show();
            }
            if(index2==2)
            {
            	if(!$('#finMaterial').validationEngine('validate')){
                      return false;
                }
            	data=$("#finMaterial").serialize();
            	$.ajax({
                    type: "POST",
                    url: '${path}/anon/loan/saveJltfispFinMaterialInfo',
                    data: data,
                    dateType:"json",
                    success: function(msg){
                    	 $("#finishApplyForm").html(msg);
                    }
                })
                $('.progress li').removeClass('active').eq(index2).addClass('active');
                $(this).parents('.proList').hide().next('.proList').show();
            }
        });
        $('.proList .logbtn input.por').click(function(){
            $('.progress li').removeClass('active').eq(0).addClass('active');
            $(this).parents('.proList').hide().prev('.proList').show();
        });

        $('.nlist li').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
            $(this).parent().siblings(".nlistCont").hide().eq($(this).index()).show();
        });

        $('.lnav li').click(function(){
            $(this).addClass('active').siblings().removeClass('active');
        });


        //删除
        $('.delete').live('click',function(){
            $(this).parents('.tab3').remove();
        });

        index = $('#shareholderListSize').val();
        if(index==""||index==null){
			index=1;
        }
        $('.add').click(function(){
            var 	trhtml = "</br><tr>";
            trhtml +="<td><b class='red'>*</b><input type='text' class='txt validate[required,mixSize[2],maxSize[1000]]' name='jltfispFinShareholderList["+index+"].name'  placeholder='请输入' /></td>";
            trhtml +="<td><b class='red'>*</b><input type='text' class='txt validate[required,mixSize[2],maxSize[1000]]' name='jltfispFinShareholderList["+index+"].number' placeholder='请输入' /></td>";
            trhtml +="<td><b class='red'>*</b><input type='text' class='txt validate[required,mixSize[2],maxSize[3]]' name='jltfispFinShareholderList["+index+"].ratio' placeholder='请输入' /><a onclick='removetr(this)' href='javascript:void(0)'>删除</a></td>";
            trhtml +="</tr>";
			if($('.module tr').length<11){
				$('.module tr:last').after(trhtml);
				index++;
			}
			else{
				dialog.tipsPop('ban-pop','提示:',"最多可增至10位股东",'确定');
				return false;
				}
        });

//       初始化加载经营地省、市、区
        $.ajax({
            type: "POST",
            url: "${path}/anon/area",
            dateType:"json",
            success: function(msg){
            	 $("#officeProv").append("<option value='"+msg[7].id+"'>"+msg[7].name+"</option>");  
            	 for(var i=1;i<msg.length;i++){
                   if(i!=7){
                      $("#officeProv").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                    }
                  } 
                  if(null!=officeProv || ""!=officeProv){
                  $("#officeProv   option[value='"+officeProv+"']").attr("selected",true);
                  }
                  changCity($("#officeProv").val());
              }
        });
        
        
      //获取城市
        function changCity(id){
	            $.ajax({
	            type: "POST",
	            url: "${path}/anon/area",
	            data:{areaId:id},
	            dateType:"json",
	            success: function(msg){
            	 $("#officeCity").html("");
                 for(var i=0;i<msg.length;i++){
                      $("#officeCity").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
                  }
                 if(null!=officeCity || ""!=officeCity){
                      $("#officeCity   option[value='"+officeCity+"']").attr("selected",true);
                  }
	              changArea($("#officeCity").val());
	              }
	         });
         }
        
      //获取区域
        function changArea(id){
	            $.ajax({
	            type: "POST",
	            url: "${path}/anon/area",
	            data:{areaId:id},
	            dateType:"json",
	            success: function(msg){
	            	$("#officeArea").html("");
	                for(var i=0;i<msg.length;i++){
	                    $("#officeArea").append("<option value='"+msg[i].id+"'>"+msg[i].name+"</option>");  
	                }
	                if(null!=officeArea || ""!=officeArea){
	                    $("#officeArea   option[value='"+officeArea+"']").attr("selected",true);
	                    $("#officeArea").show();
	                 } 
	                else{
	                	 $("#officeArea").hide();
		                } 
	                if(msg.length==0){
	                    $("#officeArea").hide();
	                  }else{
	                    $("#officeArea").show();
	                  } 
	              }
	         });
        }
  		
        $("#officeProv").change(function(){  
       	 changCity($(this).val());
        }); 
        
        $("#officeCity").change(function(){  
        	changArea($(this).val());
        }); 
        
    });

    //移除股东
    function removetr(obj){
    		$(obj).parents('tr').remove();
    		index--;
    }
</script>