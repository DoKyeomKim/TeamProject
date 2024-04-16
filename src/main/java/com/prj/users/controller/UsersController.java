package com.prj.users.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.users.domain.CUserVo;
import com.prj.users.domain.PUserVo;
import com.prj.users.mapper.UsersMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;



@RequestMapping("/Users")
// 회원정보
@Controller
public class UsersController {
	
	@Autowired
	private UsersMapper usersMapper;
	
	

	//로그인화면
	@RequestMapping("/LoginForm")
	public ModelAndView loginForm() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/loginhome");
		
		return mv;
	}
	
	
	//개인로그인 화면으로 이동
	@RequestMapping("/PLoginForm")
	public ModelAndView pLoginForm() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/plogin");
		
		return mv;
	}
	
	// http://localhost:9090/PLogin
	@RequestMapping("/PLogin")
	public ModelAndView pLogin(HttpServletRequest request) {
		
		String p_id     = request.getParameter("p_id");
		String p_passwd = request.getParameter("p_passwd");
		
		
		PUserVo pUserVo = usersMapper.pLogin(p_id,p_passwd);
		
		String loc = "";
		HttpSession session =request.getSession();

		//아이디 암호가 일치하면
		if(pUserVo !=null) {
			session.setAttribute("pLogin", pUserVo);
			
			// 이건 이제 30분 후에 움직임이 없으면 자동 종료한다는 소리
			//session.setMaxInactiveInterval(30 *60);
			
			loc = "redirect:/";
		}
		else {
		loc = "redirect:/Users/PLoginForm";	
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(loc);
		
		return mv;
								
		
	}
	
	
	//기업로그인 화면으로 이동
	@RequestMapping("/CLoginForm")
	public ModelAndView cLoginForm() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/clogin");
		
		return mv;
	}

	// http://localhost:9090/Users/CLogin
	@RequestMapping("/CLogin")
	public ModelAndView cLogin(HttpServletRequest request) {
		
		String c_id     = request.getParameter("c_id");
		String c_passwd = request.getParameter("c_passwd");
		
		
		CUserVo cUserVo = usersMapper.cLogin(c_id,c_passwd);
		
		String loc = "";
		HttpSession session =request.getSession();

		//아이디 암호가 일치하면
		if(cUserVo !=null) {
			session.setAttribute("cLogin", cUserVo);
			
			// 이건 이제 30분 후에 움직임이 없으면 자동 종료한다는 소리
			//session.setMaxInactiveInterval(30 *60);
			
			loc = "redirect:/";
		}
		
		else {
		loc = "redirect:/Users/CLoginForm";	
		}
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(loc);
		
		return mv;
								
		
	}
	
	
	
	
	// 로그아웃
	@RequestMapping("/Logout")
	public ModelAndView logout(HttpServletRequest request) {
	    HttpSession session = request.getSession();
	    
	    // 세션 무효화
	    session.invalidate();
	    
	    // 홈 페이지로 리다이렉트
	    ModelAndView mv = new ModelAndView("redirect:/");
	    
	    return mv;
	}

	
	
	//개인 회원가입 화면
	@RequestMapping("/PWriteForm")
	public ModelAndView pWriteForm(PUserVo pUserVo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/pwrite");
		
		return mv;
		
	}
	
	//개인 회원가입
	@RequestMapping("/PWrite")
	public ModelAndView pWrite(PUserVo pUserVo) {
		
		usersMapper.insertPUser(pUserVo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/");
		
		return mv;
	}
	
	//기업 회원가입 화면
	@RequestMapping("/CWriteForm")
	public ModelAndView cWriteForm(CUserVo cUserVo) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("users/cwrite");
		
		return mv;
		
	}
	
	//기업 회원가입
	@RequestMapping("/CWrite")
	public ModelAndView cWrite(CUserVo cUserVo) {
		
		usersMapper.insertCUser(cUserVo);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/");
		
		return mv;
	}
	

	

		
	

	
	
}