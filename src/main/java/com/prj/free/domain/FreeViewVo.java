package com.prj.free.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FreeViewVo {
	private String comu_id;
	private String name;
	private String title;
	private String content;
}
