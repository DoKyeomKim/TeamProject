package com.prj.recruits.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter

public class MCVo {
	private int    majorcno;
	private String mc_name;
	private String mc_phone;
	private String mc_email;
	private String mc_adress;
	public int getMajorcno() {
		return majorcno;
	}
	public void setMajorcno(int majorcno) {
		this.majorcno = majorcno;
	}
	public String getMc_name() {
		return mc_name;
	}
	public void setMc_name(String mc_name) {
		this.mc_name = mc_name;
	}
	public String getMc_phone() {
		return mc_phone;
	}
	public void setMc_phone(String mc_phone) {
		this.mc_phone = mc_phone;
	}
	public String getMc_email() {
		return mc_email;
	}
	public void setMc_email(String mc_email) {
		this.mc_email = mc_email;
	}
	public String getMc_adress() {
		return mc_adress;
	}
	public void setMc_adress(String mc_adress) {
		this.mc_adress = mc_adress;
	}
}
