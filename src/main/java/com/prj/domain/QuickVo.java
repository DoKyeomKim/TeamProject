package com.prj.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class QuickVo {
	private String quick_id;
	private String quick_menu;
	public String getQuick_id() {
		return quick_id;
	}
	public void setQuick_id(String quick_id) {
		this.quick_id = quick_id;
	}
	public String getQuick_menu() {
		return quick_menu;
	}
	public void setQuick_menu(String quick_menu) {
		this.quick_menu = quick_menu;
	}
}
