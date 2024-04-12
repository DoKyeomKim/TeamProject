package com.prj.recruits.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.recruits.domain.CRecruitVo;

@Mapper
public interface CRecruitMapper {

	List<CRecruitVo> getRList(CRecruitVo cResumeVo);

	HashMap<String, Object> getRecruit(CRecruitVo cRecruitVo);
	
	//--------------------------------------------------------
	
	List<CRecruitVo> getRecruitList(CRecruitVo cResumeVo);

	List<CRecruitVo> getRecruitList();

	void writeRecruit(CRecruitVo cRecruitVo);

	CRecruitVo viewRecruit(int cno);

	CRecruitVo getUpdateRecruitByCno(int cno);

	void updateRecruit(CRecruitVo cRecruitVo);

	void deleteRecruit(int cno);




	
	
	

}
