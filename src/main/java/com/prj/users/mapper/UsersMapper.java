package com.prj.users.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.prj.users.domain.PUserVo;

@Mapper
public interface UsersMapper {

	void insertPUser(PUserVo pUserVo);



	void updatePUser(PUserVo pUserVo);



	PUserVo getPUser(PUserVo pUserVo);



	PUserVo login(String p_id, String p_passwd);




}
