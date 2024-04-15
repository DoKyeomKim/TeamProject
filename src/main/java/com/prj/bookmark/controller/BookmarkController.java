package com.prj.bookmark.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.prj.bookmark.domain.BookmarkVo;
import com.prj.bookmark.mapper.BookmarkMapper;
import com.prj.users.mapper.UsersMapper;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class BookmarkController {

	
	@Autowired
    private BookmarkMapper bookmarkMapper;
	@Autowired
	private UsersMapper usersMapper;
	
	@PostMapping("/Bookmarks/add")
	public String addBookmark() {
    	
    	return " ";
    }

    @PostMapping("/Bookmarks/add/{user_id}/{posting_pno}")
    public ResponseEntity<String> addBookmark(@RequestBody BookmarkVo request) throws JsonProcessingException {
        // 클라이언트에서 전달된 요청 본문의 데이터를 자동으로 BookmarkRequest 객체로 변환하여 받음
        // 이후 해당 데이터를 서비스로 전달하여 북마크 추가 작업을 수행
    	//bookmarkMapper.addBookmark(request);
    	
    	// null, 0 북마크취소, 1 북마크업
    	Integer  checkUBno = bookmarkMapper.CheckUBNO(request);
    
    	
    	//null user_bookmark테이블 생성
    	if (checkUBno == null) {
    		bookmarkMapper.CreateBookMark(request);
    	}else {
    		if(checkUBno ==0) {
    			bookmarkMapper.AddBoolean(request);
    		}else if(checkUBno ==1) {
    			bookmarkMapper.minusBoolean(request);	
    		}
    		
    	}
        ObjectMapper objectMapper = new ObjectMapper();
    	List<HashMap<String, Object>> book = usersMapper.getCtlBookList(request);
    	 String bookJson = objectMapper.writeValueAsString(book);
    	
    	 
         // 모델에 JSON 문자열 추가
    	  return ResponseEntity.ok(bookJson);
    	            
        // 북마크 추가가 성공했음을 클라이언트에게 응답
       
    }
    @RequestMapping("/Bookmarks/")
    public String bookmarks() {
    	
    	return " ";
    }
    
    @RequestMapping("/Bookmarks/{userId}")
    public ResponseEntity<List<BookmarkVo>> getUserBookmarks(@PathVariable String p_id) {
        List<BookmarkVo> bookmarks = bookmarkMapper.getUserBookmarks(p_id);
        
     // 북마크 조회가 성공했음을 클라이언트에게 응답 //
        return ResponseEntity.ok(bookmarks);
    }
				
}

