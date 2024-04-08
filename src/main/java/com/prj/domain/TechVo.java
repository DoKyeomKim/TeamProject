package com.prj.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class TechVo {
	private String quick_id;
	private int tno;
	private String skill;
	public String getQuick_id() {
		return quick_id;
	}
	public void setQuick_id(String quick_id) {
		this.quick_id = quick_id;
	}
	public int getTno() {
		return tno;
	}
	public void setTno(int tno) {
		this.tno = tno;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
}
