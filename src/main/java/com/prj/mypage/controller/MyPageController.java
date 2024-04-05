package com.prj.mypage.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.users.domain.PUserVo;
import com.prj.users.mapper.UsersMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/MyPage")
public class MyPageController {
	
	@Autowired
	private UsersMapper usersMapper;

	@RequestMapping("/PProfile")
	public ModelAndView mypage(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		PUserVo loginUser = (PUserVo) session.getAttribute("login");
		
		ModelAndView mv =new ModelAndView();
		mv.setViewName("mypage/pprofile");
		
//	    if (loginUser != null) {
	        // 로그인한 사용자만 접근 가능한 기능 처리
//	    } else {
	        //로그인하지 않은 사용자의 경우 로그인 페이지로 리다이렉트
	        mv.setViewName("redirect:/loginForm");
//	    }
		
		return mv;
		
	}

	@RequestMapping("/PManage")
	public ModelAndView pManager(PUserVo pUserVo) {
		
		List<PUserVo>  recruitList= usersMapper.getRecruitList(); 
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("recruitList", recruitList);
		mv.setViewName("mypage/pmanage");
		
		return mv;
	}
}
