/*******************************************************************************
 * Copyright (c) 2016.11.18 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.sys.session.statistics.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Table(name = "jltfisp_statistics")
public class JltfispStatistics {
    public JltfispStatistics() {
        List<String> list = new ArrayList<>();
        list.add("0.0.0.0");
        this.setIpList(list);
    }

    /**
     * id
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    /**
     * Page View 浏览量
     */
    private Integer pv = 0;

    /**
     * unique visitor 访问量
     */
    private Integer uv = 0;

    /**
     * ip数量
     */
    private Integer ip = 0;

    /**
     * 人均访问时长
     */
    private Integer average = 0;

    /**
     * 保存时间
     */
    private Date time;

    /**
     * 默认：0;每日平均:1;历史峰值:2
     */
    private Integer flag;

    @Transient
    private int total = 0;

    @Transient
    private long totalTime = 0;

    @Transient
    private List<String> ipList;

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
     * 获取unique visitor 访问量
     *
     * @return uv - unique visitor 访问量
     */
    public Integer getUv() {
        return uv;
    }

    /**
     * 设置unique visitor 访问量
     *
     * @param uv unique visitor 访问量
     */
    public void setUv(Integer uv) {
        this.uv = uv;
    }

    /**
     * 获取ip数量
     *
     * @return ip - ip数量
     */
    public Integer getIp() {
        return ip;
    }

    /**
     * 设置ip数量
     *
     * @param ip ip数量
     */
    public void setIp(Integer ip) {
        this.ip = ip;
    }

    /**
     * 获取人均访问时长
     *
     * @return average - 人均访问时长
     */
    public Integer getAverage() {
        return average;
    }

    /**
     * 设置人均访问时长
     *
     * @param average 人均访问时长
     */
    public void setAverage(Integer average) {
        this.average = average;
    }

    /**
     * 获取保存时间
     *
     * @return time - 保存时间
     */
    public Date getTime() {
        return time;
    }

    /**
     * 设置保存时间
     *
     * @param time 保存时间
     */
    public void setTime(Date time) {
        this.time = time;
    }

    /**
     * 获取默认：0;每日平均:1;历史峰值:2
     *
     * @return flag - 默认：0;每日平均:1;历史峰值:2
     */
    public Integer getFlag() {
        return flag;
    }
    /**
     * 设置默认：0;每日平均:1;历史峰值:2
     *
     * @param flag 默认：0;每日平均:1;历史峰值:2
     */
    public void setFlag(Integer flag) {
        this.flag = flag;
    }
    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public long getTotalTime() {
        return totalTime;
    }

    public void setTotalTime(long totalTime) {
        this.totalTime = totalTime;
    }

    public List<String> getIpList() {
        return ipList;
    }

    public void setIpList(List<String> ipList) {
        this.ipList = ipList;
    }

}