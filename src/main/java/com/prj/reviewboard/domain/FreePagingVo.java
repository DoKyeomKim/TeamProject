package com.prj.reviewboard.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreePagingVo {

	private String comu_id;
	private int	   fno;
	private String name;
	private String title;
	private String content;
	
}
