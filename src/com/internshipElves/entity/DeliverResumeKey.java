package com.internshipElves.entity;

import java.io.Serializable;

/**
 * deliver_resume
 * @author 
 */
public class DeliverResumeKey implements Serializable {
    /**
     * 投递简历id
     */
    private Integer deliverResumeId;

    /**
     * 学生id
     */
    private Integer stuId;

    private static final long serialVersionUID = 1L;

    public Integer getDeliverResumeId() {
        return deliverResumeId;
    }

    public void setDeliverResumeId(Integer deliverResumeId) {
        this.deliverResumeId = deliverResumeId;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
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
        DeliverResumeKey other = (DeliverResumeKey) that;
        return (this.getDeliverResumeId() == null ? other.getDeliverResumeId() == null : this.getDeliverResumeId().equals(other.getDeliverResumeId()))
            && (this.getStuId() == null ? other.getStuId() == null : this.getStuId().equals(other.getStuId()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getDeliverResumeId() == null) ? 0 : getDeliverResumeId().hashCode());
        result = prime * result + ((getStuId() == null) ? 0 : getStuId().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", deliverResumeId=").append(deliverResumeId);
        sb.append(", stuId=").append(stuId);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}