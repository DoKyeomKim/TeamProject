package com.prj.recruits.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CRecruitVo {
	private int cno;
	private String c_id;
	private String c_company;
	private String c_title;
	private String skill;
	private String getman;
	private String c_address;
	private String c_info;
	private String c_ddate;
	private String bookmark;
	private String imagePath;
}
