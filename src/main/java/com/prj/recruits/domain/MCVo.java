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
}
