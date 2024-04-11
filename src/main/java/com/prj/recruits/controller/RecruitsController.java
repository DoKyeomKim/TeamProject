package com.prj.recruits.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.recruits.domain.CRecruitVo;
import com.prj.recruits.mapper.CRecruitMapper;


@Controller
@RequestMapping("/Recruits")
public class RecruitsController {
	
	@Autowired
	private CRecruitMapper cRecruitMapper;

	// 공고 목록 조회 /Recruits/List
	@RequestMapping("/List")
	public ModelAndView list( CRecruitVo cResumeVo ) {
	
		List<CRecruitVo> recruitList = cRecruitMapper.getRList( cResumeVo );
		System.out.println( "==================recruitList: " + recruitList );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("recruitList", recruitList);
		mv.setViewName("recruits/list");
		return mv;
				
	}
	
	// 공고 자세히 보기 /Recruits/View?cno=${ cno }
	@RequestMapping("/View")
	public ModelAndView view( CRecruitVo cRecruitVo ) {
		
		HashMap<String, Object> map = cRecruitMapper.getRecruit( cRecruitVo );
		System.out.println( "==============map: " + map );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("cVo", map);
		mv.setViewName("recruits/view");
		return mv;
		
	}
	
	//------------------------------------------------------------------------------------
	
	// 공고 관리 페이지
    @RequestMapping("/CManage")
    public ModelAndView cManager() {
       
       List<CRecruitVo> cRecruitList = cRecruitMapper.getRecruitList(); 
       
       ModelAndView mv = new ModelAndView();
       mv.addObject("cRecruitList", cRecruitList);
       mv.setViewName("mypage/cmanage");
       
       return mv;
    }
    
    //  공고 작성 폼
    @RequestMapping("/WriteForm")
    public  ModelAndView CRecruitWriteForm() {
       
       ModelAndView  mv = new ModelAndView();      
       mv.setViewName("mypage/crecruitwrite");
       return  mv;
    }
    
    //  공고 작성
    @RequestMapping("/CRecruitWrite")
    public  ModelAndView  write(CRecruitVo  cRecruitVo) {      
       
       ModelAndView   mv   =  new  ModelAndView();
       cRecruitMapper.writeRecruit(cRecruitVo);
       
       mv.setViewName("redirect:/Mypage/CManage"); 
       return   mv;
    }
    
    //  공고 상세 보기
    //  /MyPage/CRecruitView?cno=1
    @RequestMapping("/CRecruitView")
    public  ModelAndView CRecruitView(CRecruitVo cRecruitVo) {
       
       int cno         = cRecruitVo.getCno();
       CRecruitVo crv = cRecruitMapper.viewRecruit(cno); 
       
       //CResumeVo cresumeVo = usersMapper.getCResumeByCno();
             
       ModelAndView mv = new ModelAndView();
       mv.addObject("crv", crv);
       mv.setViewName("mypage/crecruitview");
       return  mv;      
    }
    
    //  공고 수정 폼
    @RequestMapping("/CRecruitUpdateForm")
       public ModelAndView  cRecruitUpdateForm(CRecruitVo cRecruitVo) {
       
       int cno = cRecruitVo.getCno();
       CRecruitVo crv = cRecruitMapper.getUpdateRecruitByCno(cno);
       
       ModelAndView mv = new ModelAndView();
       
       mv.addObject("crv", crv);
       mv.setViewName("mypage/crecruitupdate");
       return mv;
    }
    
    //  공고 수정
    @RequestMapping("/CRecruitUpdate")
    public ModelAndView cRecruitUpdate(CRecruitVo cRecruitVo) {
       
       int cno = cRecruitVo.getCno();
       cRecruitMapper.updateRecruit(cRecruitVo);
       
       ModelAndView mv = new ModelAndView();
       mv.setViewName("redirect:/Mypage/CRecruitView?cno=" + cno);
       return mv;
       
    }
    
    // 공고 삭제
    @RequestMapping("/CRecruitDelete")
    public ModelAndView cRecruitDelete(CRecruitVo cRecruitVo) {
       
       int cno = cRecruitVo.getCno();
       cRecruitMapper.deleteRecruit(cno);
       
       ModelAndView mv = new ModelAndView();
       mv.addObject("crv", cRecruitVo );
       mv.setViewName("redirect:/MyPage/CManage");
       
       return mv;
       
    }
		
}
	
	


