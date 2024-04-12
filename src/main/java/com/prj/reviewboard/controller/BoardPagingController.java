package com.prj.reviewboard.controller;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.prj.domain.ComuVo;
import com.prj.reviewboard.domain.FreeBoardVo;
import com.prj.reviewboard.domain.FreePagingVo;
import com.prj.reviewboard.domain.Pagination;
import com.prj.reviewboard.domain.PagingResponse;
import com.prj.reviewboard.domain.ReviewBoardVo;
import com.prj.reviewboard.domain.ReviewPagingVo;
import com.prj.reviewboard.domain.SearchVo;
import com.prj.reviewboard.domain.ServiceVo;
import com.prj.reviewboard.mapper.BoardPagingMapper;
import com.prj.reviewboard.mapper.ReviewBoardMapper;

@Controller
@RequestMapping("/BoardPaging")
public class BoardPagingController {

	@Autowired
	private ReviewBoardMapper reviewBoardMapper;
	
	@Autowired
	private BoardPagingMapper boardPagingMapper;
	
	// 기업리뷰 목록
	// /Review/List
	@RequestMapping("/ReviewList")
	public ModelAndView reviewList(@RequestParam(value="nowpage") int nowpage, ReviewPagingVo reviewPagingVo ) {
		System.out.println("======================reviewPagingVo: " + reviewPagingVo );
		
		// 메인 상단 메뉴 불러오기
		ComuVo comuVo = new ComuVo();
		// comuVo.setComu_id(reviewPagingVo.getComu_id());
		List<ComuVo> comuList = reviewBoardMapper.getComuList( comuVo );
		System.out.println("======================comuList: " + comuList );
			
		// 기업리뷰 목록 불러오기
		int rcount = boardPagingMapper.rcount( reviewPagingVo );
		System.out.println("======================rcount: " + rcount );
		
		PagingResponse<ReviewPagingVo> rresponse = null;
		
		if( rcount < 1 ) {
			rresponse = new PagingResponse<>( Collections.emptyList(), null );  
		}
		
		SearchVo searchVo = new SearchVo();
		searchVo.setPage(nowpage);
		searchVo.setPageSize(10);
				
		Pagination rpagination = new Pagination( rcount, searchVo );
		searchVo.setPagination(rpagination);
		System.out.println( "==============================searchVo: " + searchVo );
		
		int rno = reviewPagingVo.getRno();
		String name = reviewPagingVo.getName();
		int star = reviewPagingVo.getStar();
		int offset = searchVo.getOffset();
		int pageSize = searchVo.getPageSize();
		
		List<ReviewPagingVo> rList = boardPagingMapper.getReviewPagingList(rno, name, star, offset, pageSize);
		
		rresponse = new PagingResponse<>( rList, rpagination );
			
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("comuList", comuList);
		mv.addObject("nowpage", nowpage);
		mv.addObject("rresponse", rresponse);
		mv.addObject("searchVo", searchVo);
		mv.setViewName("review/rlist");
		return mv;
		
	}
	
	//---------------------------------------------------------------------------------------------------
	
	// 기업리뷰 글 작성
	// /Review/WriteForm
	@RequestMapping("/WriteForm")
	public ModelAndView writeForm( ComuVo comuVo ) {
		
		// 넘어온 comu_id (= ?comu_id=COMU01) 처리
		String comuid = comuVo.getComu_id();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject( "comuid", comuid );
		mv.setViewName("review/rwrite");
		return mv;
		
	}
	
	// /Review/Write?comu_id=${ comu_id }
	@RequestMapping("/Write")
	public ModelAndView write( ReviewBoardVo reviewBoardVo ) {
		
		reviewBoardMapper.insertReview( reviewBoardVo );
		
		String comu_id = reviewBoardVo.getComu_id();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Review/List?comu_id=" + comu_id );
		return mv;
		
	}
	
	//---------------------------------------------------------------------------------------------------
		
	// 자유게시판 목록
	// /Review/ListFree
	@RequestMapping("/FreeList")
	public ModelAndView freeList( @RequestParam(value="nowpage") int nowpage, FreePagingVo freePagingVo ) {
		
		// 메인 상단 메뉴 불러오기
		ComuVo comuVo = new ComuVo();
		List<ComuVo> comuList = reviewBoardMapper.getComuList( comuVo );
		
		// 자유게시판 목록 불러오기
		int fcount = boardPagingMapper.fcount( freePagingVo );
		
		PagingResponse<FreePagingVo> fresponse = null;
		
		if( fcount < 1 ) {
			fresponse = new PagingResponse<>( Collections.emptyList(), null );  
		}
		
		SearchVo searchVo = new SearchVo();
		searchVo.setPage(nowpage);
		searchVo.setPageSize(10);
		
		Pagination fpagination = new Pagination( fcount, searchVo );
		searchVo.setPagination(fpagination);
		
		int fno = freePagingVo.getFno();
		String title = freePagingVo.getTitle();
		String name = freePagingVo.getName();
		int offset = searchVo.getOffset();
		int pageSize = searchVo.getPageSize();
		
		List<FreePagingVo> fList = boardPagingMapper.getFreePagingList(fno, title, name, offset, pageSize);
		
		fresponse = new PagingResponse<>( fList, fpagination );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("comuList", comuList);
		mv.addObject("nowpage", nowpage);
		mv.addObject("fresponse", fresponse );
		mv.setViewName("review/flist");
		return mv;
		
	}
	
	//---------------------------------------------------------------------------------------------------
	
	// 자유게시판 글 작성
	// /Review/WriteFreeForm
	@RequestMapping("/WriteFreeForm")
	public ModelAndView writeFreeForm( ComuVo comuVo ) {
		
		// 넘어온 comu_id (= ?comu_id=COMU02) 처리
		String comuid = comuVo.getComu_id();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("comuid", comuid);
		mv.setViewName("review/fwrite");
		return mv;
		
	}
	
	// /Review/WriteFree
	@RequestMapping("/WriteFree")
	public ModelAndView writeFree( FreeBoardVo freeBoardVo ) {
		
		reviewBoardMapper.insertFree( freeBoardVo );
		 
		String comu_id = freeBoardVo.getComu_id();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Review/ListFree?comu_id=" + comu_id);
		return mv;
		
	}
	
	//-------------------------------------------------------------------------
	
	// 기업리뷰 글 자세히 보기
	// /Review/RView?rno=1
	@RequestMapping("/RView")
	public ModelAndView rView( ReviewBoardVo reviewBoardVo ) {
		
		ReviewBoardVo reviewVo = reviewBoardMapper.getReview( reviewBoardVo );
		System.out.println( "===================reviewVo= " + reviewVo );
		
		/*
		 * List<ReviewBoardVo> rviewList = reviewBoardMapper.getReview(reviewBoardVo);
		 * System.out.println("========================rviewList= " + rviewList);
		 */		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("reviewVo", reviewVo);
		mv.setViewName("review/rview");
		return mv;
		
	}
	
	// 자유게시판 글 자세히 보기
	// /Review/FView?fno=1
	@RequestMapping("/FView")
	public ModelAndView fView( FreeBoardVo freeBoardVo ) {
		
		FreeBoardVo freeVo = reviewBoardMapper.getFree( freeBoardVo );
		System.out.println( "===================freeVo= " + freeVo );
		
		/*
		 * List<ReviewBoardVo> rviewList = reviewBoardMapper.getReview(reviewBoardVo);
		 * System.out.println("========================rviewList= " + rviewList);
		 */		
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("freeVo", freeVo);
		mv.setViewName("review/fview");
		return mv;
		
	}
	
	//-------------------------------------------------------------------------
	
	// 자유게시판 수정 폼
	@RequestMapping("/FUpdateForm")
	public ModelAndView fUpdateForm( FreeBoardVo freeBoardVo ) {
		
		FreeBoardVo freeVo = reviewBoardMapper.getFree( freeBoardVo );
		System.out.println("=======================freeVo= " + freeVo);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("freeVo", freeVo);
		mv.setViewName("review/fupdate");
		return mv;
		
	}
	
	
	// 자유게시판 수정
	@RequestMapping("/FUpdate")
	public ModelAndView fUpdate( FreeBoardVo freeBoardVo ) {
		
		reviewBoardMapper.updateFree( freeBoardVo );
		
		int fno = freeBoardVo.getFno();
		System.out.println("==================fno: " + fno);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Review/ListFree?fno=" + fno);
		return mv;
		
	}
	
	// 기업리뷰 수정 폼
	@RequestMapping("/RUpdateForm")
	public ModelAndView rUpdateForm( ReviewBoardVo reviewBoardVo ) {
		
		ReviewBoardVo reviewVo = reviewBoardMapper.getReview( reviewBoardVo );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("reviewVo", reviewVo);
		mv.setViewName("review/rupdate");
		return mv;		
		
	}
	
	// 기업리뷰 수정
	@RequestMapping("/RUpdate")
	public ModelAndView rUpdate( ReviewBoardVo reviewBoardVo ) {
		
		reviewBoardMapper.updateReview( reviewBoardVo );
		
		int rno = reviewBoardVo.getRno();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Review/List?rno=" + rno);
		return mv;
		
	}
	
	//-------------------------------------------------------------------------
	
	// 기업리뷰 삭제
	@RequestMapping("/RDelete")
	public ModelAndView rDelete( ReviewBoardVo reviewBoardVo ) {
		
		reviewBoardMapper.deleteReview( reviewBoardVo );
		
		int rno = reviewBoardVo.getRno();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Review/List?rno=" + rno);
		return mv;
		
	}
	
	// 자유게시판 글 삭제
	@RequestMapping("/FDelete")
	public ModelAndView fDelete( FreeBoardVo freeBoardVo ) {
			
		reviewBoardMapper.deleteFree( freeBoardVo );
			
		int fno = freeBoardVo.getFno();
			
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/Review/ListFree?fno=" + fno);
		return mv;
			
	}
	
	//-------------------------------------------------------------------------
	
	// 고객센터 목록
	@RequestMapping("/ListCs")
	public ModelAndView listCs( ServiceVo serviceVo ) {
		
		// 고객센터 목록 조회
		List<ServiceVo> csList = reviewBoardMapper.getServiceList( serviceVo );
		System.out.println( "=============csList: " + csList );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("csList", csList);
		mv.setViewName("cs/list");
		return mv;
		
	}
	
	// 고객센터 글 자세히 보기
	@RequestMapping("/ViewCs")
	public ModelAndView viewCs( ServiceVo serviceVo ) {
		
		// sno=1 인 글 불러오기
		ServiceVo svVo = reviewBoardMapper.getServiceView( serviceVo );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("svVo", svVo);
		mv.setViewName("cs/view");
		return mv;
	}
	
	
}















