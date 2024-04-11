package com.prj.resumes.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.recruits.domain.PResumeVo;

@Mapper
public interface ResumesMapper {


	List<PResumeVo> getPResumeList(PResumeVo presumeVo);


	// HashMap<String, Object> getPResumeView(int pno, PResumeVo presumeVo);
	// HashMap<String, Object> getPResumeView();
	//HashMap<String, Object> getPResumeView(PResumeVo presumeVo);

	//List<PResumeVo> getView(PResumeVo pResumeVo);


	PResumeVo viewResume(int pno);
	

}