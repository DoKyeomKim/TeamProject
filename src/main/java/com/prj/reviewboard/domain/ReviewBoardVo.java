package com.prj.reviewboard.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewBoardVo {
	private int rno;
	private String name;
	private int star;
	private String comu_id;
	private String title;
	private String content;
}
