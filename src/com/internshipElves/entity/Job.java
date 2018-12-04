package com.internshipElves.entity;

import java.util.Date;

public class Job {

    /**
     * 职位id
     */
    private Integer comReleaseJobId;

    public Integer getComReleaseJobId() {
        return comReleaseJobId;
    }

    public void setComReleaseJobId(Integer comReleaseJobId) {
        this.comReleaseJobId = comReleaseJobId;
    }

    /**
     * 职位类别
     */
    private String comReleaseJobType;

    /**
     * 职位名称
     */
    private String comReleaseJobName;



    /**
     * 工作性质
     */
    private String comReleaseJobProp;

    /**
     * 最低月薪
     */
    private Integer comReleaseJobSalaryLow;

    /**
     * 最高月薪
     */
    private Integer comReleaseJobSalaryHigh;


    /**
     * 工作城市
     */
    private String comReleaseJobCity;

    /**
     * 工作经验
     */
    private String comReleaseJobExp;

    /**
     * 学历要求
     */
    private String comReleaseJobRequir;


    /**
     * 职业诱惑
     */
    private String comReleaseJobTemp;

    /**
     * 首次发布时间
     */
    private Date comReleaseJobTime;


    /**
     * 公司名称
     */
    private String comName;


    /**
     * 行业领域
     */
    private String comField;

    /**
     * 公司规模
     */
    private String comScale;

    /**
     * 发展阶段
     */
    private String comDeplo;

    /**
     * 创始人姓名
     */
    private String comFounderName;

    public Job() {
    }

    public Job(String comReleaseJobType, String comReleaseJobName, String comReleaseJobProp, Integer comReleaseJobSalaryLow, Integer comReleaseJobSalaryHigh, String comReleaseJobCity, String comReleaseJobExp, String comReleaseJobRequir, String comReleaseJobTemp, Date comReleaseJobTime, String comName, String comField, String comScale, String comDeplo, String comFounderName) {
        this.comReleaseJobType = comReleaseJobType;
        this.comReleaseJobName = comReleaseJobName;
        this.comReleaseJobProp = comReleaseJobProp;
        this.comReleaseJobSalaryLow = comReleaseJobSalaryLow;
        this.comReleaseJobSalaryHigh = comReleaseJobSalaryHigh;
        this.comReleaseJobCity = comReleaseJobCity;
        this.comReleaseJobExp = comReleaseJobExp;
        this.comReleaseJobRequir = comReleaseJobRequir;
        this.comReleaseJobTemp = comReleaseJobTemp;
        this.comReleaseJobTime = comReleaseJobTime;
        this.comName = comName;
        this.comField = comField;
        this.comScale = comScale;
        this.comDeplo = comDeplo;
        this.comFounderName = comFounderName;
    }

    public String getComReleaseJobType() {
        return comReleaseJobType;
    }

    public void setComReleaseJobType(String comReleaseJobType) {
        this.comReleaseJobType = comReleaseJobType;
    }

    public String getComReleaseJobName() {
        return comReleaseJobName;
    }

    public void setComReleaseJobName(String comReleaseJobName) {
        this.comReleaseJobName = comReleaseJobName;
    }

    public String getComReleaseJobProp() {
        return comReleaseJobProp;
    }

    public void setComReleaseJobProp(String comReleaseJobProp) {
        this.comReleaseJobProp = comReleaseJobProp;
    }

    public Integer getComReleaseJobSalaryLow() {
        return comReleaseJobSalaryLow;
    }

    public void setComReleaseJobSalaryLow(Integer comReleaseJobSalaryLow) {
        this.comReleaseJobSalaryLow = comReleaseJobSalaryLow;
    }

    public Integer getComReleaseJobSalaryHigh() {
        return comReleaseJobSalaryHigh;
    }

    public void setComReleaseJobSalaryHigh(Integer comReleaseJobSalaryHigh) {
        this.comReleaseJobSalaryHigh = comReleaseJobSalaryHigh;
    }

    public String getComReleaseJobCity() {
        return comReleaseJobCity;
    }

    public void setComReleaseJobCity(String comReleaseJobCity) {
        this.comReleaseJobCity = comReleaseJobCity;
    }

    public String getComReleaseJobExp() {
        return comReleaseJobExp;
    }

    public void setComReleaseJobExp(String comReleaseJobExp) {
        this.comReleaseJobExp = comReleaseJobExp;
    }

    public String getComReleaseJobRequir() {
        return comReleaseJobRequir;
    }

    public void setComReleaseJobRequir(String comReleaseJobRequir) {
        this.comReleaseJobRequir = comReleaseJobRequir;
    }

    public String getComReleaseJobTemp() {
        return comReleaseJobTemp;
    }

    public void setComReleaseJobTemp(String comReleaseJobTemp) {
        this.comReleaseJobTemp = comReleaseJobTemp;
    }

    public Date getComReleaseJobTime() {
        return comReleaseJobTime;
    }

    public void setComReleaseJobTime(Date comReleaseJobTime) {
        this.comReleaseJobTime = comReleaseJobTime;
    }

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName;
    }

    public String getComField() {
        return comField;
    }

    public void setComField(String comField) {
        this.comField = comField;
    }

    public String getComScale() {
        return comScale;
    }

    public void setComScale(String comScale) {
        this.comScale = comScale;
    }

    public String getComDeplo() {
        return comDeplo;
    }

    public void setComDeplo(String comDeplo) {
        this.comDeplo = comDeplo;
    }

    public String getComFounderName() {
        return comFounderName;
    }

    public void setComFounderName(String comFounderName) {
        this.comFounderName = comFounderName;
    }
}
