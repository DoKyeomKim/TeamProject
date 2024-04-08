package com.prj.mypage.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.recruits.domain.CRecruitVo;
import com.prj.recruits.domain.PResumeVo;
import com.prj.recruits.mapper.CRecruitMapper;
import com.prj.recruits.mapper.PResumeMapper;
import com.prj.users.domain.CUserVo;
import com.prj.users.domain.PUserVo;
import com.prj.users.mapper.UsersMapper;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/MyPage")
public class MyPageController {
	
	@Autowired
	private UsersMapper usersMapper;
	
	@Autowired
	private PResumeMapper pResumeMapper;
	
	@Autowired
	private CRecruitMapper cRecruitMapper;
	//

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
//	        mv.setViewName("redirect:/loginForm");
//	    }
		
		return mv;
		
	}


	//=======================이력서 관리======================================================
		
		// 이력관리 리스트부분
		@RequestMapping("/PManage")
		public ModelAndView pManage() {
		    List<PResumeVo> pResumeList = pResumeMapper.getResumeList();
		    
		    ModelAndView mv = new ModelAndView();
		    mv.addObject("pResumeList", pResumeList);
		    mv.setViewName("mypage/pmanage");
		    return mv;
		}
		
		
		// 이력서 화면 보기
		@RequestMapping("PResumeView")
		public ModelAndView PResumeView(PResumeVo pResumeVo) {
			
			int pno = pResumeVo.getPno();
			PResumeVo psv = pResumeMapper.viewResume(pno);
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("psv",psv);
			mv.setViewName("mypage/presumeview");
			return mv;
			
			
		}
		
		// 이력서 작성화면
		@RequestMapping("/PResumeWriteForm")
		public ModelAndView PResumeWriteForm() {
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("mypage/presumewrite");
			
			return mv;
			
		}
		// 이력서 작성
		@RequestMapping("/PResumeWrite")
		public ModelAndView PResumeWrite(PResumeVo pResumeVo) {
			
			ModelAndView mv = new ModelAndView();
			pResumeMapper.writeResume(pResumeVo);
			
			mv.setViewName("redirect:/MyPage/PManage");
			
			return mv;
		}
		
		
		// 이력서 수정 화면
		@RequestMapping("/PResumeUpdateForm")
		public ModelAndView pUpdateForm(PResumeVo pResumeVo) {


			int pno = pResumeVo.getPno();
			PResumeVo psv = pResumeMapper.getUpdateResumeByPno(pno);
			
			
			ModelAndView mv= new ModelAndView();
			
			mv.addObject("psv", psv);
			mv.setViewName("mypage/presumeupdate");
			
			return mv;
		}
		
		// 이력서 수정 처리		
		@RequestMapping("PResumeUpdate")
		public ModelAndView pResumeUpdate(PResumeVo pResumeVo) {
		    
			int pno = pResumeVo.getPno();
		    pResumeMapper.updateResume(pResumeVo);

		    ModelAndView mv = new ModelAndView();
		    mv.setViewName("redirect:/MyPage/PResumeView?pno="+pno);
		    return mv;
		}

		    
		    

		//이력서 삭제
		@RequestMapping("/PResumeDelete")
		public ModelAndView pResumeDelete(PResumeVo pResumeVo) {
			
			int pno = pResumeVo.getPno();
			pResumeMapper.deleteResume(pno);
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("pvo",pResumeVo);
			mv.setViewName("redirect:/MyPage/PManage");
			
			return mv;
			
		}
		
		
		
		// 공고 관리 페이지
		@RequestMapping("/CManage")
		public ModelAndView cManage() {
			
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
		
		//--------------------------기업-------------

	      
	      

	      // 기업회원 마이페이지 홈(프로필) 화면
	      @RequestMapping("/CProfile")
	      public ModelAndView cprofile( CUserVo cUserVo ) {
	         
	         HashMap<String, Object> cUserList = usersMapper.getCUserList( cUserVo );
	         System.out.println( "===============cUserList: " + cUserList );
	         
	         ModelAndView mv = new ModelAndView();
	         mv.addObject("vo", cUserList);
	         mv.setViewName("mypage/cprofile");
	         return mv;
	         
	      }
	      
	      // 기업회원 회원정보 수정
	      @RequestMapping("/CUpdateForm")
	      public ModelAndView cUpdateForm( CUserVo cUserVo ) {
	         
	         HashMap<String, Object> cUsersList = usersMapper.getCUserList(cUserVo);
	         // List<CUserVo> cUsersList = usersMapper.getCUserList( cUserVo );
	         // usersMapper.getCUserList( cUserVo );
	         System.out.println( "===============cUsersList: " + cUsersList );
	         
	         ModelAndView mv = new ModelAndView();
	         mv.addObject("cl", cUsersList);
	         mv.setViewName("mypage/cuserupdate");
	         return mv;
	         
	      }
	      
	      @RequestMapping("/CUpdate")
	      public ModelAndView cUpdate( CUserVo cUserVo ) {
	         
	         usersMapper.updateCUser( cUserVo );
	         String c_id = cUserVo.getC_id();
	         
	         ModelAndView mv = new ModelAndView();
	         mv.setViewName("redirect:/MyPage/CProfile?c_id=" + c_id);
	         return mv;
	      }
	      
	}

		
		
