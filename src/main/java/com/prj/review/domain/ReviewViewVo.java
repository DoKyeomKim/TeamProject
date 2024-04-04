package com.prj.review.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewViewVo {
	private String comu_id;
	private String name;
	private String title;
	private String content;
	private int star;
}
