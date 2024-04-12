package com.prj.bookmark.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class PBookmarkVo {
	private int    pbookmark_no;
	private int    pboard_no;
	private int    puser_no;
	private String reg_date;
}
