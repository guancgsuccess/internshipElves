package com.internshipElves.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * deliver_resume
 * @author 
 */
public class DeliverResume extends DeliverResumeKey implements Serializable {
    /**
     * 企业id
     */
    private Integer comId;

    /**
     * 简历id
     */
    private Integer resumeId;

    /**
     * 投递简历时间
     */
    private Date deliverResumeTime;

    /**
     * 投递简历时间
     */
    private Integer deliverResumeStatus;

    /**
     * 备用字段1
     */
    private String deliverPrepareA;

    /**
     * 备用字段2
     */
    private String deliverPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public Integer getResumeId() {
        return resumeId;
    }

    public void setResumeId(Integer resumeId) {
        this.resumeId = resumeId;
    }

    public Date getDeliverResumeTime() {
        return deliverResumeTime;
    }

    public void setDeliverResumeTime(Date deliverResumeTime) {
        this.deliverResumeTime = deliverResumeTime;
    }

    public Integer getDeliverResumeStatus() {
        return deliverResumeStatus;
    }

    public void setDeliverResumeStatus(Integer deliverResumeStatus) {
        this.deliverResumeStatus = deliverResumeStatus;
    }

    public String getDeliverPrepareA() {
        return deliverPrepareA;
    }

    public void setDeliverPrepareA(String deliverPrepareA) {
        this.deliverPrepareA = deliverPrepareA;
    }

    public String getDeliverPrepareB() {
        return deliverPrepareB;
    }

    public void setDeliverPrepareB(String deliverPrepareB) {
        this.deliverPrepareB = deliverPrepareB;
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
        DeliverResume other = (DeliverResume) that;
        return (this.getDeliverResumeId() == null ? other.getDeliverResumeId() == null : this.getDeliverResumeId().equals(other.getDeliverResumeId()))
            && (this.getStuId() == null ? other.getStuId() == null : this.getStuId().equals(other.getStuId()))
            && (this.getComId() == null ? other.getComId() == null : this.getComId().equals(other.getComId()))
            && (this.getResumeId() == null ? other.getResumeId() == null : this.getResumeId().equals(other.getResumeId()))
            && (this.getDeliverResumeTime() == null ? other.getDeliverResumeTime() == null : this.getDeliverResumeTime().equals(other.getDeliverResumeTime()))
            && (this.getDeliverResumeStatus() == null ? other.getDeliverResumeStatus() == null : this.getDeliverResumeStatus().equals(other.getDeliverResumeStatus()))
            && (this.getDeliverPrepareA() == null ? other.getDeliverPrepareA() == null : this.getDeliverPrepareA().equals(other.getDeliverPrepareA()))
            && (this.getDeliverPrepareB() == null ? other.getDeliverPrepareB() == null : this.getDeliverPrepareB().equals(other.getDeliverPrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getDeliverResumeId() == null) ? 0 : getDeliverResumeId().hashCode());
        result = prime * result + ((getStuId() == null) ? 0 : getStuId().hashCode());
        result = prime * result + ((getComId() == null) ? 0 : getComId().hashCode());
        result = prime * result + ((getResumeId() == null) ? 0 : getResumeId().hashCode());
        result = prime * result + ((getDeliverResumeTime() == null) ? 0 : getDeliverResumeTime().hashCode());
        result = prime * result + ((getDeliverResumeStatus() == null) ? 0 : getDeliverResumeStatus().hashCode());
        result = prime * result + ((getDeliverPrepareA() == null) ? 0 : getDeliverPrepareA().hashCode());
        result = prime * result + ((getDeliverPrepareB() == null) ? 0 : getDeliverPrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", comId=").append(comId);
        sb.append(", resumeId=").append(resumeId);
        sb.append(", deliverResumeTime=").append(deliverResumeTime);
        sb.append(", deliverResumeStatus=").append(deliverResumeStatus);
        sb.append(", deliverPrepareA=").append(deliverPrepareA);
        sb.append(", deliverPrepareB=").append(deliverPrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}