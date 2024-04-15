package com.prj.bookmark.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.prj.bookmark.domain.BookmarkVo;

@Mapper
public interface BookmarkMapper {

	Integer CheckUBNO(BookmarkVo request);

	void CreateBookMark(BookmarkVo request);

	void AddBoolean(BookmarkVo request);

	void minusBoolean(BookmarkVo request);

	List<BookmarkVo> getUserBookmarks(String userId);
	
	
}
