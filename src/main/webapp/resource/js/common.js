/*******************************************************************************
 * Copyright (c) 2016.11.8 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

/**
 * Created by LiuFa on 2016/11/8.
 * 公用方法
 * ROOT
 */
/*cookie*/
(function ($) {
    $.cookie = function (key, value, options) {
        // key and at least value given, set cookie...
        if (arguments.length > 1 && (!/Object/.test(Object.prototype.toString.call(value)) || value === null || value === undefined)) {
            options = $.extend({}, options);
            if (value === null || value === undefined) {
                options.expires = -1;
            }
            if (typeof options.expires === 'number') {
                var days = options.expires, t = options.expires = new Date();
                t.setDate(t.getDate() + days);
            }
            value = String(value);
            return (document.cookie = [
                encodeURIComponent(key), '=', options.raw ? value : encodeURIComponent(value),
                options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
                options.path ? '; path=' + options.path : '',
                options.domain ? '; domain=' + options.domain : '',
                options.secure ? '; secure' : ''
            ].join(''));
        }
        // key and possibly options given, get cookie...
        options = value || {};
        var decode = options.raw ? function (s) {
            return s;
        } : decodeURIComponent;
        var pairs = document.cookie.split('; ');
        for (var i = 0, pair; pair = pairs[i] && pairs[i].split('='); i++) {
            if (decode(pair[0]) === key) return decode(pair[1] || ''); // IE saves cookies with empty string as "c; ", e.g. without "=" as opposed to EOMB, thus pair[1] may be undefined
        }
        return null;
    };
    if (typeof define === 'function' && define.amd) {
        define(['jquery'], function ($) {
            return $.cookie;
        });
    }
})(jQuery);

$(document).ready(function(e) {
    var user_name_dom = $('#user_name');
    if(user_name_dom.length > 0 && user_name_dom.html().length > 20){
        user_name_dom.text(user_name_dom.html().substring(0, 20)+'...')
    }
});

/*定位一级导航栏位置*/
function positionNavigation(index) {
    $('.nav li').eq(index).addClass('active').siblings('li').removeClass('active');
}

/**
 * @author LiuFa
 * @description  全局状态判断
 */
$(document).ajaxError(function (event, request, settings) {
    if (request.status == 401) {
        dialog.tipsPop('ban-pop','提示:','您没有相应的权限',function () {});
        infoTab_li_index.pop();
        infoTabCLICK(infoTab_li_index[infoTab_li_index.length - 1]);
        return false;
    }
    if(request.status == 405){
        dialog.tipsPop('ban-pop','提示:','您尚未登录或会话已过期',function () {
            window.location = path +'/login';
        });
        return false;
    }
});

function infoTabCLICK(index) {
    $('.infoTab').find('li').eq(index).addClass('active').siblings('li').removeClass('active');
    $('.infoList').eq(index).show().siblings('.infoList').hide();
}

/**
 * @author LiuFa
 * @param action, data, n
 * @description  以post的方式打开新窗口
 */
function openBlank(action, data, n) {
    var form = $("<form/>").attr('action', action).attr('method', 'post');
    if (n)
        form.attr('target', '_blank');
    var input = '';
    $.each(data, function (i, n) {
        input += '<input type="hidden" name="' + i + '" value="' + n + '" />';
    });
    form.append(input).appendTo("body").css('display', 'none').submit();
}