package com.prj.users.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CUserVo {
	private String c_id;
	private String c_passwd;
	private String c_name;
	private String c_phone;
	private String c_company;
	private int c_bcode;
	private String c_email;
	public String getC_id() {
		// TODO Auto-generated method stub
		return null;
	}
	public void setC_id(String c_id) {
		this.c_id = c_id;
	}
	public String getC_passwd() {
		return c_passwd;
	}
	public void setC_passwd(String c_passwd) {
		this.c_passwd = c_passwd;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public String getC_phone() {
		return c_phone;
	}
	public void setC_phone(String c_phone) {
		this.c_phone = c_phone;
	}
	public String getC_company() {
		return c_company;
	}
	public void setC_company(String c_company) {
		this.c_company = c_company;
	}
	public int getC_bcode() {
		return c_bcode;
	}
	public void setC_bcode(int c_bcode) {
		this.c_bcode = c_bcode;
	}
	public String getC_email() {
		return c_email;
	}
	public void setC_email(String c_email) {
		this.c_email = c_email;
	}
}
