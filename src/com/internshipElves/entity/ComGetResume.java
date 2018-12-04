package com.internshipElves.entity;

import java.util.Date;

public class ComGetResume {

    //学生姓名
    private String stuName;
    //学生性别
    private Integer stuGender;
    //学位
    private String stuDegree;
    //现居地
    private String stuAddrCity;
    //职位
    private String comJobName;
    //公司名称
    private String comName;
    //学历要求
    private String comJobRequir;
    //电话号码
    private String stuTel;
    //邮箱
    private String stuEmail;
    //投递简历时间
    private Date deliverResumeTime;
    //简历id
    private Integer ResumeId;

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public Integer getStuGender() {
        return stuGender;
    }

    public void setStuGender(Integer stuGender) {
        this.stuGender = stuGender;
    }

    public String getStuDegree() {
        return stuDegree;
    }

    public void setStuDegree(String stuDegree) {
        this.stuDegree = stuDegree;
    }

    public String getStuAddrCity() {
        return stuAddrCity;
    }

    public void setStuAddrCity(String stuAddrCity) {
        this.stuAddrCity = stuAddrCity;
    }

    public String getComJobName() {
        return comJobName;
    }

    public void setComJobName(String comJobName) {
        this.comJobName = comJobName;
    }

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName;
    }

    public String getComJobRequir() {
        return comJobRequir;
    }

    public void setComJobRequir(String comJobRequir) {
        this.comJobRequir = comJobRequir;
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

    public Date getDeliverResumeTime() {
        return deliverResumeTime;
    }

    public void setDeliverResumeTime(Date deliverResumeTime) {
        this.deliverResumeTime = deliverResumeTime;
    }

    public Integer getResumeId() {
        return ResumeId;
    }

    public void setResumeId(Integer resumeId) {
        ResumeId = resumeId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ComGetResume that = (ComGetResume) o;

        if (stuName != null ? !stuName.equals(that.stuName) : that.stuName != null) return false;
        if (stuGender != null ? !stuGender.equals(that.stuGender) : that.stuGender != null) return false;
        if (stuDegree != null ? !stuDegree.equals(that.stuDegree) : that.stuDegree != null) return false;
        if (stuAddrCity != null ? !stuAddrCity.equals(that.stuAddrCity) : that.stuAddrCity != null) return false;
        if (comJobName != null ? !comJobName.equals(that.comJobName) : that.comJobName != null) return false;
        if (comName != null ? !comName.equals(that.comName) : that.comName != null) return false;
        if (comJobRequir != null ? !comJobRequir.equals(that.comJobRequir) : that.comJobRequir != null) return false;
        if (stuTel != null ? !stuTel.equals(that.stuTel) : that.stuTel != null) return false;
        if (stuEmail != null ? !stuEmail.equals(that.stuEmail) : that.stuEmail != null) return false;
        if (deliverResumeTime != null ? !deliverResumeTime.equals(that.deliverResumeTime) : that.deliverResumeTime != null)
            return false;
        return ResumeId != null ? ResumeId.equals(that.ResumeId) : that.ResumeId == null;
    }

    @Override
    public int hashCode() {
        int result = stuName != null ? stuName.hashCode() : 0;
        result = 31 * result + (stuGender != null ? stuGender.hashCode() : 0);
        result = 31 * result + (stuDegree != null ? stuDegree.hashCode() : 0);
        result = 31 * result + (stuAddrCity != null ? stuAddrCity.hashCode() : 0);
        result = 31 * result + (comJobName != null ? comJobName.hashCode() : 0);
        result = 31 * result + (comName != null ? comName.hashCode() : 0);
        result = 31 * result + (comJobRequir != null ? comJobRequir.hashCode() : 0);
        result = 31 * result + (stuTel != null ? stuTel.hashCode() : 0);
        result = 31 * result + (stuEmail != null ? stuEmail.hashCode() : 0);
        result = 31 * result + (deliverResumeTime != null ? deliverResumeTime.hashCode() : 0);
        result = 31 * result + (ResumeId != null ? ResumeId.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "ComGetResume{" +
                "stuName='" + stuName + '\'' +
                ", stuGender=" + stuGender +
                ", stuDegree='" + stuDegree + '\'' +
                ", stuAddrCity='" + stuAddrCity + '\'' +
                ", comJobName='" + comJobName + '\'' +
                ", comName='" + comName + '\'' +
                ", comJobRequir='" + comJobRequir + '\'' +
                ", stuTel='" + stuTel + '\'' +
                ", stuEmail='" + stuEmail + '\'' +
                ", deliverResumeTime=" + deliverResumeTime +
                ", ResumeId=" + ResumeId +
                '}';
    }
}
