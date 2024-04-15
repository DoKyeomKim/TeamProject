package com.prj.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ComuVo {
	
	private String comu_id;
	private String comu_name;
	public String getComu_id() {
		// TODO Auto-generated method stub
		return null;
	}
	public void setComu_id(String comu_id) {
		this.comu_id = comu_id;
	}
	public String getComu_name() {
		return comu_name;
	}
	public void setComu_name(String comu_name) {
		this.comu_name = comu_name;
	}
	
}
