package com.prj.users.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class PUserVo {
	private String p_id;
	private String p_passwd;
	private String p_name;
	private String p_phone;
	private String p_email;
	private String skill;
}
