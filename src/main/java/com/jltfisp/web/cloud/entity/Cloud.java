package com.jltfisp.web.cloud.entity;

import com.jltfisp.base.entity.BaseEntity;

import java.util.Date;
/**
 * 
 * jltfisp_cloud表
 *
 */
public class Cloud extends BaseEntity{
	private Integer id; // id
	private String image; // 资讯的图片地址，可能会被用于在首页展示用
	private String title; // 标题
	private String content; // 内容
	private String source; // 来源
	private String link; // 链接地址
	private Date publishTime; // 发布日期
	private Integer columnId; // 资讯所属子栏目
	private String contentReview; // 内容导读
	private String video; // 视频地址
	private Integer pv; // Page View 浏览量
	private Integer state; // 内容状态
	
	private int parentNum;//上级栏目id

	/**
     * 获取id属性
     *
     * @return id
     */
	public Integer getId() {
		return id;
	}
	
	/**
	 * 设置id属性
	 *
	 * @param id
	 */
	public void setId(Integer id) {
		this.id = id;
		
	}
	
	/**
     * 获取资讯的图片地址，可能会被用于在首页展示用属性
     *
     * @return image
     */
	public String getImage() {
		return image;
	}
	
	/**
	 * 设置资讯的图片地址，可能会被用于在首页展示用属性
	 *
	 * @param image
	 */
	public void setImage(String image) {
		this.image = image == null ? null : image.trim();
		
	}
	
	/**
     * 获取标题属性
     *
     * @return title
     */
	public String getTitle() {
		return title;
	}
	
	/**
	 * 设置标题属性
	 *
	 * @param title
	 */
	public void setTitle(String title) {
		this.title = title == null ? null : title.trim();
		
	}
	
	/**
     * 获取内容属性
     *
     * @return content
     */
	public String getContent() {
		return content;
	}
	
	/**
	 * 设置内容属性
	 *
	 * @param content
	 */
	public void setContent(String content) {
		this.content = content == null ? null : content.trim();
		
	}
	
	/**
     * 获取来源属性
     *
     * @return source
     */
	public String getSource() {
		return source;
	}
	
	/**
	 * 设置来源属性
	 *
	 * @param source
	 */
	public void setSource(String source) {
		this.source = source == null ? null : source.trim();
		
	}
	
	/**
     * 获取链接地址属性
     *
     * @return link
     */
	public String getLink() {
		return link;
	}
	
	/**
	 * 设置链接地址属性
	 *
	 * @param link
	 */
	public void setLink(String link) {
		this.link = link == null ? null : link.trim();
		
	}
	
	/**
     * 获取发布日期属性
     *
     * @return publishTime
     */
	public Date getPublishTime() {
		return publishTime;
	}
	
	/**
	 * 设置发布日期属性
	 *
	 * @param publishTime
	 */
	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
		
	}
	
	/**
     * 获取资讯所属子栏目属性
     *
     * @return columnId
     */
	public Integer getColumnId() {
		return columnId;
	}
	
	/**
	 * 设置资讯所属子栏目属性
	 *
	 * @param columnId
	 */
	public void setColumnId(Integer columnId) {
		this.columnId = columnId;
		
	}
	
	/**
     * 获取内容导读属性
     *
     * @return contentReview
     */
	public String getContentReview() {
		return contentReview;
	}
	
	/**
	 * 设置内容导读属性
	 *
	 * @param contentReview
	 */
	public void setContentReview(String contentReview) {
		this.contentReview = contentReview == null ? null : contentReview.trim();
		
	}
	
	/**
     * 获取视频地址属性
     *
     * @return video
     */
	public String getVideo() {
		return video;
	}
	
	/**
	 * 设置视频地址属性
	 *
	 * @param video
	 */
	public void setVideo(String video) {
		this.video = video == null ? null : video.trim();
		
	}
	
	/**
     * 获取Page View 浏览量属性
     *
     * @return pv
     */
	public Integer getPv() {
		return pv;
	}
	
	/**
	 * 设置Page View 浏览量属性
	 *
	 * @param pv
	 */
	public void setPv(Integer pv) {
		this.pv = pv;
		
	}
	
	/**
     * 获取内容状态属性
     *
     * @return state
     */
	public Integer getState() {
		return state;
	}
	
	/**
	 * 设置内容状态属性
	 *
	 * @param state
	 */
	public void setState(Integer state) {
		this.state = state;
		
	}

	public int getParentNum() {
		return parentNum;
	}

	public void setParentNum(int parentNum) {
		this.parentNum = parentNum;
	}
	
	
}