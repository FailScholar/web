package com.jltfisp.web.message.entity;

import com.jltfisp.base.entity.BaseEntity;
/**
 * 
 * jltfisp_communicate表
 *
 */
public class Communicate extends BaseEntity{
	private Integer id; // 
	private Integer sendUser; // 发送人
	private Integer toUser; // 收信人
	private Integer ansExpertType; // 资讯专家角色类型
	private String ansExpertName;//咨询专家类型
	private String content; // 消息内容
	private java.util.Date time; // 发送时间
	private String ansContent; // 答复内容
	private Integer contentType; // 消息类型 0： 未查看/未解答 1： 已解答/已回复 2 ：以删除
	private String ansUserName;//答复人姓名
	
	/**
     * 获取属性
     *
     * @return id
     */
	public Integer getId() {
		return id;
	}
	
	/**
	 * 设置属性
	 *
	 * @param id
	 */
	public void setId(Integer id) {
		this.id = id;
		
	}
	
	/**
     * 获取发送人属性
     *
     * @return sendUser
     */
	public Integer getSendUser() {
		return sendUser;
	}
	
	/**
	 * 设置发送人属性
	 *
	 * @param sendUser
	 */
	public void setSendUser(Integer sendUser) {
		this.sendUser = sendUser;
		
	}
	
	/**
     * 获取收信人属性
     *
     * @return toUser
     */
	public Integer getToUser() {
		return toUser;
	}
	
	/**
	 * 设置收信人属性
	 *
	 * @param toUser
	 */
	public void setToUser(Integer toUser) {
		this.toUser = toUser;
		
	}
	
	/**
     * 获取资讯专家角色类型属性
     *
     * @return ansRole
     */
	public Integer getAnsExpertType() {
		return ansExpertType;
	}
	
	/**
	 * 设置资讯专家角色类型属性
	 *
	 * @param ansRole
	 */
	public void setAnsExpertType(Integer ansExpertType) {
		this.ansExpertType = ansExpertType;
		
	}
	
	/**
     * 获取消息内容属性
     *
     * @return content
     */
	public String getContent() {
		return content;
	}
	
	/**
	 * 设置消息内容属性
	 *
	 * @param content
	 */
	public void setContent(String content) {
		this.content = content == null ? null : content.trim();
		
	}
	
	/**
     * 获取发送时间属性
     *
     * @return time
     */
	public java.util.Date getTime() {
		return time;
	}
	
	/**
	 * 设置发送时间属性
	 *
	 * @param time
	 */
	public void setTime(java.util.Date time) {
		this.time = time;
		
	}
	
	/**
     * 获取答复内容属性
     *
     * @return ansContent
     */
	public String getAnsContent() {
		return ansContent;
	}
	
	/**
	 * 设置答复内容属性
	 *
	 * @param ansContent
	 */
	public void setAnsContent(String ansContent) {
		this.ansContent = ansContent == null ? null : ansContent.trim();
		
	}
	
	/**
     * 获取消息类型
0： 未查看/未解答
1： 已解答/已回复
2 ：以删除属性
     *
     * @return contentType
     */
	public Integer getContentType() {
		return contentType;
	}
	
	/**
	 * 设置消息类型
0： 未查看/未解答
1： 已解答/已回复
2 ：以删除属性
	 *
	 * @param contentType
	 */
	public void setContentType(Integer contentType) {
		this.contentType = contentType;
		
	}

	public String getAnsExpertName() {
		return ansExpertName;
	}

	public void setAnsExpertName(String ansExpertName) {
		this.ansExpertName = ansExpertName;
	}

	public String getAnsUserName() {
		return ansUserName;
	}

	public void setAnsUserName(String ansUserName) {
		this.ansUserName = ansUserName;
	}
	
	
}