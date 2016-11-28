/*******************************************************************************
 * Copyright (c) 2016.10.31 by shuxi.zhang.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.web.column.entity;

import java.util.Date;

import javax.persistence.*;

@Table(name = "jltfisp_column_manage")
public class JltfispColumn {
    /**
     * 栏目ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * 栏目名称
     */
    @Column(name = "columnName")
    private String columnName;
    
    /**
     * 列表类型
     */
    @Column(name = "columnType")
    private Integer columnType;



    /**
     * 父栏目ID
     */
    @Column(name = "parentColumn")
    private Integer parentColumn;

    /**
     * 栏目排序
     */
    @Column(name = "columnNo")
    private Integer columnNo;

    /**
     * 图片URL
     */
    @Column(name = "image")
    private Integer image;

    /**
     * 栏目描述
     */
    @Column(name = "columnDesc")
    private String columnDesc;

    /**
     * 栏目设置：是否显示   0 、不显示 1、显示
     */
    @Column(name = "isdelete")
    private String isdelete;

    /**
     * 创建时间
     */
    @Column(name = "createTime")
    private Date createTime;


    /**
     * 创建人
     */
    @Column(name = "createUserid")
    private Integer createUserid;


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


    public Integer getColumnType() {
        return columnType;
    }


    public void setColumnType(Integer columnType) {
        this.columnType = columnType;
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


    public Integer getImage() {
        return image;
    }


    public void setImage(Integer image) {
        this.image = image;
    }


    public String getColumnDesc() {
        return columnDesc;
    }


    public void setColumnDesc(String columnDesc) {
        this.columnDesc = columnDesc;
    }


    public String getIsdelete() {
        return isdelete;
    }


    public void setIsdelete(String isdelete) {
        this.isdelete = isdelete;
    }


    public Date getCreateTime() {
        return createTime;
    }


    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }


    public Integer getCreateUserid() {
        return createUserid;
    }


    public void setCreateUserid(Integer createUserid) {
        this.createUserid = createUserid;
    }
    
}