package com.internshipElves.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * student
 * @author 
 */
public class Student implements Serializable {
    /**
     * 学生id
     */
    private Integer stuId;

    /**
     * 学生姓名
     */
    private String stuName;

    /**
     * 密码
     */
    private String stuPwd;

    /**
     * 电话号码
     */
    private String stuTel;

    /**
     * 邮箱
     */
    private String stuEmail;

    /**
     * 性别
     */
    private Integer stuGender;

    /**
     * 出生年月
     */
    private Date stuBirth;

    /**
     * 户籍:省
     */
    private String stuHometownProvince;

    /**
     * 户籍:市
     */
    private String stuHometownCity;

    /**
     * 现居地:省

     */
    private String stuAddrProvince;

    /**
     * 现居地:市
     */
    private String stuAddrCity;

    /**
     * 现居地:县
     */
    private String stuAddrCounty;

    /**
     * 学校
     */
    private String stuSchool;

    /**
     * 入学时间
     */
    private Date stuReadDate;

    /**
     * 专业
     */
    private String stuMajor;

    /**
     * 学历学位
     */
    private String stuDegree;

    /**
     * 注册时间
     */
    private Date stuCreateTime;

    /**
     * 修改个人信息时间
     */
    private Date stuUpdateTime;

    /**
     * 头像
     */
    private String stuProfile;

    /**
     * 证件照
     */
    private String stuPhoto;

    /**
     * 学生毕业时间(离校时间）
     */
    private Date stuGrad;

    /**
     * 是否统招
     */
    private Integer stuGen;

    /**
     * 学生表的状态
     */
    private Integer stuStatus;

    /**
     * 备用字段1
     */
    private String stuPrepareA;

    /**
     * 备用字段2
     */
    private String stuPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuPwd() {
        return stuPwd;
    }

    public void setStuPwd(String stuPwd) {
        this.stuPwd = stuPwd;
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

    public Integer getStuGender() {
        return stuGender;
    }

    public void setStuGender(Integer stuGender) {
        this.stuGender = stuGender;
    }

    public Date getStuBirth() {
        return stuBirth;
    }

    public void setStuBirth(Date stuBirth) {
        this.stuBirth = stuBirth;
    }

    public String getStuHometownProvince() {
        return stuHometownProvince;
    }

    public void setStuHometownProvince(String stuHometownProvince) {
        this.stuHometownProvince = stuHometownProvince;
    }

    public String getStuHometownCity() {
        return stuHometownCity;
    }

    public void setStuHometownCity(String stuHometownCity) {
        this.stuHometownCity = stuHometownCity;
    }

    public String getStuAddrProvince() {
        return stuAddrProvince;
    }

    public void setStuAddrProvince(String stuAddrProvince) {
        this.stuAddrProvince = stuAddrProvince;
    }

    public String getStuAddrCity() {
        return stuAddrCity;
    }

    public void setStuAddrCity(String stuAddrCity) {
        this.stuAddrCity = stuAddrCity;
    }

    public String getStuAddrCounty() {
        return stuAddrCounty;
    }

    public void setStuAddrCounty(String stuAddrCounty) {
        this.stuAddrCounty = stuAddrCounty;
    }

    public String getStuSchool() {
        return stuSchool;
    }

    public void setStuSchool(String stuSchool) {
        this.stuSchool = stuSchool;
    }

    public Date getStuReadDate() {
        return stuReadDate;
    }

    public void setStuReadDate(Date stuReadDate) {
        this.stuReadDate = stuReadDate;
    }

    public String getStuMajor() {
        return stuMajor;
    }

    public void setStuMajor(String stuMajor) {
        this.stuMajor = stuMajor;
    }

    public String getStuDegree() {
        return stuDegree;
    }

    public void setStuDegree(String stuDegree) {
        this.stuDegree = stuDegree;
    }

    public Date getStuCreateTime() {
        return stuCreateTime;
    }

    public void setStuCreateTime(Date stuCreateTime) {
        this.stuCreateTime = stuCreateTime;
    }

    public Date getStuUpdateTime() {
        return stuUpdateTime;
    }

    public void setStuUpdateTime(Date stuUpdateTime) {
        this.stuUpdateTime = stuUpdateTime;
    }

    public String getStuProfile() {
        return stuProfile;
    }

    public void setStuProfile(String stuProfile) {
        this.stuProfile = stuProfile;
    }

    public String getStuPhoto() {
        return stuPhoto;
    }

    public void setStuPhoto(String stuPhoto) {
        this.stuPhoto = stuPhoto;
    }

    public Date getStuGrad() {
        return stuGrad;
    }

    public void setStuGrad(Date stuGrad) {
        this.stuGrad = stuGrad;
    }

    public Integer getStuGen() {
        return stuGen;
    }

    public void setStuGen(Integer stuGen) {
        this.stuGen = stuGen;
    }

    public Integer getStuStatus() {
        return stuStatus;
    }

    public void setStuStatus(Integer stuStatus) {
        this.stuStatus = stuStatus;
    }

    public String getStuPrepareA() {
        return stuPrepareA;
    }

    public void setStuPrepareA(String stuPrepareA) {
        this.stuPrepareA = stuPrepareA;
    }

    public String getStuPrepareB() {
        return stuPrepareB;
    }

    public void setStuPrepareB(String stuPrepareB) {
        this.stuPrepareB = stuPrepareB;
    }

    @Override
    public boolean equals(Object that) {
        if (this == that) {
            return true;
        }
        if (that == null) {
            return false;
        }
        if (getClass() != that.getClass()) {
            return false;
        }
        Student other = (Student) that;
        return (this.getStuId() == null ? other.getStuId() == null : this.getStuId().equals(other.getStuId()))
            && (this.getStuName() == null ? other.getStuName() == null : this.getStuName().equals(other.getStuName()))
            && (this.getStuPwd() == null ? other.getStuPwd() == null : this.getStuPwd().equals(other.getStuPwd()))
            && (this.getStuTel() == null ? other.getStuTel() == null : this.getStuTel().equals(other.getStuTel()))
            && (this.getStuEmail() == null ? other.getStuEmail() == null : this.getStuEmail().equals(other.getStuEmail()))
            && (this.getStuGender() == null ? other.getStuGender() == null : this.getStuGender().equals(other.getStuGender()))
            && (this.getStuBirth() == null ? other.getStuBirth() == null : this.getStuBirth().equals(other.getStuBirth()))
            && (this.getStuHometownProvince() == null ? other.getStuHometownProvince() == null : this.getStuHometownProvince().equals(other.getStuHometownProvince()))
            && (this.getStuHometownCity() == null ? other.getStuHometownCity() == null : this.getStuHometownCity().equals(other.getStuHometownCity()))
            && (this.getStuAddrProvince() == null ? other.getStuAddrProvince() == null : this.getStuAddrProvince().equals(other.getStuAddrProvince()))
            && (this.getStuAddrCity() == null ? other.getStuAddrCity() == null : this.getStuAddrCity().equals(other.getStuAddrCity()))
            && (this.getStuAddrCounty() == null ? other.getStuAddrCounty() == null : this.getStuAddrCounty().equals(other.getStuAddrCounty()))
            && (this.getStuSchool() == null ? other.getStuSchool() == null : this.getStuSchool().equals(other.getStuSchool()))
            && (this.getStuReadDate() == null ? other.getStuReadDate() == null : this.getStuReadDate().equals(other.getStuReadDate()))
            && (this.getStuMajor() == null ? other.getStuMajor() == null : this.getStuMajor().equals(other.getStuMajor()))
            && (this.getStuDegree() == null ? other.getStuDegree() == null : this.getStuDegree().equals(other.getStuDegree()))
            && (this.getStuCreateTime() == null ? other.getStuCreateTime() == null : this.getStuCreateTime().equals(other.getStuCreateTime()))
            && (this.getStuUpdateTime() == null ? other.getStuUpdateTime() == null : this.getStuUpdateTime().equals(other.getStuUpdateTime()))
            && (this.getStuProfile() == null ? other.getStuProfile() == null : this.getStuProfile().equals(other.getStuProfile()))
            && (this.getStuPhoto() == null ? other.getStuPhoto() == null : this.getStuPhoto().equals(other.getStuPhoto()))
            && (this.getStuGrad() == null ? other.getStuGrad() == null : this.getStuGrad().equals(other.getStuGrad()))
            && (this.getStuGen() == null ? other.getStuGen() == null : this.getStuGen().equals(other.getStuGen()))
            && (this.getStuStatus() == null ? other.getStuStatus() == null : this.getStuStatus().equals(other.getStuStatus()))
            && (this.getStuPrepareA() == null ? other.getStuPrepareA() == null : this.getStuPrepareA().equals(other.getStuPrepareA()))
            && (this.getStuPrepareB() == null ? other.getStuPrepareB() == null : this.getStuPrepareB().equals(other.getStuPrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getStuId() == null) ? 0 : getStuId().hashCode());
        result = prime * result + ((getStuName() == null) ? 0 : getStuName().hashCode());
        result = prime * result + ((getStuPwd() == null) ? 0 : getStuPwd().hashCode());
        result = prime * result + ((getStuTel() == null) ? 0 : getStuTel().hashCode());
        result = prime * result + ((getStuEmail() == null) ? 0 : getStuEmail().hashCode());
        result = prime * result + ((getStuGender() == null) ? 0 : getStuGender().hashCode());
        result = prime * result + ((getStuBirth() == null) ? 0 : getStuBirth().hashCode());
        result = prime * result + ((getStuHometownProvince() == null) ? 0 : getStuHometownProvince().hashCode());
        result = prime * result + ((getStuHometownCity() == null) ? 0 : getStuHometownCity().hashCode());
        result = prime * result + ((getStuAddrProvince() == null) ? 0 : getStuAddrProvince().hashCode());
        result = prime * result + ((getStuAddrCity() == null) ? 0 : getStuAddrCity().hashCode());
        result = prime * result + ((getStuAddrCounty() == null) ? 0 : getStuAddrCounty().hashCode());
        result = prime * result + ((getStuSchool() == null) ? 0 : getStuSchool().hashCode());
        result = prime * result + ((getStuReadDate() == null) ? 0 : getStuReadDate().hashCode());
        result = prime * result + ((getStuMajor() == null) ? 0 : getStuMajor().hashCode());
        result = prime * result + ((getStuDegree() == null) ? 0 : getStuDegree().hashCode());
        result = prime * result + ((getStuCreateTime() == null) ? 0 : getStuCreateTime().hashCode());
        result = prime * result + ((getStuUpdateTime() == null) ? 0 : getStuUpdateTime().hashCode());
        result = prime * result + ((getStuProfile() == null) ? 0 : getStuProfile().hashCode());
        result = prime * result + ((getStuPhoto() == null) ? 0 : getStuPhoto().hashCode());
        result = prime * result + ((getStuGrad() == null) ? 0 : getStuGrad().hashCode());
        result = prime * result + ((getStuGen() == null) ? 0 : getStuGen().hashCode());
        result = prime * result + ((getStuStatus() == null) ? 0 : getStuStatus().hashCode());
        result = prime * result + ((getStuPrepareA() == null) ? 0 : getStuPrepareA().hashCode());
        result = prime * result + ((getStuPrepareB() == null) ? 0 : getStuPrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", stuId=").append(stuId);
        sb.append(", stuName=").append(stuName);
        sb.append(", stuPwd=").append(stuPwd);
        sb.append(", stuTel=").append(stuTel);
        sb.append(", stuEmail=").append(stuEmail);
        sb.append(", stuGender=").append(stuGender);
        sb.append(", stuBirth=").append(stuBirth);
        sb.append(", stuHometownProvince=").append(stuHometownProvince);
        sb.append(", stuHometownCity=").append(stuHometownCity);
        sb.append(", stuAddrProvince=").append(stuAddrProvince);
        sb.append(", stuAddrCity=").append(stuAddrCity);
        sb.append(", stuAddrCounty=").append(stuAddrCounty);
        sb.append(", stuSchool=").append(stuSchool);
        sb.append(", stuReadDate=").append(stuReadDate);
        sb.append(", stuMajor=").append(stuMajor);
        sb.append(", stuDegree=").append(stuDegree);
        sb.append(", stuCreateTime=").append(stuCreateTime);
        sb.append(", stuUpdateTime=").append(stuUpdateTime);
        sb.append(", stuProfile=").append(stuProfile);
        sb.append(", stuPhoto=").append(stuPhoto);
        sb.append(", stuGrad=").append(stuGrad);
        sb.append(", stuGen=").append(stuGen);
        sb.append(", stuStatus=").append(stuStatus);
        sb.append(", stuPrepareA=").append(stuPrepareA);
        sb.append(", stuPrepareB=").append(stuPrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}