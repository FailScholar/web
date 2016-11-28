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
    <title>云课堂</title>
  </head>

  <body>
  <#include "website/common/header.ftl"/>
              <!--content开始-->
              <div class="content">
                  <div class="info">
                      <ul class="infoTab">
                          <li class="active"><a href="javascript:;">信贷知识</a></li>
                          <li><a href="javascript:;">上市辅导</a></li>
                          <li><a href="javascript:;">投资案列</a></li>
                          <li><a href="javascript:;">融资讲座</a></li>
                          <li><a href="javascript:;">保险知识</a></li>
                      </ul>
                      <div class="clear"></div>
                      <div class="infoList">
                          <ul class="ul3">
                              <li><a href="${path}/anon/cloud/videoDetail"><b></b><img src="${path}/resource/images/demo.png" alt="video" /><p>中国银监会科技部中国人民</p></a><p class="p2"><span class="time fl">2016-11-03</span><span class="eye fr">100</span></p></li>
                              <li><a href="${path}/anon/cloud/videoDetail"><b></b><img src="${path}/resource/images/demo.png" alt="video" /><p>中国银监会科技部中国人民</p></a><p class="p2"><span class="time fl">2016-11-03</span><span class="eye fr">100</span></p></li>
                              <li><a href="${path}/anon/cloud/videoDetail"><b></b><img src="${path}/resource/images/demo.png" alt="video" /><p>中国银监会科技部中国人民</p></a><p class="p2"><span class="time fl">2016-11-03</span><span class="eye fr">100</span></p></li>
                              <li><a href="${path}/anon/cloud/videoDetail"><b></b><img src="${path}/resource/images/demo.png" alt="video" /><p>中国银监会科技部中国人民</p></a><p class="p2"><span class="time fl">2016-11-03</span><span class="eye fr">100</span></p></li>
                              <li><a href="${path}/anon/cloud/videoDetail"><b></b><img src="${path}/resource/images/demo.png" alt="video" /><p>中国银监会科技部中国人民</p></a><p class="p2"><span class="time fl">2016-11-03</span><span class="eye fr">100</span></p></li>
                              <li><a href="${path}/anon/cloud/videoDetail"><b></b><img src="${path}/resource/images/demo.png" alt="video" /><p>中国银监会科技部中国人民</p></a><p class="p2"><span class="time fl">2016-11-03</span><span class="eye fr">100</span></p></li>
                          </ul>
                      </div>
                      <div class="infoList" style="display:none;">
                          <ul class="ul3">
                              <li><a href="${path}/anon/cloud/videoDetail"><b></b><img src="${path}/resource/images/demo.png" alt="video" /></a><p>中国银监会科技部中国人民</p><p class="p2"><span class="time fl">2016-11-03</span><span class="eye fr">100</span></p></li>
                          </ul>
                      </div>
                      <div class="infoList" style="display:none;">
                          <ul class="ul3">
                              <li><a href="${path}/anon/cloud/videoDetail"><b></b><img src="${path}/resource/images/demo.png" alt="video" /></a><p>中国银监会科技部中国人民</p><p class="p2"><span class="time fl">2016-11-03</span><span class="eye fr">100</span></p></li>
                              <li><a href="${path}/anon/cloud/videoDetail"><b></b><img src="${path}/resource/images/demo.png" alt="video" /></a><p>中国银监会科技部中国人民</p><p class="p2"><span class="time fl">2016-11-03</span><span class="eye fr">100</span></p></li>
                          </ul>
                      </div>
                      <div class="infoList" style="display:none;">
                          <ul class="ul3">
                              <li><a href="${path}/anon/cloud/videoDetail"><b></b><img src="${path}/resource/images/demo.png" alt="video" /></a><p>中国银监会科技部中国人民</p><p class="p2"><span class="time fl">2016-11-03</span><span class="eye fr">100</span></p></li>
                              <li><a href="${path}/anon/cloud/videoDetail"><b></b><img src="${path}/resource/images/demo.png" alt="video" /></a><p>中国银监会科技部中国人民</p><p class="p2"><span class="time fl">2016-11-03</span><span class="eye fr">100</span></p></li>
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

<script type="text/javascript">
    $(document).ready(function(e) {
        $('.infoTab li').click(function(){
            $(this).addClass('active').siblings('li').removeClass('active');
            $('.infoList').eq($(this).index()).show().siblings('.infoList').hide();
        });
    });
</script>