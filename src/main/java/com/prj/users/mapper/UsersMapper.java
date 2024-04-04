package com.prj.users.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.users.domain.PUserVo;

@Mapper
public interface UsersMapper {

	

	void updatepuser(PUserVo puserVo);

	List<PUserVo> insertpuser(PUserVo puserVo);


}
