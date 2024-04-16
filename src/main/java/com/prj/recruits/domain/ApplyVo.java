package com.prj.recruits.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApplyVo {
	private int cno;
	private int pno;
	private int ano;
	private String p_id;
	private String c_id;
}
