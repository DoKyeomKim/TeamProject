package com.prj.mypage.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CScrapVo {
	
	private int scrapno;
	private String member_id;
	private int bno;
	private String scrapdate;

}
