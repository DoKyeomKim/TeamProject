package com.prj.users.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.recruits.domain.CRecruitVo;
import com.prj.users.domain.CUserVo;
import com.prj.users.domain.PUserVo;

@Mapper
public interface UsersMapper {

	void insertPUser(PUserVo pUserVo);



	void updatePUser(PUserVo pUserVo);



	PUserVo getPUser(PUserVo pUserVo);



	PUserVo login(String p_id, String p_passwd);



	List<PUserVo> getRecruitList();



	List<CUserVo> getcmanage(CUserVo cUserVo);



	void insertCResume(CRecruitVo cresumeVo);



	void updateCUser(CRecruitVo cResumeVo);



	HashMap<String, Object> getCUserList(CUserVo cUserVo);



	void updateCUser(CUserVo cUserVo);







}
