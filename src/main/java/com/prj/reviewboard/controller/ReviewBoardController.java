package com.prj.reviewboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.domain.ComuVo;
import com.prj.reviewboard.domain.ReviewBoardVo;
import com.prj.reviewboard.mapper.ReviewBoardMapper;

@Controller
@RequestMapping("/Review")
public class ReviewBoardController {

	@Autowired
	private ReviewBoardMapper reviewBoardMapper;
	
	// /Review/List
	@RequestMapping("/List")
	public ModelAndView list( ReviewBoardVo reviewBoardVo ) {
		
		// 메인 상단 메뉴 불러오기
		ComuVo comuVo = new ComuVo();
		List<ComuVo> comuList = reviewBoardMapper.getComuList( comuVo );
			
			
		// 기업리뷰 목록 불러오기
		List<ReviewBoardVo> reviewList = reviewBoardMapper.getReviewList( reviewBoardVo );
			
		ModelAndView mv = new ModelAndView();
		mv.addObject("comuList", comuList);
		mv.addObject("reviewList", reviewList);
		mv.setViewName("review/list");
		return mv;
		
	}
	
	// /Review/WriteForm
	@RequestMapping("/WriteForm")
	public ModelAndView writeForm( ComuVo comuVo ) {
		
		// 넘어온 comu_id (= ?comu_id=COMU01) 처리
		String comuid = comuVo.getComu_id();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject( comuid );
		mv.setViewName("review/write");
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
		
		
	
	
	
	
}















