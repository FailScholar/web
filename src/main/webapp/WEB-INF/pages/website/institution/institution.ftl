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
    <title>吉林省科技金融信息服务平台</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="info">
                      <ul class="infoTab">
                          <li <#if type=="1">class="active"</#if>><a href="javascript:;">合作银行</a></li>
                          <li <#if type=="2">class="active"</#if>><a href="javascript:;">担保公司</a></li>
                          <li <#if type=="3">class="active"</#if>><a href="javascript:;">租赁公司</a></li>
                          <li <#if type=="4">class="active"</#if>><a href="javascript:;">保险公司</a></li>
                          <li <#if type=="5">class="active"</#if>><a href="javascript:;">中介机构</a></li>
                          <li>
                              <select>
                                  <option>投资机构</option>
                                  <option>小贷公司</option>
                              </select>&nbsp;
                          </li>
                      </ul>
                      <div class="clear"></div>
                       <a href="${path}/institution/institutionApply" class="apply2">申请成为合作机构</a>
                      <div class="infoList" <#if type!="1">style="display:none;"</#if>>
                          <ul class="applyList apy">
                              <li>
                                  <img style="width: 120px;height: 137px;" src="${path}/resource/images/img3.jpg" alt="img" class="appImg fl" />
                                  <div class="appDetail ap3 fr">
                                      <h3 class="fl"><a href="${path}/anon/institutionDetail">合作银行-吉林融资担保</a></h3>
                                      <div class="clear"></div>
                                      <p>自成立以来，创业接力担保致力于产品和服务的创新，与上海市科委及政策银行、商业银行等合作，成功推出了“科贷通履约担保”、“集合统贷”、“集合信托”、“结算通宝”等产品，为中小企业解决融资难题开辟路径，已为近700家企业提供累计30亿元的融资担保贷款。</p>
                                      <p class="contact"><span class="sp1">联系人：周梦奇</span><span class="sp2">电话：53413512</span><span class="sp3">地址：银城中路200号中银大厦36楼</span></p>
                                  </div>
                              </li>
                              <li>
                                  <img style="width: 120px;height: 137px;" src="${path}/resource/images/img3.jpg" alt="img" class="appImg fl" />
                                  <div class="appDetail ap3 fr">
                                      <h3 class="fl"><a href="#">合作银行-吉林融资担保</a></h3>
                                      <div class="clear"></div>
                                      <p>自成立以来，创业接力担保致力于产品和服务的创新，与上海市科委及政策银行、商业银行等合作，成功推出了“科贷通履约担保”、“集合统贷”、“集合信托”、“结算通宝”等产品，为中小企业解决融资难题开辟路径，已为近700家企业提供累计30亿元的融资担保贷款。</p>
                                      <p class="contact"><span class="sp1">联系人：周梦奇</span><span class="sp2">电话：53413512</span><span class="sp3">地址：银城中路200号中银大厦36楼</span></p>
                                  </div>
                              </li>
                              <li>
                                  <img style="width: 120px;height: 137px;" src="${path}/resource/images/img3.jpg" alt="img" class="appImg fl" />
                                  <div class="appDetail ap3 fr">
                                      <h3 class="fl"><a href="#">合作银行-吉林融资担保</a></h3>
                                      <div class="clear"></div>
                                      <p>自成立以来，创业接力担保致力于产品和服务的创新，与上海市科委及政策银行、商业银行等合作，成功推出了“科贷通履约担保”、“集合统贷”、“集合信托”、“结算通宝”等产品，为中小企业解决融资难题开辟路径，已为近700家企业提供累计30亿元的融资担保贷款。</p>
                                      <p class="contact"><span class="sp1">联系人：周梦奇</span><span class="sp2">电话：53413512</span><span class="sp3">地址：银城中路200号中银大厦36楼</span></p>
                                  </div>
                              </li>
                          </ul>
                      </div>
                      <div class="infoList" <#if type!="2">style="display:none;"</#if>>
                          <ul class="applyList apy">
                              <li>
                                  <img style="width: 120px;height: 137px;" src="${path}/resource/images/img3.jpg" alt="img" class="appImg fl" />
                                  <div class="appDetail ap3 fr">
                                      <h3 class="fl"><a href="${path}/anon/institutionDetail">担保公司-吉林融资担保</a></h3>
                                      <div class="clear"></div>
                                      <p>自成立以来，创业接力担保致力于产品和服务的创新，与上海市科委及政策银行、商业银行等合作，成功推出了“科贷通履约担保”、“集合统贷”、“集合信托”、“结算通宝”等产品，为中小企业解决融资难题开辟路径，已为近700家企业提供累计30亿元的融资担保贷款。</p>
                                      <p class="contact"><span class="sp1">联系人：周梦奇</span><span class="sp2">电话：53413512</span><span class="sp3">地址：银城中路200号中银大厦36楼</span></p>
                                  </div>
                              </li>
                          </ul>
                      </div>
                      <div class="infoList" <#if type!="3">style="display:none;"</#if>>
                          <ul class="applyList apy">
                              <li>
                                  <img style="width: 120px;height: 137px;" src="${path}/resource/images/img3.jpg" alt="img" class="appImg fl" />
                                  <div class="appDetail ap3 fr">
                                      <h3 class="fl"><a href="#">租赁公司-吉林融资担保</a></h3>
                                      <div class="clear"></div>
                                      <p>自成立以来，创业接力担保致力于产品和服务的创新，与上海市科委及政策银行、商业银行等合作，成功推出了“科贷通履约担保”、“集合统贷”、“集合信托”、“结算通宝”等产品，为中小企业解决融资难题开辟路径，已为近700家企业提供累计30亿元的融资担保贷款。</p>
                                      <p class="contact"><span class="sp1">联系人：周梦奇</span><span class="sp2">电话：53413512</span><span class="sp3">地址：银城中路200号中银大厦36楼</span></p>
                                  </div>
                              </li>
                          </ul>
                      </div>
                      <div class="infoList" <#if type!="4">style="display:none;"</#if>>
                          <ul class="applyList apy">
                              <li>
                                  <img style="width: 120px;height: 137px;" src="${path}/resource/images/img3.jpg" alt="img" class="appImg fl" />
                                  <div class="appDetail ap3 fr">
                                      <h3 class="fl"><a href="#">保险公司-吉林融资担保</a></h3>
                                      <div class="clear"></div>
                                      <p>自成立以来，创业接力担保致力于产品和服务的创新，与上海市科委及政策银行、商业银行等合作，成功推出了“科贷通履约担保”、“集合统贷”、“集合信托”、“结算通宝”等产品，为中小企业解决融资难题开辟路径，已为近700家企业提供累计30亿元的融资担保贷款。</p>
                                      <p class="contact"><span class="sp1">联系人：周梦奇</span><span class="sp2">电话：53413512</span><span class="sp3">地址：银城中路200号中银大厦36楼</span></p>
                                  </div>
                              </li>
                          </ul>
                      </div>
                      <div class="infoList" <#if type!="5">style="display:none;"</#if>>
                          <ul class="applyList apy">
                              <li>
                                  <img style="width: 120px;height: 137px;" src="${path}/resource/images/img3.jpg" alt="img" class="appImg fl" />
                                  <div class="appDetail ap3 fr">
                                      <h3 class="fl"><a href="#">中介机构-吉林融资担保</a></h3>
                                      <div class="clear"></div>
                                      <p>自成立以来，创业接力担保致力于产品和服务的创新，与上海市科委及政策银行、商业银行等合作，成功推出了“科贷通履约担保”、“集合统贷”、“集合信托”、“结算通宝”等产品，为中小企业解决融资难题开辟路径，已为近700家企业提供累计30亿元的融资担保贷款。</p>
                                      <p class="contact"><span class="sp1">联系人：周梦奇</span><span class="sp2">电话：53413512</span><span class="sp3">地址：银城中路200号中银大厦36楼</span></p>
                                  </div>
                              </li>
                          </ul>
                      </div>
                  </div>
                  <div class="clear"></div>
                  <div class="page">
                      <a href="javascript:;">&lt;</a>
                      <a href="javascript:;">1</a>
                      <a href="javascript:;">2</a>
                      <span>...</span>
                      <a href="javascript:;">15</a>
                      <a href="javascript:;">16</a>
                      <a href="javascript:;">&gt;</a>
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