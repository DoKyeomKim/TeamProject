package com.prj.free.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class FreeBoardVo {
	private int fno;
	private String name;
	private String title;	
	private String comu_id;
	private String content;
}
