package com.prj.users.mapper;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.bookmark.domain.BookmarkVo;
import com.prj.users.domain.CUserVo;
import com.prj.users.domain.PUserVo;

@Mapper
public interface UsersMapper {
	
	//로그인
	PUserVo pLogin(String p_id, String p_passwd);
	CUserVo cLogin(String c_id, String c_passwd);

	//회원가입
	void insertPUser(PUserVo pUserVo);
	void insertCUser(CUserVo cUserVo);
	
	
	PUserVo getPUser(PUserVo pUserVo);
	void updatePUser(PUserVo pUserVo);
	

	List<PUserVo> getRecruitList();

	void updateCUser(CUserVo cUserVo);
	HashMap<String, Object> getCUserList(CUserVo cUserVo);
	HashMap<String, Object> getPUserList(PUserVo pUserVo);
	List<HashMap<String, Object>> getCtlBookList(BookmarkVo request);
	
	
	
	
	
	












}
