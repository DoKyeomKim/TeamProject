package com.prj.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.prj.recruits.domain.ApplyVo;
import com.prj.recruits.domain.CRecruitVo;
import com.prj.recruits.domain.PResumeVo;
import com.prj.recruits.mapper.ApplyMapper;
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

	@Autowired
	private ApplyMapper applyMapper;
	
	//유저 마이페이지 프로필
	@RequestMapping("/PProfile")
	public ModelAndView pprofile( PUserVo pUserVo ){
		
		HashMap<String, Object> pUserList = usersMapper.getPUserList( pUserVo );
		System.out.println( "===============pUserList: " + pUserList );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", pUserList);
		mv.setViewName("mypage/pprofile");
		return mv;
		
	}
	
	// 마이페이지 회원정보 수정 화면
	@RequestMapping("/PUpdateForm")
	public ModelAndView pUpdateForm( PUserVo pUserVo ) {
		
		HashMap<String, Object> pUserList = usersMapper.getPUserList( pUserVo );
		System.out.println( "===============pUsersList: " + pUserList );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", pUserList);
		mv.setViewName("mypage/pupdate");
		return mv;
		
	}
	
	// 마이페이지 회원정보 수정
	@RequestMapping("/PUpdate")
	public ModelAndView pUpdate( PUserVo pUserVo, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		PUserVo sessionPUser = (PUserVo) session.getAttribute("pLogin");
		
		if(sessionPUser != null) {
			pUserVo.setP_id(sessionPUser.getP_id());
						
		} else {
			
			return new ModelAndView("redirect:/Users/PLoginForm");
		}
		
		usersMapper.updatePUser( pUserVo );
		String p_id = pUserVo.getP_id();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/MyPage/PProfile?p_id=" + p_id);
		return mv;
	}



	//=======================이력서 관리======================================================
		
		// 이력관리 리스트부분
		// 세션 완료
	@RequestMapping("/PManage")
	public ModelAndView pManage(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		PUserVo sessionPUser = (PUserVo) session.getAttribute("pLogin");
		
	    List<PResumeVo> pResumeList = pResumeMapper.getResumeList(sessionPUser.getP_id());
	    session.setAttribute("p_id", sessionPUser.getP_id());


	    
	    ModelAndView mv = new ModelAndView();
	    mv.addObject("pResumeList", pResumeList);
	    mv.setViewName("mypage/pmanage");
	    return mv;
	}
		
		
			
		// 이력서 화면 보기
		@RequestMapping("/PResumeView")
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
		public ModelAndView PResumeWrite(PResumeVo pResumeVo, HttpServletRequest request, @RequestParam("file") MultipartFile file) {
		    
		    HttpSession session = request.getSession();
		    PUserVo sessionPUser = (PUserVo) session.getAttribute("pLogin");
		    
		    pResumeVo.setP_id(sessionPUser.getP_id());

		    
		    // 파일이 업로드되지 않았을 경우 처리
		    if (file.isEmpty()) {
		        ModelAndView mv = new ModelAndView();
		        mv.addObject("error", "파일을 선택하세요.");
		        mv.setViewName("mypage/presumewrite");
		        return mv;
		    }
		    
		    // 파일 이름 생성 (중복 방지)
		    String fileName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
		    String filePath = "D:/dev/springboot/TeamProject/src/main/resources/static/img/";
		    File dest = new File(filePath + fileName);
		    
		    try {
		        // 파일을 지정된 경로로 저장
		        file.transferTo(dest);
		        
		        // 데이터베이스에 저장할 이미지 경로 설정
		        pResumeVo.setImagePath("/img/" + fileName);
		        
		        // 이후 데이터베이스에 저장(경로로 저장)
		        pResumeMapper.writeResume(pResumeVo);
		        
		    } catch (IllegalStateException | IOException e) {
		        e.printStackTrace();
		        ModelAndView mv = new ModelAndView();
		        mv.addObject("error", "파일 업로드 실패.");
		        mv.setViewName("mypage/presumewrite");
		        return mv;
		    }
		    
		    ModelAndView mv = new ModelAndView();
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
		
		// 이력서 수정		
		@RequestMapping("/PResumeUpdate")
		public ModelAndView pResumeUpdate(PResumeVo pResumeVo, @RequestParam("file") MultipartFile file) {
		    
		    int pno = pResumeVo.getPno();

		    // 파일이 업로드되지 않았을 경우 기존 이미지 경로를 유지
		    String imagePath = pResumeVo.getImagePath();

		    if (!file.isEmpty()) {
		        // 새 파일이 업로드되었을 경우
		        String fileName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
		        String filePath = "D:/dev/springboot/TeamProject/src/main/resources/static/img/";
		        File dest = new File(filePath + fileName);
		        
		        try {
		            // 파일을 지정된 경로로 저장
		            file.transferTo(dest);
		            
		            // 새로 업로드된 이미지 경로 설정
		            imagePath = "/img/" + fileName;
		            
		        } catch (IllegalStateException | IOException e) {
		            e.printStackTrace();
		            ModelAndView mv = new ModelAndView();
		            mv.addObject("error", "파일 업로드 실패.");
		            mv.setViewName("mypage/presumeupdate");
		            mv.addObject("psv", pResumeVo);
		            return mv;
		        }
		    }
		    
		    pResumeVo.setImagePath(imagePath);
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
		
		
		//=======마이페이지 지원현황
		
		// 내 지원목록 보기
		@RequestMapping("/PNow")
		public ModelAndView pApplyList(HttpServletRequest request) {
			
			HttpSession session = request.getSession();
		    PUserVo sessionPUser = (PUserVo) session.getAttribute("pLogin");
		    
		    List<ApplyVo> ApplyList = applyMapper.getApplyList(sessionPUser.getP_id());

		    
			ModelAndView mv = new ModelAndView();
			mv.addObject("ApplyList",ApplyList);
			mv.setViewName("mypage/pnow");
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
		
		// 기업회원 회원정보 수정 폼
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
		
		// 기업회원 정보 수정
		@RequestMapping("/CUpdate")
		public ModelAndView cUpdate( CUserVo cUserVo ) {
			
			usersMapper.updateCUser( cUserVo );
			String c_id = cUserVo.getC_id();
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/MyPage/CProfile?c_id=" + c_id);
			return mv;
			
		}
		
		// =============공고관리==========================================
		
		// 공고 관리 페이지
		@RequestMapping("/CManage")
		public ModelAndView cManage(HttpServletRequest request) {
			
			HttpSession session = request.getSession();
			CUserVo sessionCUser = (CUserVo) session.getAttribute("cLogin");
			
			List<CRecruitVo> cRecruitList = cRecruitMapper.getRecruitList(sessionCUser.getC_id());
			session.setAttribute("c_id", sessionCUser.getC_id());
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("cRecruitList", cRecruitList);
			mv.setViewName("mypage/cmanage");
			
			return mv;
		}
		
		
		//  공고 작성 폼
		@RequestMapping("/CRecruitWriteForm")
		public  ModelAndView CRecruitWriteForm() {
			
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("mypage/crecruitwrite");
			
			return mv;
		}
		 
		
		//  공고 작성
		@RequestMapping("/CRecruitWrite")
		public  ModelAndView CRecruitWrite(CRecruitVo  cRecruitVo, HttpServletRequest request, @RequestParam("file") MultipartFile file) {		
			
			HttpSession session = request.getSession();
			CUserVo sessionCUser = (CUserVo) session.getAttribute("cLogin");
			
			cRecruitVo.setC_id(sessionCUser.getC_id());
			
		    // 파일이 업로드되지 않았을 경우 처리
		    if (file.isEmpty()) {
		        ModelAndView mv = new ModelAndView();
		        mv.addObject("error", "파일을 선택하세요.");
		        mv.setViewName("mypage/crecruitwrite");
		        return mv;
		    }
			
		 // 파일 이름 생성 (중복 방지)
		    String fileName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
		    String filePath = "D:/dev/springboot/TeamProject/src/main/resources/static/img/";
		    File dest = new File(filePath + fileName);
		    
		    try {
		        // 파일을 지정된 경로로 저장
		        file.transferTo(dest);
		        
		        // 데이터베이스에 저장할 이미지 경로 설정
		        cRecruitVo.setImagePath("/img/" + fileName);
		        
		        // 이후 데이터베이스에 저장(경로로 저장)
		        cRecruitMapper.writeRecruit(cRecruitVo);
		        
		    } catch (IllegalStateException | IOException e) {
		        e.printStackTrace();
		        ModelAndView mv = new ModelAndView();
		        mv.addObject("error", "파일 업로드 실패.");
		        mv.setViewName("mypage/crecruitwrite");
		        return mv;
		    }
			
			
			
			ModelAndView   mv   =  new  ModelAndView();
			mv.setViewName("redirect:/MyPage/CManage"); 
			return   mv;
			
		}
		
		
		
		
		
		//  공고 상세 보기
		//  /MyPage/CRecruitView?cno=1
		@RequestMapping("/CRecruitView")
		public  ModelAndView CRecruitView(CRecruitVo cRecruitVo) {
			
			int cno         = cRecruitVo.getCno();
			CRecruitVo crv = cRecruitMapper.viewRecruit(cno); 
			
					
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
		public ModelAndView cRecruitUpdate(CRecruitVo cRecruitVo, @RequestParam("file") MultipartFile file) {
			
			int cno = cRecruitVo.getCno();
			String imagePath = cRecruitVo.getImagePath();
			
			if (!file.isEmpty()) {
		        // 새 파일이 업로드되었을 경우
		        String fileName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
		        String filePath = "D:/dev/springboot/TeamProject/src/main/resources/static/img/";
		        File dest = new File(filePath + fileName);
		        
		        try {
		            // 파일을 지정된 경로로 저장
		            file.transferTo(dest);
		            
		            // 새로 업로드된 이미지 경로 설정
		            imagePath = "/img/" + fileName;
		            
		        } catch (IllegalStateException | IOException e) {
		            e.printStackTrace();
		            ModelAndView mv = new ModelAndView();
		            mv.addObject("error", "파일 업로드 실패.");
		            mv.setViewName("mypage/presumeupdate");
		            mv.addObject("crv", cRecruitVo);
		            return mv;
		        }
			
			}
			cRecruitVo.setImagePath(imagePath);
			cRecruitMapper.updateRecruit(cRecruitVo);
			
			ModelAndView mv = new ModelAndView();
			mv.setViewName("redirect:/MyPage/CRecruitView?cno=" + cno);
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