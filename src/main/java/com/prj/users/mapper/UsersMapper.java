package com.prj.users.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.prj.users.domain.PUserVo;

@Mapper
public interface UsersMapper {

	void insertpuser(PUserVo puserVo);

	void updatepuser(PUserVo puserVo);

}
