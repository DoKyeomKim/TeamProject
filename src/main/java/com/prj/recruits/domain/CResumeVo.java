package com.prj.recruits.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CResumeVo {
	private String c_id;
	private String c_company;
	private String c_title;
	private String skill;
	private String getman;
	private String c_address;
	private String c_info;
	private String c_ddate;
	private String bookmark;
	public String getC_id() {
		return c_id;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getC_company() {
		return c_company;
	}
	public void setC_company(String c_company) {
		this.c_company = c_company;
	}
	public String getC_title() {
		return c_title;
	}
	public void setC_title(String c_title) {
		this.c_title = c_title;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getGetman() {
		return getman;
	}
	public void setGetman(String getman) {
		this.getman = getman;
	}
	public String getC_address() {
		return c_address;
	}
	public void setC_address(String c_address) {
		this.c_address = c_address;
	}
	public String getC_info() {
		return c_info;
	}
	public void setC_info(String c_info) {
		this.c_info = c_info;
	}
	public String getC_ddate() {
		return c_ddate;
	}
	public void setC_ddate(String c_ddate) {
		this.c_ddate = c_ddate;
	}
	public String getBookmark() {
		return bookmark;
	}
	public void setBookmark(String bookmark) {
		this.bookmark = bookmark;
	}

}
