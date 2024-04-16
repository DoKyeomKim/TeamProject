package com.prj.reviewboard.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ServiceVo {

	private int sno;
	private String name;
	private String title;
	private String content;
	
}
