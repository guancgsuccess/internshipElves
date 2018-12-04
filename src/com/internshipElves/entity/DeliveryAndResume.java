package com.internshipElves.entity;

import java.util.Date;

public class DeliveryAndResume {

    /**
     * 职位名
     *
     */
    private String jobName;

    /**
     * 投递简历时间
     */
    private Date deliverResumeTime;

    /**
     * 投递简历状态
     */
    private String deliverResumeStatus;

    /**
     * 公司名称
     */
    private String comName;
    /**
     * 工作城市
     */
    private String comCity;
    /**
     * 最低月薪
     */
    private Integer comSalaryLow;

    /**
     * 最高月薪
     */
    private Integer comSalaryHigh;

    //学生姓名

    private String StuName;

    //学生性别
    private String stuGender;

    //学生学历
    private String stuDegree;

    //学生现居地
    private String stuAddr;

    //学生学校
    private String stuSchool;

    //学生电话
    private String stuTel;

    //学生头像
    private String stuProfile;



    //简历记录id
    private Integer deliverResumeId;

    public Integer getDeliverResumeId() {
        return deliverResumeId;
    }

    public void setDeliverResumeId(Integer deliverResumeId) {
        this.deliverResumeId = deliverResumeId;
    }

    public String getStuProfile() {
        return stuProfile;
    }

    public void setStuProfile(String stuProfile) {
        this.stuProfile = stuProfile;
    }



    public String getStuTel() {
        return stuTel;
    }

    public void setStuTel(String stuTel) {
        this.stuTel = stuTel;
    }

    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail;
    }

    //学生邮箱
    private String stuEmail;

    public String getStuName() {
        return StuName;
    }

    public void setStuName(String stuName) {
        StuName = stuName;
    }

    public String getStuGender() {
        return stuGender;
    }

    public void setStuGender(String stuGender) {
        this.stuGender = stuGender;
    }

    public String getStuDegree() {
        return stuDegree;
    }

    public void setStuDegree(String stuDegree) {
        this.stuDegree = stuDegree;
    }

    public String getStuAddr() {
        return stuAddr;
    }

    public void setStuAddr(String stuAddr) {
        this.stuAddr = stuAddr;
    }

    public String getStuSchool() {
        return stuSchool;
    }

    public void setStuSchool(String stuSchool) {
        this.stuSchool = stuSchool;
    }

    public String getJobName() {
        return jobName;
    }

    public void setJobName(String jobName) {
        this.jobName = jobName;
    }


    public Date getDeliverResumeTime() {
        return deliverResumeTime;
    }

    public void setDeliverResumeTime(Date deliverResumeTime) {
        this.deliverResumeTime = deliverResumeTime;
    }

    public String getDeliverResumeStatus() {
        return deliverResumeStatus;
    }

    public void setDeliverResumeStatus(String deliverResumeStatus) {
        this.deliverResumeStatus = deliverResumeStatus;
    }

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName;
    }

    public String getComCity() {
        return comCity;
    }

    public void setComCity(String comCity) {
        this.comCity = comCity;
    }

    public Integer getComSalaryLow() {
        return comSalaryLow;
    }

    public void setComSalaryLow(Integer comSalaryLow) {
        this.comSalaryLow = comSalaryLow;
    }

    public Integer getComSalaryHigh() {
        return comSalaryHigh;
    }

    public void setComSalaryHigh(Integer comSalaryHigh) {
        this.comSalaryHigh = comSalaryHigh;
    }
}
