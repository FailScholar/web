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
                      <li class="first1"><a href="${path}/index">首页</a><b></b></li>
                      <li><a href="${path}/anon/loan">贷款服务</a><b></b></li>
                      <li><a href="${path}/anon/news">资讯中心</a><b></b></li>
                      <li><a href="${path}/anon/policy">政策中心</a><b></b></li>
                      <li><a href="${path}/anon/capital">专项资金</a><b></b></li>
                      <li><a href="${path}/anon/institution">合作机构</a><b></b></li>
                      <li><a href="${path}/anon/expert">专家资源</a><b></b></li>
                      <li><a href="${path}/perm/financing">股权融资</a><b></b></li>
                      <li><a href="${path}/anon/market">资本市场</a><b></b></li>
                      <li><a href="${path}/perm/insurance">科技保险</a><b></b></li>
                      <li class="last1"><a href="${path}/perm/cloud">云课堂</a><b></b></li>
                  </ul>
              </div>
              <div class="list">
                  <div class="ltop">
                      <ul class="fl">
                          <li class="active"><a href="javascript:;">科技金融服务</a></li>
                          <li><a href="javascript:;">最新动态</a></li>
                      </ul>
                      <ul class="fr">
                          <li><b></b><a href="${path}/anon/detail">通知：2016吉林省金融信息大会邀请函</a><span>2016-06-06</span></li>
                      </ul>
                  </div>
                  <div class="lbot">
                      <ul class="snav">
                          <li class="li1"><a href="${path}/anon/loan/onlineApply?applytype=1"><b></b>科技履约贷款申请</a></li>
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
                              <ul class="img-list clearfix">
                                  <li><a href="#"><img src="${path}/resource/images/img1.jpg" alt="img"/></a></li>
                                  <li><a href="#"><img src="${path}/resource/images/img2.jpg" alt="img"/></a></li>
                                  <li><a href="#"><img src="${path}/resource/images/img3.jpg" alt="img"/></a></li>
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
                              <li class="active" lang="${path}/anon/news"><a href="javascript:;">新闻资讯</a></li>
                              <li lang="${path}/anon/cloud"><a href="javascript:;">视频资讯</a></li>
                          </ul>
                          <a href="${path}/anon/news?type=2" onclick="setColumnIndex(2)">通知公告</a>
                          <a href="${path}/anon/news?type=3" onclick="setColumnIndex(2)">银行快讯</a>
                          <a href="${path}/anon/news?type=4" onclick="setColumnIndex(2)">投融资动态</a>
                          <a href="${path}/anon/news" class="fr">更多&nbsp;&gt;</a>
                      </div>
                      <div class="clear"></div>
                      <div class="selCont">
                          <ul class="fl">
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(2)">
                                  <h5>2016上股交科技创新挂牌项目投融资对接会活动通知</h5>
                                  <span class="sp1">2016-11-16</span><span>上海股权托管交易中心</span>
                              </a></li>
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(2)">
                                  <h5>银监会发布2016年三季度主要监管指标数据</h5>
                                  <span class="sp1">2016-11-15</span><span>中国银监会</span>
                              </a></li>
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(2)">
                                  <h5>期货投资者保障基金管理办法及配套规定发布</h5>
                                  <span class="sp1">2016-11-15</span><span>京华时报</span>
                              </a></li>
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(2)">
                                  <h5>2016天使及早期投资峰会亮相全球创业周</h5>
                                  <span class="sp1">2016-11-15</span><span>市科创中心</span>
                              </a></li>
                          </ul>
                          <ul class="imgList fr">
                              <li class="active"><a href="javascript:;"><img style="width: 400px;height: 311px" src="${path}/resource/images/img.jpg" alt="img" /></a></li>
                              <li><a href="javascript:;"><img style="width: 400px;height: 311px" src="${path}/resource/images/imgb.jpg" alt="img" /></a></li>
                              <li><a href="javascript:;"><img style="width: 400px;height: 311px" src="${path}/resource/images/imgc.jpg" alt="img" /></a></li>
                              <li><a href="javascript:;"><img style="width: 400px;height: 311px" src="${path}/resource/images/imgd.jpg" alt="img" /></a></li>
                          </ul>
                      </div>
                      <div class="selCont" style="display:none;">
                          <ul class="fl">
                              <li><a href="javascript:;">
                                  <h5>发现多彩世界，百度从8亿中文网页中提取各类图片</h5>
                                  <span class="sp1">2016-06-06</span><span>新浪娱乐</span>
                              </a></li>
                              <li><a href="javascript:;">
                                  <h5>发现多彩世界，百度从8亿中文网页中提取各类图片</h5>
                                  <span class="sp1">2016-06-06</span><span>新浪娱乐</span>
                              </a></li>
                              <li><a href="javascript:;">
                                  <h5>发现多彩世界，百度从8亿中文网页中提取各类图片</h5>
                                  <span class="sp1">2016-06-06</span><span>新浪娱乐</span>
                              </a></li>
                              <li><a href="javascript:;">
                                  <h5>发现多彩世界，百度从8亿中文网页中提取各类图片</h5>
                                  <span class="sp1">2016-06-06</span><span>新浪娱乐</span>
                              </a></li>
                          </ul>
                          <ul class="imgList fr">
                              <li class="active"><a href="javascript:;"><b></b><img style="width: 400px;height: 311px" src="${path}/resource/images/imgc.jpg" alt="img" /></a></li>
                              <li><a href="javascript:;"><b></b><img style="width: 400px;height: 311px" src="${path}/resource/images/imgb.jpg" alt="img" /></a></li>
                              <li><a href="javascript:;"><b></b><img style="width: 400px;height: 311px" src="${path}/resource/images/imgc.jpg" alt="img" /></a></li>
                              <li><a href="javascript:;"><b></b><img style="width: 400px;height: 311px" src="${path}/resource/images/imgd.jpg" alt="img" /></a></li>
                          </ul>
                      </div>
                  </div>
                  <div class="mr fr">
                      <div class="sel">
                          <ul>
                              <li class="active" lang="${path}/anon/policy"><a href="javascript:;">政策中心</a></li>
                              <li lang="${path}/anon/financing"><a href="javascript:;">融资项目</a></li>
                          </ul>
                          <a href="${path}/anon/policy" class="fr" onclick="setColumnIndex(3)">更多&nbsp;&gt;</a>
                      </div>
                      <div class="clear"></div>
                      <div class="selCont">
                          <ul class="news fl">
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(3)">
                                  <h5>关于完善股权激励和技术入股有关所得税政策的通知</h5>
                              </a></li>
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(3)">
                                  <h5>国务院关于促进创业投资持续健康发展的若干意见</h5>
                              </a></li>
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(3)">
                                  <h5>国务院办公厅关于印发互联网金融风险专项整治工作实施方案的通知</h5>
                              </a></li>
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(3)">
                                  <h5>国务院印发《"十三五"国家科技创新规划》</h5>
                              </a></li>
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(3)">
                                  <h5>促进中小企业国际化发展五年行动计划（2016－2020年）</h5>
                              </a></li>
                          </ul>
                      </div>
                      <div class="selCont" style="display:none;">
                          <ul class="news fl">
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(7)">
                                  <h5>蜂马（上海）网络科技有限公司项目股权融资1000万元</h5>
                              </a></li>
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(7)">
                                  <h5>上海际动网络科技股份有限公司项目股权融资1500万元</h5>
                              </a></li>
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(7)">
                                  <h5>上海大周信息科技有限公司项目股权融资1000万元</h5>
                              </a></li>
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(7)">
                                  <h5>上海品兴科技有限公司项目股权融资1200万元</h5>
                              </a></li>
                              <li><a href="${path}/anon/detail" onclick="setColumnIndex(7)">
                                  <h5>上海鼎晶生物医药科技股份有限公司股权融资5000万元</h5>
                              </a></li>
                          </ul>
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
                  <ul>
                      <li><a href="javascript:;"><img style="width: 771px;height: 259px" src="${path}/resource/images/img1.jpg" alt="img" /></a></li>
                      <li><a href="javascript:;"><img style="width: 771px;height: 259px" src="${path}/resource/images/img2.jpg" alt="img" /></a></li>
                      <li><a href="javascript:;"><img style="width: 771px;height: 259px" src="${path}/resource/images/img3.jpg" alt="img" /></a></li>
                  </ul>
                  <div class="mark"><i class="active"></i><i></i><i></i></div>
              </div>
          </div>
          <div class="mr fr">
              <div class="sel">
                  <ul>
                      <li class="active" lang="${path}/anon/institution"><a href="javascript:;">合作机构</a></li>
                      <li  lang="${path}/anon/expert"><a href="javascript:;">专家资源</a></li>
                  </ul>
                  <a href="${path}/anon/institution" class="fr">更多&nbsp;&gt;</a>
              </div>
              <div class="clear"></div>
              <div class="selCont">
                  <ul class="team fl">
                      <#--最多显示8个，不加更多-->
                      <li><a href="${path}/anon/institution?type=1">合作银行</a></li>
                      <li><a href="${path}/anon/institution?type=2">担保公司</a></li>
                      <li><a href="${path}/anon/institution?type=3">租赁公司</a></li>
                      <li><a href="${path}/anon/institution?type=4">保险公司</a></li>
                      <li><a href="${path}/anon/institution?type=5">中介公司</a></li>
                  </ul>
              </div>
              <div class="selCont" style="display:none;">
                  <ul class="team fl">
                  <#--最多显示8个，不加更多-->
                      <li><a href="${path}/anon/expert?type=1">科技金融专家</a></li>
                      <li><a href="${path}/anon/expert?type=2">科技金融专员</a></li>
                      <li><a href="${path}/anon/expert?type=3">科技信贷专员</a></li>
                  </ul>
              </div>
          </div>
      </div>
      <div class="clear"></div>
      <div class="clearfix"></div>
  </div>
  <#include "website/common/footer.ftl" />

  <div class="fly" id="fly"><a href="javascript:;" class="close">&nbsp;</a><a href="http://www.diaochapai.com/survey/1b4aa295-3f9b-4d33-9d78-47698a267042" target="view_window">《科技企业融资服务调查问卷》</a></div>
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
        $(this).find('ul:first li').mouseenter(function(){
            $(this).parents('.selCont').find('.imgList li').hide().eq($(this).index()).show();
        });
    });

    function toConsult() {
        $.cookie('userinfoIndex', 4, {path: '/'});
        window.location.href = "${path}/main"
    }
</script>
