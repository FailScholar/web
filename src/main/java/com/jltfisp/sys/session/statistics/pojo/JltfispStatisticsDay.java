/*******************************************************************************
 * Copyright (c) 2016.11.19 by LiuFa.
 * Copyright © 2016 Shenzhen GTA Education Tech Ltd. All rights reserved
 ******************************************************************************/

package com.jltfisp.sys.session.statistics.pojo;

public class JltfispStatisticsDay {
    public JltfispStatisticsDay() {
        this.pv = 0;
        this.uv = 0;
        this.ip = 0;
        this.average = 0;
    }

    /**
     * Page View 浏览量
     */
    private Integer pv;

    /**
     * unique visitor 访问量
     */
    private Integer uv;

    /**
     * ip数量
     */
    private Integer ip;

    /**
     * 人均访问时长
     */
    private Integer average;

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
}