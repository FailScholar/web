package com.jltfisp.web.news.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 资讯中心实体类
 * @author cuihong.ge
 *
 */
@Table(name = "jltfisp_news")
public class NewsInformation {
    /**
     * 主键id
     */
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	/**
     * 图片存放路径
     */
	private String imageUrl;
	/**
     * 新闻标题
     */
	private String title;
	/**
     * 新闻内容
     */
	private String content;
	/**
     * 新闻来源
     */
	private String source;
	/**
     * 连接地址
     */
	private String link;
	/**
     * 发布时间
     */
	private Date publishTime;
	/**
     * 对应栏目管理里面栏目Id（一级或二级栏目）
     */
	private Integer columnId;
	/**
     * 内容导读
     */
	private String contentReview;
	/**
     * 视频存放路径
     */
	private String videoPath;
	/**
     * 浏览量
     */
	private Integer pv;
	/**
     * 内容状态
     */
	private Integer state;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name="imageUrl")
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	@Column(name="title")
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Column(name="content")
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Column(name="source")
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	@Column(name="link")
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	@Column(name="publish_time")
	public Date getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}
	@Column(name="column_id")
	public Integer getColumnId() {
		return columnId;
	}
	public void setColumnId(Integer columnId) {
		this.columnId = columnId;
	}
	@Column(name="content_review")
	public String getContentReview() {
		return contentReview;
	}
	public void setContentReview(String contentReview) {
		this.contentReview = contentReview;
	}
	@Column(name="videoPath")
	public String getVideoPath() {
		return videoPath;
	}
	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}
	@Column(name="pv")
	public Integer getPv() {
		return pv;
	}
	public void setPv(Integer pv) {
		this.pv = pv;
	}
	@Column(name="state")
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
}
