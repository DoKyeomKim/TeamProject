package com.prj.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CareerVo {
	private String quick_id;
	private String cno;
	private String exper;
	public String getQuick_id() {
		return quick_id;
	}
	public void setQuick_id(String quick_id) {
		this.quick_id = quick_id;
	}
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getExper() {
		return exper;
	}
	public void setExper(String exper) {
		this.exper = exper;
	}
}

