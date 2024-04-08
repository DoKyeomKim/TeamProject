package com.prj.mypage.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.mypage.controller.MyPageController;
import com.prj.recruits.domain.CResumeVo;
import com.prj.users.domain.CUserVo;
import com.prj.users.domain.PUserVo;
import com.prj.users.mapper.UsersMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
@RequestMapping("/MyPage")
public class MyPageController {
	
	@Autowired
	private UsersMapper usersMapper;

	@RequestMapping("/PProfile")
	public ModelAndView mypage(HttpServletRequest request) {
		
		
		// =======================잠시 주석 ================================
		//HttpSession session = request.getSession();
		//PUserVo loginUser = (PUserVo) session.getAttribute("login");
		
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
	
	
	// 신 ==================================================
	
	// 공고 관리 페이지
	@RequestMapping("/CManage")
	public ModelAndView cManager(CUserVo cUserVo) {
		
		List<CUserVo>  recruitList= usersMapper.getcmanage(); 
		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("cmanage", recruitList);
		mv.setViewName("mypage/cmanage");
		
		return mv;
	}
	
	//  공고 작성 폼
	@RequestMapping("/WriteForm")
	public  ModelAndView   writeForm() {
		
		ModelAndView    mv    = new ModelAndView();		
		mv.setViewName("mypage/crecruitwrite");
		return  mv;
	}
	
	//  공고 작성
	@RequestMapping("/Write")
	public  ModelAndView  write( CResumeVo  cresumeVo ) {		
		
		usersMapper.insertCResume(cresumeVo);
		
		ModelAndView   mv   =  new  ModelAndView();
		mv.setViewName("redirect:/Mypage/CResumeWriteForm"); // 
		return   mv;
	}
	
	//  공고 상세 보기
	//  /MyPage/CView?cno=1
	@RequestMapping("/CView")
	public  ModelAndView cView(CResumeVo cresumeVo) {
		
		//CResumeVo cresumeVo = usersMapper.getCResumeByCno();
				
		ModelAndView mv = new ModelAndView();
		mv.addObject("cresumeVo", cresumeVo);
		mv.setViewName("mypage/cview");
		return  mv;		
	}
	
	//  공고 수정 폼
	@RequestMapping("/CRecruitUpdateForm/{c_id}")
	// public ModelAndView  cRecruitUpdateForm(CResumeVo cresumeVo) {
		public ModelAndView  cRecruitUpdateForm(@PathVariable("c_id") String cId) {
		ModelAndView mv = new ModelAndView();
		
		CResumeVo cresumeVo = usersMapper.UpdateCResume();
		mv.addObject("cresumeVo", cresumeVo);
		mv.setViewName("mypage/crecruitupdate");
		return mv;
	}
	
	//  공고 수정
	@RequestMapping("/CRecruitUpdate")
	public ModelAndView cRecruitUpdate(CResumeVo cResumeVo) {
		
		usersMapper.updateCUser(cResumeVo);
		
		//int cno = cResumeVo.getCno();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Mypage/CResumeWrite");
		return mv;
		
	}
	
}
