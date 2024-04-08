package com.prj.resumes.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.prj.recruits.domain.PResumeVo;
import com.prj.resumes.mapper.ResumesMapper;

@Controller
@RequestMapping("/Resumes")
public class ResumesController {

	@Autowired
	private ResumesMapper resumesMapper;

	// 인재 정보 조회 /Resumes/List
	@RequestMapping("/List")
	public ModelAndView list(PResumeVo presumeVo) {
		// 사용자 목록조회
		List<PResumeVo> presumeList = resumesMapper.getPResumeList(presumeVo);

				ModelAndView mv  = new ModelAndView();
				mv.addObject("presumeList",presumeList);
				mv.setViewName("resumes/list");

				//.jsp 이동
				return mv;


	}



}
