package com.jltfisp.web.news.entity;

import java.util.Date;

public class ColumnDto {
	private Integer id;
	private String columnName;
	private Integer parentColumn;
	private Integer columnNo;
	private String isDelete;
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

public ColumnDto() {
	super();
}
public ColumnDto(Integer id, String columnName, Integer parentColumn,
		Integer columnNo, String isDelete) {
	super();
	this.id = id;
	this.columnName = columnName;
	this.parentColumn = parentColumn;
	this.columnNo = columnNo;
	this.isDelete = isDelete;
}

public ColumnDto(Integer id, String columnName, String title,
		String content, String source, String link, Date publishTime,
		String contentReview, Integer pv,Integer parentColumn,Integer columnId) {
	super();
	this.id = id;
	this.columnName = columnName;
	this.title = title;
	this.content = content;
	this.source = source;
	this.link = link;
	this.publishTime = publishTime;
	this.contentReview = contentReview;
	this.pv = pv;
	this.parentColumn =parentColumn;
	this.columnId =columnId;
}

public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getColumnName() {
	return columnName;
}
public void setColumnName(String columnName) {
	this.columnName = columnName;
}
public Integer getParentColumn() {
	return parentColumn;
}
public void setParentColumn(Integer parentColumn) {
	this.parentColumn = parentColumn;
}
public Integer getColumnNo() {
	return columnNo;
}
public void setColumnNo(Integer columnNo) {
	this.columnNo = columnNo;
}
public String getIsDelete() {
	return isDelete;
}
public void setIsDelete(String isDelete) {
	this.isDelete = isDelete;
}
public String getImageUrl() {
	return imageUrl;
}
public void setImageUrl(String imageUrl) {
	this.imageUrl = imageUrl;
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
public String getVideoPath() {
	return videoPath;
}
public void setVideoPath(String videoPath) {
	this.videoPath = videoPath;
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
