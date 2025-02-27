package com.sist.model;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class MemberModel {
	@RequestMapping("js/postfind.do")
	public String post_ifnde(HttpServletRequest request,HttpServletResponse response)
	{
		return".request./js/postfind.jsp";
	}
	@RequestMapping "../js/join.jsp";
	public String joind()
}
 