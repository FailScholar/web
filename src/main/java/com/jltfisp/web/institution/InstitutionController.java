package com.jltfisp.web.institution;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("institution")
public class InstitutionController {

	
	@RequestMapping("/institutionApply")
    public String institutionApply(HttpServletRequest request) {
    /*	String applytype = request.getParameter("applytype");
    	try {
			request.setAttribute("applytype", new String(applytype.getBytes("ISO8859-1"),"UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
        return "/website/institution/institutionApply";
    }
}
