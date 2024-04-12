package com.prj.recruits.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class PResumeVo {
	private String p_title;
	private String p_id;
	private String p_name;
	private String p_birth;
	private String p_phone;
	private String p_email;
	private String p_address;
	private String skill;
	private String intro;
	private String bookmark;
	private int pno;
}
