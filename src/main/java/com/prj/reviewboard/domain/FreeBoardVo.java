package com.prj.reviewboard.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FreeBoardVo {

	//private String comu_id;
	//private int fno;
	private String name;
	private String title;
	private String content;
	public int getFno() {
		// TODO Auto-generated method stub
		return 0;
	}
	public String getComu_id() {
		// TODO Auto-generated method stub
		return null;
	}
	//public void setComu_id(String comu_id) {
	//	this.comu_id = comu_id;
	//}
	//public void setFno(int fno) {
	//	this.fno = fno;
	//}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
