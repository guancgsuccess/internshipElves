package com.internshipElves.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * student_login
 * @author 
 */
public class StudentLogin implements Serializable {
    /**
     * 学生登录id
     */
    private Integer stuLoginId;

    /**
     * 学生登录电话
     */
    private String stuLoginTel;

    /**
     * 学生登录邮箱
     */
    private String stuLoginEmail;

    /**
     * 密码
     */
    private String stuLoginPwd;

    /**
     * 登录时间
     */
    private Date stuLoginTime;

    /**
     * 上一次登录时间
     */
    private Date stuPreLoginTime;

    /**
     * 登录状态
     */
    private Integer stuLoginStatus;

    /**
     * 学生id
     */
    private Integer stuId;

    /**
     * 备用字段1
     */
    private String stuLoginPrepareA;

    /**
     * 备用字段2
     */
    private String stuLoginPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getStuLoginId() {
        return stuLoginId;
    }

    public void setStuLoginId(Integer stuLoginId) {
        this.stuLoginId = stuLoginId;
    }

    public String getStuLoginTel() {
        return stuLoginTel;
    }

    public void setStuLoginTel(String stuLoginTel) {
        this.stuLoginTel = stuLoginTel;
    }

    public String getStuLoginEmail() {
        return stuLoginEmail;
    }

    public void setStuLoginEmail(String stuLoginEmail) {
        this.stuLoginEmail = stuLoginEmail;
    }

    public String getStuLoginPwd() {
        return stuLoginPwd;
    }

    public void setStuLoginPwd(String stuLoginPwd) {
        this.stuLoginPwd = stuLoginPwd;
    }

    public Date getStuLoginTime() {
        return stuLoginTime;
    }

    public void setStuLoginTime(Date stuLoginTime) {
        this.stuLoginTime = stuLoginTime;
    }

    public Date getStuPreLoginTime() {
        return stuPreLoginTime;
    }

    public void setStuPreLoginTime(Date stuPreLoginTime) {
        this.stuPreLoginTime = stuPreLoginTime;
    }

    public Integer getStuLoginStatus() {
        return stuLoginStatus;
    }

    public void setStuLoginStatus(Integer stuLoginStatus) {
        this.stuLoginStatus = stuLoginStatus;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public String getStuLoginPrepareA() {
        return stuLoginPrepareA;
    }

    public void setStuLoginPrepareA(String stuLoginPrepareA) {
        this.stuLoginPrepareA = stuLoginPrepareA;
    }

    public String getStuLoginPrepareB() {
        return stuLoginPrepareB;
    }

    public void setStuLoginPrepareB(String stuLoginPrepareB) {
        this.stuLoginPrepareB = stuLoginPrepareB;
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
        StudentLogin other = (StudentLogin) that;
        return (this.getStuLoginId() == null ? other.getStuLoginId() == null : this.getStuLoginId().equals(other.getStuLoginId()))
            && (this.getStuLoginTel() == null ? other.getStuLoginTel() == null : this.getStuLoginTel().equals(other.getStuLoginTel()))
            && (this.getStuLoginEmail() == null ? other.getStuLoginEmail() == null : this.getStuLoginEmail().equals(other.getStuLoginEmail()))
            && (this.getStuLoginPwd() == null ? other.getStuLoginPwd() == null : this.getStuLoginPwd().equals(other.getStuLoginPwd()))
            && (this.getStuLoginTime() == null ? other.getStuLoginTime() == null : this.getStuLoginTime().equals(other.getStuLoginTime()))
            && (this.getStuPreLoginTime() == null ? other.getStuPreLoginTime() == null : this.getStuPreLoginTime().equals(other.getStuPreLoginTime()))
            && (this.getStuLoginStatus() == null ? other.getStuLoginStatus() == null : this.getStuLoginStatus().equals(other.getStuLoginStatus()))
            && (this.getStuId() == null ? other.getStuId() == null : this.getStuId().equals(other.getStuId()))
            && (this.getStuLoginPrepareA() == null ? other.getStuLoginPrepareA() == null : this.getStuLoginPrepareA().equals(other.getStuLoginPrepareA()))
            && (this.getStuLoginPrepareB() == null ? other.getStuLoginPrepareB() == null : this.getStuLoginPrepareB().equals(other.getStuLoginPrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getStuLoginId() == null) ? 0 : getStuLoginId().hashCode());
        result = prime * result + ((getStuLoginTel() == null) ? 0 : getStuLoginTel().hashCode());
        result = prime * result + ((getStuLoginEmail() == null) ? 0 : getStuLoginEmail().hashCode());
        result = prime * result + ((getStuLoginPwd() == null) ? 0 : getStuLoginPwd().hashCode());
        result = prime * result + ((getStuLoginTime() == null) ? 0 : getStuLoginTime().hashCode());
        result = prime * result + ((getStuPreLoginTime() == null) ? 0 : getStuPreLoginTime().hashCode());
        result = prime * result + ((getStuLoginStatus() == null) ? 0 : getStuLoginStatus().hashCode());
        result = prime * result + ((getStuId() == null) ? 0 : getStuId().hashCode());
        result = prime * result + ((getStuLoginPrepareA() == null) ? 0 : getStuLoginPrepareA().hashCode());
        result = prime * result + ((getStuLoginPrepareB() == null) ? 0 : getStuLoginPrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", stuLoginId=").append(stuLoginId);
        sb.append(", stuLoginTel=").append(stuLoginTel);
        sb.append(", stuLoginEmail=").append(stuLoginEmail);
        sb.append(", stuLoginPwd=").append(stuLoginPwd);
        sb.append(", stuLoginTime=").append(stuLoginTime);
        sb.append(", stuPreLoginTime=").append(stuPreLoginTime);
        sb.append(", stuLoginStatus=").append(stuLoginStatus);
        sb.append(", stuId=").append(stuId);
        sb.append(", stuLoginPrepareA=").append(stuLoginPrepareA);
        sb.append(", stuLoginPrepareB=").append(stuLoginPrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}