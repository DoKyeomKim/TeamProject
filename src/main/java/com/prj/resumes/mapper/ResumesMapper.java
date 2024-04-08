package com.prj.resumes.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.recruits.domain.PResumeVo;

@Mapper
public interface ResumesMapper {


	List<PResumeVo> getPResumeList(PResumeVo presumeVo);

}