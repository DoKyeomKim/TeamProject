package com.prj.reviewboard.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
		
		List<ReviewBoardVo> reviewList = reviewBoardMapper.getReviewList( reviewBoardVo );
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("reviewList", reviewList);
		mv.setViewName("review/list");
		return mv;
		
	}
	
}
