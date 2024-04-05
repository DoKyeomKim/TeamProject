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

	
	@RequestMapping("/myPage")
	public ModelAndView mypage(HttpServletRequest request) {
		
			HttpSession session = request.getSession();
			PUserVo loginUser = (PUserVo) session.getAttribute("login");
			
			ModelAndView mv =new ModelAndView();
		    if (loginUser != null) {
		        // 로그인한 사용자만 접근 가능한 기능 처리
		        mv.setViewName("mypage/pprofile");
		    } else {
		        // 로그인하지 않은 사용자의 경우 로그인 페이지로 리다이렉트
		        mv.setViewName("redirect:/loginForm");
		    }
			
			return mv;
			
		}

		
	
	
	
}
