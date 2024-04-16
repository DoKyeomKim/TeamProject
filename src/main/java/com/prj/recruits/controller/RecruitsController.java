package com.prj.recruits.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.prj.recruits.domain.ApplyVo;
import com.prj.recruits.domain.CRecruitVo;
import com.prj.recruits.domain.PResumeVo;
import com.prj.recruits.mapper.ApplyMapper;
import com.prj.recruits.mapper.CRecruitMapper;
import com.prj.recruits.mapper.PResumeMapper;
import com.prj.users.domain.PUserVo;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;


@Controller
@RequestMapping("/Recruits")
public class RecruitsController {
	
	@Autowired
	private CRecruitMapper cRecruitMapper;
	@Autowired
	private PResumeMapper pResumeMapper;
	
	@Autowired
	private ApplyMapper applyMapper;
	
	//===========채용정보==================
	
	// 공고 목록 조회 
	// /Recruits/List
	@RequestMapping("/List")
	public ModelAndView list( CRecruitVo cResumeVo ) {
	
		List<CRecruitVo> recruitList = cRecruitMapper.getRList( cResumeVo );
		System.out.println( "==================recruitList: " + recruitList );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("recruitList", recruitList);
		mv.setViewName("recruits/list");
		return mv;
				
	}
	
	// 공고 자세히 보기
	// /Recruits/View?cno=${ cno }
	@RequestMapping("/View")
	public ModelAndView view( CRecruitVo cRecruitVo ) {
		
		HashMap<String, Object> map = cRecruitMapper.getRecruit( cRecruitVo );
		System.out.println( "==============map: " + map );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("cVo", map);
		mv.setViewName("recruits/view");
		return mv;
		
	}
	
	// 지원하기 리스트
	@RequestMapping("/GoApply")
	public ModelAndView GoApply(HttpServletRequest request, CRecruitVo cRecruitVo,@RequestParam("selectedCno") int cno) {
		

		HttpSession session = request.getSession();
		PUserVo sessionPUser = (PUserVo) session.getAttribute("pLogin");
	    if(sessionPUser == null) {
	        return new ModelAndView("redirect:/Users/PLoginForm");
	    }
		
		List<PResumeVo> pResumeList = applyMapper.getApplyResumeList(sessionPUser.getP_id());
	    
				
		ModelAndView mv = new ModelAndView();
		mv.addObject("pResumeList", pResumeList);
		mv.addObject("selectedCno",cno);
		mv.setViewName("apply/resumelist");
		
		//System.out.println("================================="+cno);
		
		return mv;
	}
	
	//지원하기
	@RequestMapping("/ApplyAction")
	public ModelAndView applyAction(HttpServletRequest request, 
	                                @RequestParam("selectedResume") int pno,
	                                @RequestParam("cno") int cno) {

	    HttpSession session = request.getSession();
	    PUserVo sessionPUser = (PUserVo) session.getAttribute("pLogin");
	    if(sessionPUser == null) {
	        return new ModelAndView("redirect:/Users/PLoginForm");
	    }

	    ApplyVo applyVo = new ApplyVo();
	    applyVo.setPno(pno);
	    applyVo.setCno(cno);
	    applyVo.setP_id(sessionPUser.getP_id());
	    
	    applyMapper.applyJob(applyVo); 
	    
	    ModelAndView mv = new ModelAndView();
	    mv.setViewName("redirect:/Recruits/View?cno="+cno);
	    
	    return mv;
	}
}
	
	


