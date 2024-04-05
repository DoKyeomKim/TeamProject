package com.prj.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.users.domain.PUserVo;
import com.prj.users.mapper.UsersMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	
	@Autowired
	private UsersMapper usersMapper;
	
	// http://localhost:9090
	@RequestMapping("/")
	public  String   home() {
		return "home";
	}
	
	@RequestMapping("/loginForm")
	public ModelAndView loginForm() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/login");
		
		return mv;
	}

	// http://localhost:9090/login
	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest request) {
		
		String p_id     = request.getParameter("p_id");
		String p_passwd = request.getParameter("p_passwd");
		
		PUserVo pUserVo = usersMapper.login(p_id,p_passwd);
		
		String loc = "";
		HttpSession session =request.getSession();

		//아이디 암호가 일치하면
		if(pUserVo !=null) {
			session.setAttribute("login", pUserVo);
			
			// 이건 이제 30분 후에 움직임이 없으면 자동 종료한다는 소리
			//session.setMaxInactiveInterval(30 *60);
			
			loc = "redirect:/";
		}
		else {
		loc = "redirect:/loginForm";	
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(loc);
		
		return mv;
								
		
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    
	    //세션 없애버린다는 소리
	    session.invalidate();
	    return new ModelAndView("redirect:/");
	}

	

		
	
	
	
}
