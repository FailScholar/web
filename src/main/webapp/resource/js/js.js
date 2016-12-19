// JavaScript Document
//轮播
(function(jQuery){
 	$.fn.autoScroll = function (o) {
 		o = $.extend({},o || {	//参数设置，速度不要大于间隔
		    speed: 600,			//轮播滚动速度，单位毫秒				
 			interval: 4500		//轮播间隔时间，单位毫秒	 			
 		});
		return this.each(function(){	//回调开始
			var $banner = $(this),
				$box = $banner.children(".banner-con"),
				$btnPreNex = $banner.children(".pre-nex"),
	    		$btnPre = $banner.children(".prev"),
	    		$btnNex = $banner.children(".next"),
	    		$imgUl = $box.children(".img-list"),
	    		$imgLi = $imgUl.children("li"),
	    		$btnUl = $box.children(".btn-list"),
	    		$btnLi = $btnUl.children("li"),
	    		n = $imgLi.length,
	    		width = $imgLi.width(),
	    		left = parseFloat($imgUl.css("left")),
	    		k = 0,
	    		Player;
			$imgUl.css("width",n*width);
			function scroll(){
				if(n>1){
					$imgUl.stop().animate({left:-width}, o.speed, function(){
						k += 1;
						$imgUl.css("left",0);
						$imgUl.children("li:first").appendTo($(this));
						$btnLi.removeClass('cur');
						if(k >= n){
							k = 0;
						}
						$btnUl.children("li").eq(k).addClass('cur');
					});
				}//轮播事件
			}
			$btnLi.click(function(){                                //小圆点点击事件
				if(n>1){
                    var index = $btnLi.index(this);
                    $(this).addClass('cur').siblings("li").removeClass('cur');
                    if(index >= k){
                        var dif = index-k;
                        left = -dif*width;
                        $imgUl.stop().animate({left:left}, o.speed, function(){
                            $imgUl.css("left",0);
                            $imgUl.children("li:lt("+dif+")").appendTo($imgUl);
                        });
                    }
                    else{
                        var j = n-(k-index);
                        $imgUl.css("left",(index-k)*width);
                        $imgUl.children("li:lt("+j+")").appendTo($imgUl);
                        $imgUl.stop().animate({left:0}, o.speed);
                    }
                    k = index;
				}
			});	
			$btnPreNex.click(function(){      //左右按钮点击事件
				if(n>1){
                    if($(this).hasClass('next')){
                        if(!$imgUl.is(":animated")){
                            k += 1;
                            $imgUl.animate({left:-width}, o.speed, function(){
                                $imgUl.css("left",0);
                                $imgUl.children("li:first").appendTo($(this));
                                if(k >= n){
                                    k = 0;
                                }
                                $btnUl.children("li").removeClass('cur').eq(k).addClass('cur');
                            });
                        }
                    }
                    else {
                        if(!$imgUl.is(":animated")){
                            k += -1;
                            $imgUl.css("left",-width);
                            $imgUl.children("li:last").prependTo($imgUl);
                            $imgUl.stop().animate({left:0}, o.speed);
                            if(k < 0){
                                k = n-1;
                            }
                            $btnUl.children("li").removeClass('cur').eq(k).addClass('cur');
                        }
                    }
				}
			});		
			$banner.hover(                     //鼠标移入、移出事件
				function(){
					clearInterval(Player);
					$btnPreNex.addClass('show');
				},
				function(){
					Player = setInterval(function(){scroll()}, o.interval);
					$btnPreNex.removeClass('show');
				}
				);
			Player = setInterval(function(){scroll()}, o.interval);
		});
	};
})(jQuery);

$(document).ready(function(e) {
    
	$(".select").select();
	
	//搜索
	$('.searchIcon').click(function(){
		$(this).hide();
		$('.search').show();
	});
	
	//placeholder
	var JPlaceHolder = {
		
   		_check : function(){
        	return 'placeholder' in document.createElement('input');
		},
		init : function(){
			if(!this._check()){
				this.fix();
			}
		},
		fix : function(){
			jQuery(':input[placeholder]').each(function(index, element) {
				var self = $(this), txt = self.attr('placeholder');
				self.wrap($('<div></div>').css({position:'relative', zoom:'1', border:'none', background:'none', padding:'none', margin:'none',display:'inline-block'}));
				var pos = self.position(), h = self.outerHeight(true),w = self.outerWidth(true), paddingleft = self.css('padding-left'),left=self.css('left');
				var holder = $('<span></span>').text(txt).css({position:'absolute', left:pos.left, top:pos.top,height:h, lineHeight:(h>34?34:h)+'px',left:0+'px', paddingLeft:paddingleft, color:'#aaa'}).appendTo(self.parent());
				self.focusin(function(e) {
					holder.hide();
				}).focusout(function(e) {
					if(!self.val()){
						holder.show();
					}
				});
				holder.click(function(e) {
					holder.hide();
					self.focus();
				});
			});
		}
	};
	
	JPlaceHolder.init();
	
	//个人中心显示
	$('.person').hover(function ()
	{
		$('.person ul').slideDown(100);
	},function(){
		$('.person ul').slideUp(100);
	});
	
	//slider
	var st=$(window).height();
	$(document).scroll(function(){
		var sh=$(document).scrollTop()+st/2-$('.slider').height()/2;
		$('.slider').animate({'top':sh},30);
	});

	//选项卡
	$('.infoTab li').click(function(){
		$(this).addClass('active').siblings('li').removeClass('active');
		$('.infoList').eq($(this).index()).show().siblings('.infoList').hide();
	});
	
	function shade()
	{
		var w=$(document).width()>$(window).width()?$(document).width():$(window).width();
		var h=$(document).height()>$(window).height()?$(document).height():$(window).height();
		$('.shade').width(w).height(h);
	}
	//通知通告弹窗
	$('.scan').click(function(){
		$('.pop').show();
		shade();
	});
	
	$('.close').click(function(){
		$(this).parents('.pop').hide();
	});
	
	$(window).resize(function(){
		$('.shade').width('auto').height('auto');
		var w=$(document).width()>$(window).width()?$(document).width():$(window).width();
		var h=$(document).height()>$(window).height()?$(document).height():$(window).height();
		$('.shade').width(w).height(h);
	});
});