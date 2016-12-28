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
    <title>专家资源</title>
</head>

<body>
	 <div class="crop"> 
        <div class="page_btn"> 
            <input type="button" class="btn" id="crop" value="剪切照片" /> 
            <input type="button" class="btn" id="restore" value="照片复位" /> 
        </div> 
        <div id="cropzoom_container"></div> 
        <div class="clear"></div> 
     </div> 
     <script type="text/javascript">  
     $(function() {
          var cropzoom = $('#cropzoom_container').cropzoom({
               width: '600',//DIV层宽度
               height: '${600*scale}',//DIV层高度
               bgColor: '#ccc',//DIV层背景颜色
               enableRotation: false,//是否允许旋转图片true false
               enableZoom: true,//是否允许放大缩小
               selector: {
                    w:200,//选择器宽度
                    h:200,//旋转高度
                    //showPositionsOnDrag:true,
                   // showDimetionsOnDrag:false,
                    aspectRatio:true,
                    centered: true,//居中
                    bgInfoLayer:'#fff',
                    borderColor: 'blue',//选择区域边框样式
                   // animated: false,
                   // maxWidth:200,//最大宽度
                    //maxHeight:200,//最大高度
                    borderColorHover: 'yellow'//鼠标放到选择器的边框颜色
                },
                image: {
                    source: '${path}${filePath}',//图片路径
                    width: '${width}',//图片宽度
                    height: '${height}',//图片高度
                    minZoom: 30,//最小放大比例
                    maxZoom: 150//最大放大比例
                 }
           });
          $("#crop").click(function(){//裁剪提交
              cropzoom.send('${path}/imageScreenshot/saveCrop', 'POST', {'srcFilePath':'${filePath}'}, function(imgRet) {
            	  var json =  jQuery.parseJSON(imgRet);
            	  var filePath = json.filePath;
            	  $("#userlogo").val(filePath);
            	  var fileName = filePath.substring(filePath.lastIndexOf("/")+1);
            	  $("#portrait").attr("src",'${path}'+filePath);
            	  dialog.tipsPop('ok-pop','提示:',"头像上传成功",function(){
	                 imgDialog.close();
	              });
              });             
          });
          $("#restore").click(function(){//显示初始状态照片
               $("#generated").attr("src", "${path}${filePath}");
               cropzoom.restore();                 
          });
     });
     </script>
</body>
</html>