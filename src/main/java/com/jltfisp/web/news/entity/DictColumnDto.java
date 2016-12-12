package com.jltfisp.web.news.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 字典类型Dto
 * @author cuihong.ge
 *
 */
@Table(name = "sys_dict")
public class DictColumnDto {
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Integer id;
	 @Column(name = "type")
	 private Integer type;
	 @Column(name = "code")
	 private String code;
	 @Column(name = "value")
	 private String value;
	 @Column(name = "txt")
	 private String txt;
	 @Column(name = "sort")
	 private Integer sort;
	 @Column(name = "notes")
	 private String notes;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public Integer getType() {
	return type;
}
public void setType(Integer type) {
	this.type = type;
}
public String getCode() {
	return code;
}
public void setCode(String code) {
	this.code = code;
}
public String getValue() {
	return value;
}
public void setValue(String value) {
	this.value = value;
}
public String getTxt() {
	return txt;
}
public void setTxt(String txt) {
	this.txt = txt;
}
public Integer getSort() {
	return sort;
}
public void setSort(Integer sort) {
	this.sort = sort;
}
public String getNotes() {
	return notes;
}
public void setNotes(String notes) {
	this.notes = notes;
}

}
