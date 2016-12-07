package com.jltfisp.web.message.entity;

import javax.persistence.Table;

import com.jltfisp.base.entity.BaseEntity;
/**
 * 
 * jltfisp_message_push表
 *
 */
@Table(name = "jltfisp_message_push")
public class Message extends BaseEntity{
	private java.lang.Integer id; // 
	private java.lang.String title; // 标题
	private java.lang.String content; // 内容
	private java.util.Date pushDate; // 推送时间
	private java.lang.Integer createuserid; // 创建人id

	/**
     * 获取属性
     *
     * @return id
     */
	public java.lang.Integer getId() {
		return id;
	}
	
	/**
	 * 设置属性
	 *
	 * @param id
	 */
	public void setId(java.lang.Integer id) {
		this.id = id;
		
	}
	
	/**
     * 获取标题属性
     *
     * @return title
     */
	public java.lang.String getTitle() {
		return title;
	}
	
	/**
	 * 设置标题属性
	 *
	 * @param title
	 */
	public void setTitle(java.lang.String title) {
		this.title = title == null ? null : title.trim();
		
	}
	
	/**
     * 获取内容属性
     *
     * @return content
     */
	public java.lang.String getContent() {
		return content;
	}
	
	/**
	 * 设置内容属性
	 *
	 * @param content
	 */
	public void setContent(java.lang.String content) {
		this.content = content == null ? null : content.trim();
		
	}
	
	/**
     * 获取推送时间属性
     *
     * @return pushDate
     */
	public java.util.Date getPushDate() {
		return pushDate;
	}
	
	/**
	 * 设置推送时间属性
	 *
	 * @param pushDate
	 */
	public void setPushDate(java.util.Date pushDate) {
		this.pushDate = pushDate;
		
	}
	
	/**
     * 获取创建人id属性
     *
     * @return createuserid
     */
	public java.lang.Integer getCreateuserid() {
		return createuserid;
	}
	
	/**
	 * 设置创建人id属性
	 *
	 * @param createuserid
	 */
	public void setCreateuserid(java.lang.Integer createuserid) {
		this.createuserid = createuserid;
		
	}
	
	
}