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

$(document).ready(function (e) {
    /*设置导航栏的选中的状态*/
    var navigation = $('.nav li');
    var navigationIndex = $.cookie('navigation');
    navigation.eq(navigationIndex ? Number(navigationIndex) : 0).addClass('active').siblings('li').removeClass('active');

    navigation.click(function () {
        $.cookie('navigation', $(this).index(), {path: '/'});
    });

});

/*定位一级导航栏*/
function setColumnIndex(index) {
    $.cookie('navigation', Number(index), {path: '/'});
}

