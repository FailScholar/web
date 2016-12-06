<#assign path=request.contextPath />
<div class="wrap">
    <div class="bg">
        <div class="center">
            <div class="top">
                <img src="${path}/resource/images/logo.png" alt="logo" />
                <div class="topR fr">
                    <div class="searchIcon fl">&nbsp;</div>
                    <div class="search fl">
                        <form method="post" action="${path}/anon/search">
                            <input type="text" class="searchText" />
                            <input type="submit" class="searchBtn" value="" />
                        </form>
                    </div>
                        <@shiro.user>
                            <div class="person fr">
                                <a href="${path}/main" onclick="setColumnIndex(0)"><@shiro.principal/></a>
                                <ul>
                                    <li class="first"><a href="${path}/user/toResetPage" onclick="setColumnIndex(0)">修改密码</a></li>
                                    <li><a href="${path}/logout" onclick="setColumnIndex(0)">安全退出</a></li>
                                </ul>
                            </div>
                        </@shiro.user>
                        <@shiro.guest>
                            <a href="${path}/login" onclick="setColumnIndex(0)" class="login">登录</a><a href="${path}/anon/regist/toRegistPage" onclick="setColumnIndex(0)" class="register">注册</a>
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
                    <li><a href="${path}/anon/financing">股权融资</a><b></b></li>
                    <li><a href="${path}/anon/market">资本市场</a><b></b></li>
                    <li><a href="${path}/perm/insurance">科技保险</a><b></b></li>
                    <li class="last1"><a href="${path}/perm/cloud">云课堂</a><b></b></li>
                </ul>
            </div>
            <div class="clear"></div>

            <!--content开始-->


            <#--<div class="content">
            </div>
            <!--content结束&ndash;&gt;

        </div>
    </div>

    <div class="clear"></div>
    <div class="clearfix"></div>
</div>-->