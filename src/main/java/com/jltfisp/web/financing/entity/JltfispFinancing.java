/*******************************************************************************
 * Copyright (c) 2016.10.31 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.financing.entity;

import javax.persistence.*;

@Table(name = "jltfisp_financing")
public class JltfispFinancing {
    
    /**
     * 用户ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
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

    public String getPublishtime() {
        return publishtime;
    }

    public void setPublishtime(String publishtime) {
        this.publishtime = publishtime;
    }

    public Integer getColumnid() {
        return columnid;
    }

    public void setColumnid(Integer columnid) {
        this.columnid = columnid;
    }

    public String getContentreview() {
        return contentreview;
    }

    public void setContentreview(String contentreview) {
        this.contentreview = contentreview;
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

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    /**
     * 资讯的图片地址，可能会被用于在首页展示用
     */
    @Column(name = "image")
    private String image;

    /**
     * 标题
     */
    @Column(name = "title")
    private String title;

    /**
     * 内容
     */
    @Column(name = "content")
    private String content;

    /**
     * 来源
     */
    @Column(name = "source")
    private String source;

    /**
     * 链接地址
     */
    @Column(name = "link")
    private String link;

    /**
     * 发布日期
     */
    @Column(name = "publish_time")
    private String publishtime;

    /**
     * 资讯所属子栏目
     */
    @Column(name = "column_id")
    private Integer columnid;


    /**
     * 内容导读
     */
    @Column(name = "content_review")
    private String contentreview;
    
    /**
     * 视频地址
     */
    @Column(name = "video")
    private String video;

    /**
     * Page View 浏览量
     */
    @Column(name = "pv")
    private Integer pv;

    /**
     * 内容状态
     */
    @Column(name = "state")
    private Integer state;
    
    /**
     * 类型0电子信息技术1生物医药技术2...等等，详细类型见字典表
     */
    @Column(name = "type")
    private Integer type;
    
}