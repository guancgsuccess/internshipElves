package com.internshipElves.entity;

import java.io.Serializable;

/**
 * pro_exp
 * @author 
 */
public class ProExp implements Serializable {
    /**
     * 项目经验id
     */
    private Integer proExpId;

    /**
     * 项目名称
     */
    private String proExpName;

    /**
     * 项目描述
     */
    private String proExpDesc;

    /**
     * 个人职责
     */
    private String proExpDuty;

    /**
     * 简历id
     */
    private Integer resumeId;

    /**
     * 备用字段1
     */
    private String proExpA;

    /**
     * 备用字段2
     */
    private String proExpB;

    private static final long serialVersionUID = 1L;

    public Integer getProExpId() {
        return proExpId;
    }

    public void setProExpId(Integer proExpId) {
        this.proExpId = proExpId;
    }

    public String getProExpName() {
        return proExpName;
    }

    public void setProExpName(String proExpName) {
        this.proExpName = proExpName;
    }

    public String getProExpDesc() {
        return proExpDesc;
    }

    public void setProExpDesc(String proExpDesc) {
        this.proExpDesc = proExpDesc;
    }

    public String getProExpDuty() {
        return proExpDuty;
    }

    public void setProExpDuty(String proExpDuty) {
        this.proExpDuty = proExpDuty;
    }

    public Integer getResumeId() {
        return resumeId;
    }

    public void setResumeId(Integer resumeId) {
        this.resumeId = resumeId;
    }

    public String getProExpA() {
        return proExpA;
    }

    public void setProExpA(String proExpA) {
        this.proExpA = proExpA;
    }

    public String getProExpB() {
        return proExpB;
    }

    public void setProExpB(String proExpB) {
        this.proExpB = proExpB;
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
        ProExp other = (ProExp) that;
        return (this.getProExpId() == null ? other.getProExpId() == null : this.getProExpId().equals(other.getProExpId()))
            && (this.getProExpName() == null ? other.getProExpName() == null : this.getProExpName().equals(other.getProExpName()))
            && (this.getProExpDesc() == null ? other.getProExpDesc() == null : this.getProExpDesc().equals(other.getProExpDesc()))
            && (this.getProExpDuty() == null ? other.getProExpDuty() == null : this.getProExpDuty().equals(other.getProExpDuty()))
            && (this.getResumeId() == null ? other.getResumeId() == null : this.getResumeId().equals(other.getResumeId()))
            && (this.getProExpA() == null ? other.getProExpA() == null : this.getProExpA().equals(other.getProExpA()))
            && (this.getProExpB() == null ? other.getProExpB() == null : this.getProExpB().equals(other.getProExpB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getProExpId() == null) ? 0 : getProExpId().hashCode());
        result = prime * result + ((getProExpName() == null) ? 0 : getProExpName().hashCode());
        result = prime * result + ((getProExpDesc() == null) ? 0 : getProExpDesc().hashCode());
        result = prime * result + ((getProExpDuty() == null) ? 0 : getProExpDuty().hashCode());
        result = prime * result + ((getResumeId() == null) ? 0 : getResumeId().hashCode());
        result = prime * result + ((getProExpA() == null) ? 0 : getProExpA().hashCode());
        result = prime * result + ((getProExpB() == null) ? 0 : getProExpB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", proExpId=").append(proExpId);
        sb.append(", proExpName=").append(proExpName);
        sb.append(", proExpDesc=").append(proExpDesc);
        sb.append(", proExpDuty=").append(proExpDuty);
        sb.append(", resumeId=").append(resumeId);
        sb.append(", proExpA=").append(proExpA);
        sb.append(", proExpB=").append(proExpB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}