package com.internshipElves.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * login
 * @author 
 */
public class Login implements Serializable {
    /**
     * 登录id
     */
    private Integer loginId;

    /**
     * 登录电话
     */
    private String loginTel;

    /**
     * 登录邮箱
     */
    private String loginEmail;

    /**
     * 密码
     */
    private String loginPwd;

    /**
     * 登录时间
     */
    private Date loginTime;

    /**
     * 上一次登录时间
     */
    private Date preLoginTime;

    /**
     * 登录状态
     */
    private Integer loginStatus;

    /**
     * 用户id
     */
    private Integer userId;

    /**
     * 备用字段1
     */
    private String loginPrepareA;

    /**
     * 备用字段2
     */
    private String loginPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getLoginId() {
        return loginId;
    }

    public void setLoginId(Integer loginId) {
        this.loginId = loginId;
    }

    public String getLoginTel() {
        return loginTel;
    }

    public void setLoginTel(String loginTel) {
        this.loginTel = loginTel;
    }

    public String getLoginEmail() {
        return loginEmail;
    }

    public void setLoginEmail(String loginEmail) {
        this.loginEmail = loginEmail;
    }

    public String getLoginPwd() {
        return loginPwd;
    }

    public void setLoginPwd(String loginPwd) {
        this.loginPwd = loginPwd;
    }

    public Date getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Date loginTime) {
        this.loginTime = loginTime;
    }

    public Date getPreLoginTime() {
        return preLoginTime;
    }

    public void setPreLoginTime(Date preLoginTime) {
        this.preLoginTime = preLoginTime;
    }

    public Integer getLoginStatus() {
        return loginStatus;
    }

    public void setLoginStatus(Integer loginStatus) {
        this.loginStatus = loginStatus;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getLoginPrepareA() {
        return loginPrepareA;
    }

    public void setLoginPrepareA(String loginPrepareA) {
        this.loginPrepareA = loginPrepareA;
    }

    public String getLoginPrepareB() {
        return loginPrepareB;
    }

    public void setLoginPrepareB(String loginPrepareB) {
        this.loginPrepareB = loginPrepareB;
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
        Login other = (Login) that;
        return (this.getLoginId() == null ? other.getLoginId() == null : this.getLoginId().equals(other.getLoginId()))
            && (this.getLoginTel() == null ? other.getLoginTel() == null : this.getLoginTel().equals(other.getLoginTel()))
            && (this.getLoginEmail() == null ? other.getLoginEmail() == null : this.getLoginEmail().equals(other.getLoginEmail()))
            && (this.getLoginPwd() == null ? other.getLoginPwd() == null : this.getLoginPwd().equals(other.getLoginPwd()))
            && (this.getLoginTime() == null ? other.getLoginTime() == null : this.getLoginTime().equals(other.getLoginTime()))
            && (this.getPreLoginTime() == null ? other.getPreLoginTime() == null : this.getPreLoginTime().equals(other.getPreLoginTime()))
            && (this.getLoginStatus() == null ? other.getLoginStatus() == null : this.getLoginStatus().equals(other.getLoginStatus()))
            && (this.getUserId() == null ? other.getUserId() == null : this.getUserId().equals(other.getUserId()))
            && (this.getLoginPrepareA() == null ? other.getLoginPrepareA() == null : this.getLoginPrepareA().equals(other.getLoginPrepareA()))
            && (this.getLoginPrepareB() == null ? other.getLoginPrepareB() == null : this.getLoginPrepareB().equals(other.getLoginPrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getLoginId() == null) ? 0 : getLoginId().hashCode());
        result = prime * result + ((getLoginTel() == null) ? 0 : getLoginTel().hashCode());
        result = prime * result + ((getLoginEmail() == null) ? 0 : getLoginEmail().hashCode());
        result = prime * result + ((getLoginPwd() == null) ? 0 : getLoginPwd().hashCode());
        result = prime * result + ((getLoginTime() == null) ? 0 : getLoginTime().hashCode());
        result = prime * result + ((getPreLoginTime() == null) ? 0 : getPreLoginTime().hashCode());
        result = prime * result + ((getLoginStatus() == null) ? 0 : getLoginStatus().hashCode());
        result = prime * result + ((getUserId() == null) ? 0 : getUserId().hashCode());
        result = prime * result + ((getLoginPrepareA() == null) ? 0 : getLoginPrepareA().hashCode());
        result = prime * result + ((getLoginPrepareB() == null) ? 0 : getLoginPrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", loginId=").append(loginId);
        sb.append(", loginTel=").append(loginTel);
        sb.append(", loginEmail=").append(loginEmail);
        sb.append(", loginPwd=").append(loginPwd);
        sb.append(", loginTime=").append(loginTime);
        sb.append(", preLoginTime=").append(preLoginTime);
        sb.append(", loginStatus=").append(loginStatus);
        sb.append(", userId=").append(userId);
        sb.append(", loginPrepareA=").append(loginPrepareA);
        sb.append(", loginPrepareB=").append(loginPrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}