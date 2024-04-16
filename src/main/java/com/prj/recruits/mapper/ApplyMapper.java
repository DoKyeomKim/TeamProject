package com.prj.recruits.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.recruits.domain.ApplyVo;
import com.prj.recruits.domain.PResumeVo;

@Mapper
public interface ApplyMapper {

	void applyResume(ApplyVo applyVo);

	void applyJob(ApplyVo applyVo);

	List<PResumeVo> getApplyResumeList(String p_id);

	List<ApplyVo> getApplyList(String p_id);

}
