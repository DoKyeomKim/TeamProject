package com.prj.recruits.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.recruits.domain.PResumeVo;

@Mapper
public interface PResumeMapper {
    List<PResumeVo> getResumeList();


	void deleteResume(int pno);

	PResumeVo getUpdateResumeByPno(int pno);


	void updateResume(PResumeVo pResumeVo);


	PResumeVo viewResume(int pno);
	void writeResume(PResumeVo pResumeVo);

	

	
}