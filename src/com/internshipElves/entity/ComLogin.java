package com.internshipElves.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * com_login
 * @author 
 */
public class ComLogin implements Serializable {
    /**
     * 企业登录id
     */
    private Integer comLoginId;

    /**
     * 企业登录邮箱
     */
    private String comLoginEmail;

    /**
     * 企业密码
     */
    private String comLoginPwd;

    /**
     * 企业登录时间
     */
    private Date comLoginTime;

    /**
     * 上一次登录时间
     */
    private Date comPreLoginTime;

    /**
     * 登录状态
     */
    private Integer comLoginStatus;

    /**
     * 企业用户id
     */
    private Integer comId;

    /**
     * 备用字段1
     */
    private String comLoginPrepareA;

    /**
     * 备用字段2
     */
    private String comLoginPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getComLoginId() {
        return comLoginId;
    }

    public void setComLoginId(Integer comLoginId) {
        this.comLoginId = comLoginId;
    }

    public String getComLoginEmail() {
        return comLoginEmail;
    }

    public void setComLoginEmail(String comLoginEmail) {
        this.comLoginEmail = comLoginEmail;
    }

    public String getComLoginPwd() {
        return comLoginPwd;
    }

    public void setComLoginPwd(String comLoginPwd) {
        this.comLoginPwd = comLoginPwd;
    }

    public Date getComLoginTime() {
        return comLoginTime;
    }

    public void setComLoginTime(Date comLoginTime) {
        this.comLoginTime = comLoginTime;
    }

    public Date getComPreLoginTime() {
        return comPreLoginTime;
    }

    public void setComPreLoginTime(Date comPreLoginTime) {
        this.comPreLoginTime = comPreLoginTime;
    }

    public Integer getComLoginStatus() {
        return comLoginStatus;
    }

    public void setComLoginStatus(Integer comLoginStatus) {
        this.comLoginStatus = comLoginStatus;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public String getComLoginPrepareA() {
        return comLoginPrepareA;
    }

    public void setComLoginPrepareA(String comLoginPrepareA) {
        this.comLoginPrepareA = comLoginPrepareA;
    }

    public String getComLoginPrepareB() {
        return comLoginPrepareB;
    }

    public void setComLoginPrepareB(String comLoginPrepareB) {
        this.comLoginPrepareB = comLoginPrepareB;
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
        ComLogin other = (ComLogin) that;
        return (this.getComLoginId() == null ? other.getComLoginId() == null : this.getComLoginId().equals(other.getComLoginId()))
            && (this.getComLoginEmail() == null ? other.getComLoginEmail() == null : this.getComLoginEmail().equals(other.getComLoginEmail()))
            && (this.getComLoginPwd() == null ? other.getComLoginPwd() == null : this.getComLoginPwd().equals(other.getComLoginPwd()))
            && (this.getComLoginTime() == null ? other.getComLoginTime() == null : this.getComLoginTime().equals(other.getComLoginTime()))
            && (this.getComPreLoginTime() == null ? other.getComPreLoginTime() == null : this.getComPreLoginTime().equals(other.getComPreLoginTime()))
            && (this.getComLoginStatus() == null ? other.getComLoginStatus() == null : this.getComLoginStatus().equals(other.getComLoginStatus()))
            && (this.getComId() == null ? other.getComId() == null : this.getComId().equals(other.getComId()))
            && (this.getComLoginPrepareA() == null ? other.getComLoginPrepareA() == null : this.getComLoginPrepareA().equals(other.getComLoginPrepareA()))
            && (this.getComLoginPrepareB() == null ? other.getComLoginPrepareB() == null : this.getComLoginPrepareB().equals(other.getComLoginPrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getComLoginId() == null) ? 0 : getComLoginId().hashCode());
        result = prime * result + ((getComLoginEmail() == null) ? 0 : getComLoginEmail().hashCode());
        result = prime * result + ((getComLoginPwd() == null) ? 0 : getComLoginPwd().hashCode());
        result = prime * result + ((getComLoginTime() == null) ? 0 : getComLoginTime().hashCode());
        result = prime * result + ((getComPreLoginTime() == null) ? 0 : getComPreLoginTime().hashCode());
        result = prime * result + ((getComLoginStatus() == null) ? 0 : getComLoginStatus().hashCode());
        result = prime * result + ((getComId() == null) ? 0 : getComId().hashCode());
        result = prime * result + ((getComLoginPrepareA() == null) ? 0 : getComLoginPrepareA().hashCode());
        result = prime * result + ((getComLoginPrepareB() == null) ? 0 : getComLoginPrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", comLoginId=").append(comLoginId);
        sb.append(", comLoginEmail=").append(comLoginEmail);
        sb.append(", comLoginPwd=").append(comLoginPwd);
        sb.append(", comLoginTime=").append(comLoginTime);
        sb.append(", comPreLoginTime=").append(comPreLoginTime);
        sb.append(", comLoginStatus=").append(comLoginStatus);
        sb.append(", comId=").append(comId);
        sb.append(", comLoginPrepareA=").append(comLoginPrepareA);
        sb.append(", comLoginPrepareB=").append(comLoginPrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}