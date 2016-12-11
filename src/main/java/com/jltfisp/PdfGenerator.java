package com.jltfisp;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Map;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.xhtmlrenderer.pdf.ITextFontResolver;
import org.xhtmlrenderer.pdf.ITextRenderer;

import com.itextpdf.text.DocumentException;
import com.itextpdf.text.pdf.BaseFont;

import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;

public class PdfGenerator {

	/**
	 * 
	 * @param basePath 项目根路径
	 * @param variables 数据对象
	 * @param fileName pdf文件名称
	 * @param response
	 * @param templateftl 模板名称
	 */
	public static void printPDF(String basePath, Map<String, Object> variables,
			String fileName, HttpServletResponse response, String templateftl) {
		// 创建配置
		Configuration cfg = new Configuration();
		// 指定模板存放的路径
		try {
			cfg.setDirectoryForTemplateLoading(new File(basePath
					+ "/WEB-INF/ftl"));
			cfg.setDefaultEncoding("UTF-8");

			// 从上面指定的模板目录中加载对应的模板文件
			Template temp = cfg.getTemplate(templateftl);
			// 将生成的内容写入contractTemplate .html中
			String file1 = basePath + "html/contractTemplate.html";
			File file = new File(file1);
			if (!file.exists())
				file.createNewFile();
			Writer out = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(file), "utf-8"));
			temp.process(variables, out);
			out.flush();

			String url = new File(file1).toURI().toURL().toString();
			// PDF 文件的 MIME 类型
			response.setContentType("application/binary;charset=ISO8859_1");
			response.setContentType("application/pdf");
			// 也可以通过下面的方式来设置
			response.setHeader("Content-type", "application/pdf");
			response.setHeader("Content-disposition", "attachment; filename="
					+ new String((fileName + ".pdf").getBytes(), "ISO8859_1"));
			ServletOutputStream os = response.getOutputStream();
			ITextRenderer renderer = new ITextRenderer();
			renderer.setDocument(url);

			// 解决中文问题
			ITextFontResolver fontResolver = renderer.getFontResolver();
			fontResolver.addFont(basePath + "/resource/fonts/simsun.ttc",
					BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
			renderer.layout();
			renderer.createPDF(os);
			os.close();
		} catch (IOException e1) {
			e1.printStackTrace();
		} catch (DocumentException e) {
			e.printStackTrace();
		} catch (TemplateException e) {
			e.printStackTrace();
		}
	}
}
