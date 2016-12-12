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
  <div class="wrap">
      <div class="bg">
          <div class="center">
              <div class="top">
                  <img src="${path}/resource/images/logo.png" alt="logo" />
                  <div class="topR fr">
                      <div class="searchIcon fl">&nbsp;</div>
                      <div class="search fl">
                          <form method="post" action="${path}/anon/search">
                              <input type="text" name="keyWords" class="searchText" />
                              <input type="submit" class="searchBtn" value="" />
                          </form>
                      </div>
                          <@shiro.user>
                              <div class="person fr">
                                  <a href="${path}/main"><@shiro.principal/></a>
                                  <ul>
                                      <li class="first"><a href="${path}/user/toResetPass">修改密码</a></li>
                                      <li><a href="${path}/logout">安全退出</a></li>
                                  </ul>
                              </div>
                          </@shiro.user>
                          <@shiro.guest>
                              <a href="${path}/login" class="login">登录</a><a href="${path}/anon/regist/toRegistPage" class="register">注册</a>
                          </@shiro.guest>
                  </div>
                  <div class="clear"></div>
              </div>
              <div class="nav">
                  <ul>
                      <@indexTag.indexHeader/>
                  </ul>
              </div>
              <div class="list">
                  <div class="ltop">
                      <ul class="fl">
                          <li class="active"><a href="javascript:;">科技金融服务</a></li>
                          <li><a href="javascript:;">最新动态</a></li>
                      </ul>
                      <ul class="fr">
                        <#list indexCache.notices as notices>
                            <#if notices.mark = 'notice'>
                              <li><b></b><a href="${path}/anon/detail">${notices.title}</a><span>${notices.publishTime ? date}</span></li>
                            </#if>
                        </#list>
                      </ul>
                  </div>
                  <div class="lbot">
                      <ul class="snav">
                          <li class="li1"><a href="${path}/loan/onlineApply?applytype=1"><b></b>科技履约贷款申请</a></li>
                          <li class="li2"><a href="${path}/loan/onlineApply?applytype=2"><b></b>科技小巨人贷款申请</a></li>
                          <li class="li3"><a href="${path}/loan/onlineApply?applytype=3"><b></b>高新技术贷款申请</a></li>
                          <li class="li4"><a href="${path}/loan/onlineApply?applytype=4"><b></b>科技微贷通贷款申请</a></li>
                          <li class="li5"><a href="${path}/loan/judgeIsApplyLoan?applytype=5"><b></b>保费补贴申请</a></li>
                          <li class="li6"><a href="${path}/loan/financeKnow"><b></b>股权融资申请</a></li>
                      </ul>
                  </div>
                  <div class="lbot" style="display:none;">
                      <div class="banner">
                          <span class="pre-nex prev"></span>
                          <span class="pre-nex next"></span>
                          <div class="banner-con">
                              <#--最新动态轮播图-->
                              <ul class="img-list clearfix">
                              <#list indexCache.indices as indices>
                                  <#if indices.contentType = 1>
                                      <li><a href="${indices.url}"><img src="${path}${indices.image}" alt="img"/></a></li>
                                  </#if>
                              </#list>
                              </ul>
                              <ul class="btn-list">
                                  <li class="cur"><span></span></li>
                                  <li><span></span></li>
                                  <li><span></span></li>
                              </ul>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="clear"></div>
              <div class="slider">
              <ul>
              	<li><a href="${path}/anon/regist/toRegistPage" class="a1" title="注册">&nbsp;</a></li>
              	<li><a href="${path}/login" class="a2" title="登录">&nbsp;</a></li>
              	<li><a href="${path}/communicate/page" target="_blank" class="a3" title="咨询">&nbsp;</a></li>
              	<li><a href="javascript:;" class="a4" title="分享">&nbsp;</a>
              		<div class="none">
			        <div class="fx_nr">
			          <div id="bdshare" class="bdshare_t bds_tools"> <a class="bds_tsina">新浪微博</a> <a class="bds_qzone">QQ空间</a> <a class="bds_tqq">腾讯微博</a> <a class="bds_renren">人人网</a> <a class="bds_t163">网易微博</a> <a class="bds_tqf">腾讯朋友</a> <a class="bds_douban">豆瓣网</a> <a class="bds_sqq">QQ好友</a> <span class="bds_more">更多</span> </div>
			          <script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=0"></script> 
			          <script type="text/javascript" id="bdshell_js"></script> 
			          <script type="text/javascript">
			            document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date() / 3600000);
			        </script> </div>
			      </div>
              	</li>
              </ul>
              </div>
          </div>
      </div>
      <div class="bg1">
          <div class="center">
              <div class="cont">
                  <div class="ml fl">
                      <div class="sel">
                          <ul>
                          <#list indexCache.columns as columns>
                              <#if columns.mark = 'news_1'>
                                  <li class="active" lang="${path}/perm/news"><a href="javascript:;">${columns.columnName}</a></li>
                              </#if>
                              <#if columns.mark = 'video'>
                                  <li id="index_video" lang="${path}/perm/cloud"><a href="javascript:;">${columns.columnName}</a></li>
                              </#if>
                          </#list>
                          </ul>
                          <#list indexCache.columns as columns>
                              <#if columns.mark = 'news_2'>
                                  <a href="${path}/perm/news?columnId=${columns.id}" onclick="setColumnIndex(2)">${columns.columnName}</a>
                              </#if>
                          </#list>
                          <a href="${path}/perm/news" class="fr">更多&nbsp;&gt;</a>
                      </div>
                      <div class="clear"></div>
                      <div class="selCont">
                          <#--新闻资讯列表开始-->
                          <ul class="fl">
                              <#list indexCache.notices as notices>
                                  <#if notices.mark = 'news'>
                                      <li><a href="${path}/anon/getNewsDetail?id=${notices.id}" onclick="setColumnIndex(2)">
                                          <h5>${notices.title}</h5>
                                          <span class="sp1">${notices.publishTime ? date}</span><span>${notices.source}</span>
                                      </a></li>
                                  </#if>
                              </#list>
                          </ul>
                          <#--新闻资讯列表结束-->
                          <#--新闻资讯图片开始-->
                          <ul class="imgList fr">
                          <#list indexCache.notices as notices>
                              <#if notices.mark = 'news'>
                                  <li><a href="javascript:;"><img style="width: 400px;height: 311px" src="${path}${notices.image}" alt="img" /></a></li>
                              </#if>
                          </#list>
                          </ul>
                          <#--新闻资讯图片结束-->
                      </div>
                      <div class="selCont" style="display:none;">
                          <#--视频资源列表开始-->
                          <ul class="fl">
                          <#list indexCache.notices as notices>
                              <#if notices.mark = 'video'>
                                  <li><a href="javascript:;" onclick="toVideoDetailPage(${notices.id},${notices.columnId})">
                                      <h5>${notices.title}</h5>
                                      <span class="sp1">${notices.publishTime ? date}</span><span>${notices.source}</span>
                                  </a></li>
                              </#if>
                          </#list>
                          </ul>
                          <#--视频资源列表结束-->

                          <#--视频资源图片开始-->
                          <ul class="imgList fr">
                              <#list indexCache.notices as notices>
                                  <#if notices.mark = 'video'>
                                      <li><a href="javascript:;"><b></b><img style="width: 400px;height: 311px" src="${path}${notices.image}" alt="img" /></a></li>
                                  </#if>
                              </#list>
                          </ul>
                          <#--视频资源图片结束-->
                      </div>
                  </div>
                  <div class="mr fr">
                      <div class="sel">
                          <ul>
                          <#list indexCache.columns as columns>
                              <#if columns.mark = 'policy'>
                                  <li class="active" lang="${path}/perm/policy"><a href="javascript:;">${columns.columnName}</a></li>
                              </#if>
                              <#if columns.mark = 'financing'>
                                  <li lang="${path}/perm/financing"><a href="javascript:;">${columns.columnName}</a></li>
                              </#if>
                          </#list>
                          </ul>
                          <a href="${path}/perm/policy" class="fr" onclick="setColumnIndex(3)">更多&nbsp;&gt;</a>
                      </div>
                      <div class="clear"></div>
                      <div class="selCont">
                          <#--政策中心列表开始-->
                          <ul class="news fl">
                          <#list indexCache.notices as notices>
                              <#if notices.mark = 'policy'>
                                  <li><a href="${path}/anon/policyDetail?policyId=${notices.id}" onclick="setColumnIndex(3)">
                                      <h5>${notices.title}</h5>
                                  </a></li>
                              </#if>
                          </#list>
                          </ul>
                          <#--政策中心列表结束-->
                      </div>
                      <div class="selCont" style="display:none;">
                          <#--股权融资列表开始-->
                          <ul class="news fl">
                          <#list indexCache.notices as notices>
                              <#if notices.mark = 'financing'>
                                  <li><a href="${path}/anon/financing/detail?id=${notices.id}" onclick="setColumnIndex(7)">
                                      <h5>${notices.title}</h5>
                                  </a></li>
                              </#if>
                          </#list>
                          </ul>
                          <#--股权融资列表结束-->
                      </div>
                  </div>
              </div>
              <div class="clear"></div>
          </div>
      </div>
      <div class="res center">
          <div class="scrl fl">
              <div class="scroll">
                  <a href="javascript:;" class="arrow toLeft"></a>
                  <a href="javascript:;" class="arrow toRight"></a>
                  <#--底部广告位开始-->
                  <ul>
                  <#list indexCache.indices as indices>
                      <#if indices.contentType = 2>
                          <li><a href="${indices.url}"><img style="width: 771px;height: 259px" src="${path}${indices.image}" alt="img" /></a></li>
                      </#if>
                  </#list>
                  </ul>
                  <#--底部广告位结束-->
                  <div class="mark"><i class="active"></i><i></i><i></i></div>
              </div>
          </div>
          <div class="mr fr">
              <div class="sel">
                  <ul>
                  <#list indexCache.columns as columns>
                      <#if columns.mark = 'institut'>
                          <li class="active" lang="${path}/perm/institution"><a href="javascript:;">${columns.columnName}</a></li>
                      </#if>
                      <#if columns.mark = 'expert'>
                          <li  lang="${path}/perm/expert"><a href="javascript:;">${columns.columnName}</a></li>
                      </#if>
                  </#list>
                  </ul>
                  <a href="${path}/perm/institution" class="fr">更多&nbsp;&gt;</a>
              </div>
              <div class="clear"></div>
              <div class="selCont">
                  <#--合作机构列表开始-->
                  <ul class="team fl">
                      <#--最多显示8个，不加更多-->
                      <#list indexCache.organizes as organizes>
                          <#if organizes.organize = 'institut'>
                              <li><a onclick="setColumnIndex(5)" href="${path}/perm/institution?columnId=${organizes.id}">${organizes.columnName}</a></li>
                          </#if>
                      </#list>
                  </ul>
                  <#--合作机构列表结束-->
              </div>
              <div class="selCont" style="display:none;">
                  <#--专家资源列表开始-->
                  <ul class="team fl">
                  <#--最多显示8个，不加更多-->
                      <#list indexCache.organizes as organizes>
                          <#if organizes.organize = 'expert'>
                              <li><a onclick="setColumnIndex(6)" href="${path}/perm/expert?columnId=${organizes.id}&isFrontPage=1">${organizes.columnName}</a></li>
                          </#if>
                      </#list>
                  </ul>
                  <#--专家资源列表结束-->
              </div>
          </div>
      </div>
      <div class="clear"></div>
      <div class="clearfix"></div>
  </div>
  <#include "website/common/footer.ftl" />

  <#list indexCache.indices as indices>
      <#if indices.contentType = 3>
      <div class="fly" id="fly"><a href="javascript:;" class="close">&nbsp;</a><a href="${indices.url}" target="view_window">${indices.title}</a></div>
      </#if>
  </#list>
  </body>
</html>
<script type="text/javascript">
    $(document).ready(function(e) {
        $('.ltop .fl li').click(function(){
            $(this).addClass('active').siblings('li').removeClass('active');
            $('.lbot').hide().eq($(this).index()).show();
        });
        $('.sel li').click(function(){
            $(this).addClass('active').siblings('li').removeClass('active');
            $(this).parents('.sel').siblings('.selCont').hide().eq($(this).index()).show();
            $(this).parents('.sel').children('.fr').attr("href",$(this).attr("lang"))
        });


        //轮播
        $('.banner').autoScroll();

        //点击滚动
        var total=$('.scroll > ul > li').length;
        var width=$('.scroll > ul > li:first').width();
        var node=$('.scroll').find('>ul');
        $('.toRight').bind('click',function(){
            var left=parseInt(node.css('left'));
            if(left>-(total-1)*width)
            {
                if(!node.is(":animated"))
                {
                    node.stop().animate({'left':(left-width)},800);
                }
            }
            if(left==-(total-1)*width)
            {
                var newNode;
                $('.last').remove();
                newNode=node.find('>li:first').clone();
                newNode.addClass('first');
                node.find(' > li:last').after(newNode);
                node.width((total+1)*width);
                if(!node.is(":animated"))
                {
                    node.stop().animate({'left':-total*width},800,function(){
                        $('.first').remove();
                        node.css('left',0);
                        node.width(total*width);
                    });
                }
            }
            var index=Math.ceil((-left/width+1))<total?Math.ceil((-left/width+1)):0;
            $('.class li').eq(index).addClass('active').siblings('li').removeClass('active');
            $('.mark i').eq(index).addClass('active').siblings('i').removeClass('active');
        });
        $('.toLeft').bind('click',function(){
            var left=parseInt(node.css('left'));
            if(left<0)
            {
                if(!node.is(":animated"))
                {
                    node.stop().animate({'left':(left+width)},800);
                }
            }
            if(left==0)
            {
                var newNode;
                $('.last').remove();
                newNode=node.find('>li:last').clone();
                newNode.addClass('last');
                node.find(' > li:first').before(newNode);
                node.width((total+1)*width);
                if(!node.is(":animated"))
                {
                    node.css('left',-width).stop().animate({'left':0},800,function(){
                        $('.last').remove();
                        node.width(total*width);
                        node.css('left',-(total-1)*width);
                    });
                }
            }
            var index=Math.ceil((-left/width-1))>-1?Math.ceil((-left/width-1)):total-1;
            $('.class li').eq(index).addClass('active').siblings('li').removeClass('active');
            $('.mark i').eq(index).addClass('active').siblings('i').removeClass('active');
        });
        $('.mark i').click(function(){
            $(this).addClass('active').siblings('i').removeClass('active');
            if(!node.is(":animated"))
            {
                node.animate({'left':-$(this).index()*width},400);
            }
        });

        //fly
        var xt = 50,yt = 60;
        var xin = true, yin = true;
        var step = 2;
        var delay = 30;
        var obj=document.getElementById("fly");
        function fly() {
            var L=T=0;
            var R= document.body.clientWidth-obj.offsetWidth;
            var B = document.body.clientHeight-obj.offsetHeight;
            obj.style.left = xt + document.body.scrollLeft+'px';
            obj.style.top = yt + document.body.scrollTop+'px';
            xt = xt + step*(xin?1:-1);
            if (xt < L) { xin = true; xt = L}
            if (xt > R){ xin = false; xt = R}
            yt = yt + step*(yin?1:-1);
            if (yt < T) { yin = true; yt = T }
            if (yt > B) { yin = false; yt = B }
        }
        var itl= setInterval(fly, delay);
        obj.onmouseover=function(){clearInterval(itl)};
        obj.onmouseout=function(){itl=setInterval(fly, delay)}

        $('.fly .close').click(function(){
            $(this).parents('.fly').hide();
            clearInterval(itl);
        });
        $.get("${path}/anon//statisticsPV");
    });

    $('.selCont').each(function(index, element) {
        $('.selCont').find('.imgList li').eq(0).show();
        $('.selCont').find('.imgList li').eq(4).show();
        $(this).find('ul:first li').mouseenter(function(){
            $(this).parents('.selCont').find('.imgList li').hide().eq($(this).index()).show();
        });
    });

    function toConsult() {
        $.cookie('userinfoIndex', 4, {path: '/'});
        window.location.href = "${path}/main"
    }

    function toVideoDetailPage(id, columnId) {
        setColumnIndex(10);
        var colName = $('#index_video').find('a').html();
        window.location = '${path}/anon/cloud/detail?id='+id+'&columnid='+columnId+'&colName='+colName
    }
</script>
