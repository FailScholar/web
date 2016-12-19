package com.jltfisp.web.user.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jltfisp.Constants;
import com.jltfisp.FileManager;
import com.jltfisp.util.AjaxUtils;
import com.jltfisp.util.FileUpDownUtils;
import com.jltfisp.util.ImageUtils;
import com.jltfisp.util.UploadFile;


/**
 * 数据访问--内容管理
 *
 * @author fengyu.wang
 */
@Controller
@RequestMapping("/imageScreenshot")
public class ImageScreenshotController {


    @Autowired
    private FileManager fileManager;

    
    @RequestMapping("/testuploadImage")
    public String testuploadImage(HttpServletRequest request, HttpServletResponse response, ModelMap map) throws Exception {
        return "image";
    }
    
    @RequestMapping("/saveCrop")
    @ResponseBody
    public String saveCrop(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	Map<String, Object> map = new HashMap<String, Object>();
        String srcFilePath = request.getParameter("srcFilePath");
        byte[] fileData = fileManager.getFile(srcFilePath);
        String oldPath = Constants.TEMP_DIR + srcFilePath.substring(srcFilePath.lastIndexOf("/") + 1);
        String newPath = Constants.TEMP_DIR + "cut" + srcFilePath.substring(srcFilePath.lastIndexOf("/") + 1);
        FileUtils.writeByteArrayToFile(new File(oldPath), fileData);
        // 图片在页面上的宽高
        int imageH = (int) Double.parseDouble(request.getParameter("imageH"));
        int imageW = (int) Double.parseDouble(request.getParameter("imageW"));
        // 图片距离编辑窗口的距离
        int imageX = (int) Double.parseDouble(request.getParameter("imageX"));
        int imageY = (int) Double.parseDouble(request.getParameter("imageY"));
        // 图片旋转的角度
        int angle = (int) Double.parseDouble(request.getParameter("imageRotate"));
        String imageSource = request.getParameter("imageSource");
        // 图片选择框的座标和高宽
        int selectorH = (int) Double.parseDouble(request.getParameter("selectorH"));
        int selectorW = (int) Double.parseDouble(request.getParameter("selectorW"));
        int selectorX = (int) Double.parseDouble(request.getParameter("selectorX"));
        int selectorY = (int) Double.parseDouble(request.getParameter("selectorY"));
        // 编辑窗口的大小 -- ie10传过来的值带小数点的，直接转换为int类型报错，只能先转为Double类型
        int viewPortH = Double.valueOf(request.getParameter("viewPortH")).intValue();
        int viewPortW = Double.valueOf(request.getParameter("viewPortW")).intValue();
        // Resize
        ImageUtils.scaleImage(oldPath, newPath, imageW, imageH);
        // BufferedImage image = ImageUtils.readImage(oldpath);
        // ImageUtils.rotateImage(image, (int)angle);
        int x = selectorX - imageX;
        if (x < 0) {
            x = 0;
        }
        int y = selectorY - imageY;
        if (y < 0) {
            y = 0;
        }
        ImageUtils.cutImage(x, y, selectorW, selectorH, newPath, newPath);
        fileData = FileUpDownUtils.getFileContent(new File(newPath));
        String filePath = fileManager.saveImageFile(fileData, srcFilePath.substring(srcFilePath.lastIndexOf("/") + 1));
        // 删除原上传文件
        fileManager.deleteFile(srcFilePath);
        // 情况临时文件
        request.setAttribute("filePath", filePath);
        map.put("filePath", filePath);
        AjaxUtils.doAjaxResponseOfMap(response, map);
        return null;
    }

    @RequestMapping("/uploadImage")
    @ResponseBody
    public String uploadImage(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String result = "false";
        Map<String, Object> map = new HashMap<String, Object>();
        UploadFile uploadFile = FileUpDownUtils.getUploadFile(request, "uploadFile");
        String fileName = uploadFile.getFileName();
        if (StringUtils.isNotBlank(fileName) && (fileName.endsWith(".jpg") || fileName.endsWith(".gif") || fileName.endsWith(".png") || fileName.endsWith(".jpeg"))) {
            byte[] fileData = FileUpDownUtils.getFileContent(uploadFile.getFile());
            String filePath = fileManager.saveImageFile(fileData, uploadFile.getFileName());
            BufferedImage image = ImageUtils.readImage(uploadFile.getFile().getAbsolutePath());
            result = "true";
            map.put("filePath", filePath.trim());
            if (image != null) {
                map.put("width", image.getWidth() + "");
                map.put("height", image.getHeight() + "");
            }
        } else {
        	String message= "请选择.jpg,.gif,.png,.jpeg格式的图片上传";
            map.put("message", message);
        }
        map.put("result", result);
        AjaxUtils.doAjaxResponseOfMap(response, map);
        return null;
    }
    
    @RequestMapping("/imageCrop")
    public String imageCrop(HttpServletRequest request, HttpServletResponse response) {
        String filePath = request.getParameter("filePath");
        int width = 300;
        try {
            width = Integer.parseInt(request.getParameter("width"));
        } catch (Exception e) {
        }
        int height = 300;
        try {
            height = Integer.parseInt(request.getParameter("height"));
        } catch (Exception e) {
        }
        request.setAttribute("filePath", filePath.trim());
        request.setAttribute("width", request.getParameter("width"));
        request.setAttribute("height", request.getParameter("height"));
        request.setAttribute("scale", height * 1.0 / width);
        return "/website/usercenter/crop/imageCrop";
    }

    @RequestMapping("/deleteImage")
    public String deleteImage(HttpServletRequest request, HttpServletResponse response, ModelMap map) throws Exception {
        String filePath = request.getParameter("filePath");
        boolean result = fileManager.deleteFile(filePath);
        map.addAttribute("result", result);
        return "jsonView";
    }

    @RequestMapping("/downloadFile")
    public String downloadFile(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String filePath = request.getParameter("filePath");
        String fileName = request.getParameter("fileName");
        if(StringUtils.isBlank(fileName)){
            fileName = filePath.substring(filePath.lastIndexOf("/") + 1);
        }
        response.setContentType("APPLICATION/OCTET-STREAM");
        response.setHeader("Content-Disposition", "attachment;filename=" + fileName);
        byte[] fileData = fileManager.getFile(filePath);
        OutputStream out = response.getOutputStream();
        out.write(fileData);
        out.flush();
        out.close();
        return null;
    }
    
}
