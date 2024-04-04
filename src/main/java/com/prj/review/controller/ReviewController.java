package com.prj.review.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.review.domain.ReviewVo;
import com.prj.review.mapper.ReviewMapper;

@Controller
@RequestMapping("/Review")
public class ReviewController {

	@Autowired
	private ReviewMapper reviewMapper;
	
	// /Review/List
	@RequestMapping("/List")
	public ModelAndView list( ReviewVo reviewVo ) {
		
		List<ReviewVo> reviewList = reviewMapper.getReviewList();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("reviewList", reviewList);
		mv.setViewName("review/list");
		return mv;
		
	}
	
}
