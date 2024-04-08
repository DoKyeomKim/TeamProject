package com.prj.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RegionVo {
	private String quick_id;
	private int rno;
	private String loc;
	public String getQuick_id() {
		return quick_id;
	}
	public void setQuick_id(String quick_id) {
		this.quick_id = quick_id;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
}
