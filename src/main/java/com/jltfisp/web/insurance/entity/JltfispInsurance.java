package com.jltfisp.web.insurance.entity;

import javax.persistence.*;
import java.util.Date;

@Table(name = "jltfisp_insurance")
public class JltfispInsurance {
    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 资讯的图片地址，可能会被用于在首页展示用
     */
    private String image;

    /**
     * 标题
     */
    private String title;

    /**
     * 来源
     */
    private String source;

    /**
     * 链接地址
     */
    private String link;

    /**
     * 发布日期
     */
    @Column(name = "publish_time")
    private Date publishTime;

    /**
     * 资讯所属子栏目
     */
    @Column(name = "column_id")
    private Integer columnId;

    /**
     * 内容导读
     */
    @Column(name = "content_review")
    private String contentReview;

    /**
     * 视频地址
     */
    private String video;

    /**
     * Page View 浏览量
     */
    private Integer pv;

    /**
     * 内容状态
     */
    private Integer state;

    /**
     * 内容
     */
    private String content;

    /**
     * 获取id
     *
     * @return id - id
     */
    public Integer getId() {
        return id;
    }

    /**
     * 设置id
     *
     * @param id id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * 获取资讯的图片地址，可能会被用于在首页展示用
     *
     * @return image - 资讯的图片地址，可能会被用于在首页展示用
     */
    public String getImage() {
        return image;
    }

    /**
     * 设置资讯的图片地址，可能会被用于在首页展示用
     *
     * @param image 资讯的图片地址，可能会被用于在首页展示用
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * 获取标题
     *
     * @return title - 标题
     */
    public String getTitle() {
        return title;
    }

    /**
     * 设置标题
     *
     * @param title 标题
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * 获取来源
     *
     * @return source - 来源
     */
    public String getSource() {
        return source;
    }

    /**
     * 设置来源
     *
     * @param source 来源
     */
    public void setSource(String source) {
        this.source = source;
    }

    /**
     * 获取链接地址
     *
     * @return link - 链接地址
     */
    public String getLink() {
        return link;
    }

    /**
     * 设置链接地址
     *
     * @param link 链接地址
     */
    public void setLink(String link) {
        this.link = link;
    }

    /**
     * 获取发布日期
     *
     * @return publish_time - 发布日期
     */
    public Date getPublishTime() {
        return publishTime;
    }

    /**
     * 设置发布日期
     *
     * @param publishTime 发布日期
     */
    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    /**
     * 获取资讯所属子栏目
     *
     * @return column_id - 资讯所属子栏目
     */
    public Integer getColumnId() {
        return columnId;
    }

    /**
     * 设置资讯所属子栏目
     *
     * @param columnId 资讯所属子栏目
     */
    public void setColumnId(Integer columnId) {
        this.columnId = columnId;
    }

    /**
     * 获取内容导读
     *
     * @return content_review - 内容导读
     */
    public String getContentReview() {
        return contentReview;
    }

    /**
     * 设置内容导读
     *
     * @param contentReview 内容导读
     */
    public void setContentReview(String contentReview) {
        this.contentReview = contentReview;
    }

    /**
     * 获取视频地址
     *
     * @return video - 视频地址
     */
    public String getVideo() {
        return video;
    }

    /**
     * 设置视频地址
     *
     * @param video 视频地址
     */
    public void setVideo(String video) {
        this.video = video;
    }

    /**
     * 获取Page View 浏览量
     *
     * @return pv - Page View 浏览量
     */
    public Integer getPv() {
        return pv;
    }

    /**
     * 设置Page View 浏览量
     *
     * @param pv Page View 浏览量
     */
    public void setPv(Integer pv) {
        this.pv = pv;
    }

    /**
     * 获取内容状态
     *
     * @return state - 内容状态
     */
    public Integer getState() {
        return state;
    }

    /**
     * 设置内容状态
     *
     * @param state 内容状态
     */
    public void setState(Integer state) {
        this.state = state;
    }

    /**
     * 获取内容
     *
     * @return content - 内容
     */
    public String getContent() {
        return content;
    }

    /**
     * 设置内容
     *
     * @param content 内容
     */
    public void setContent(String content) {
        this.content = content;
    }
}