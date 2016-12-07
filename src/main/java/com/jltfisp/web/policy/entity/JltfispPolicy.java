package com.jltfisp.web.policy.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
/**
 * 政策中心
 * @author cuihong.ge
 *
 */
@Table(name = "jltfisp_policy")
public class JltfispPolicy {
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private Integer id;
     @Column(name="image")
	 private String image;
     @Column(name="title")
     private String title;
     @Column(name="content")
     private String content;
     @Column(name="source")
     private String source;
     @Column(name="link")
     private String link;
     @Column(name="publish_time")
     private Date publishTime;
     @Column(name="column_id")
     private Integer columnId;
     @Column(name="content_review")
     private String contentReview;
     @Column(name="video")
     private String video;
     @Column(name="pv")
     private Integer pv;
     @Column(name="state")
     private Integer state;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
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
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public Date getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}
	public Integer getColumnId() {
		return columnId;
	}
	public void setColumnId(Integer columnId) {
		this.columnId = columnId;
	}
	public String getContentReview() {
		return contentReview;
	}
	public void setContentReview(String contentReview) {
		this.contentReview = contentReview;
	}
	public String getVideo() {
		return video;
	}
	public void setVideo(String video) {
		this.video = video;
	}
	public Integer getPv() {
		return pv;
	}
	public void setPv(Integer pv) {
		this.pv = pv;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
     
}
