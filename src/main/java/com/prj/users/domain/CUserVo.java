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
}
