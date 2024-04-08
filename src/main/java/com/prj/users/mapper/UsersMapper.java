package com.prj.users.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.users.domain.CUserVo;
import com.prj.users.domain.PUserVo;

@Mapper
public interface UsersMapper {

	void insertPUser(PUserVo pUserVo);
	PUserVo getPUser(PUserVo pUserVo);
	void updatePUser(PUserVo pUserVo);
	PUserVo login(String p_id, String p_passwd);

	List<PUserVo> getRecruitList();

	void updateCUser(CUserVo cUserVo);
	HashMap<String, Object> getCUserList(CUserVo cUserVo);











}
