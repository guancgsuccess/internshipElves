package com.internshipElves.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * com_check_resume
 * @author 
 */
public class ComCheckResume implements Serializable {
    /**
     * 企业查看记录id
     */
    private Integer comCheckResumeId;

    /**
     * 简历id
     */
    private Integer resumeId;

    /**
     * 查看状态
     */
    private Integer comCheckResumeStatus;

    /**
     * 查看时间
     */
    private Date comCheckResumeTime;

    /**
     * 备用字段1
     */
    private String comCheckResumePrepareA;

    /**
     * 备用字段2
     */
    private String comCheckResumePrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getComCheckResumeId() {
        return comCheckResumeId;
    }

    public void setComCheckResumeId(Integer comCheckResumeId) {
        this.comCheckResumeId = comCheckResumeId;
    }

    public Integer getResumeId() {
        return resumeId;
    }

    public void setResumeId(Integer resumeId) {
        this.resumeId = resumeId;
    }

    public Integer getComCheckResumeStatus() {
        return comCheckResumeStatus;
    }

    public void setComCheckResumeStatus(Integer comCheckResumeStatus) {
        this.comCheckResumeStatus = comCheckResumeStatus;
    }

    public Date getComCheckResumeTime() {
        return comCheckResumeTime;
    }

    public void setComCheckResumeTime(Date comCheckResumeTime) {
        this.comCheckResumeTime = comCheckResumeTime;
    }

    public String getComCheckResumePrepareA() {
        return comCheckResumePrepareA;
    }

    public void setComCheckResumePrepareA(String comCheckResumePrepareA) {
        this.comCheckResumePrepareA = comCheckResumePrepareA;
    }

    public String getComCheckResumePrepareB() {
        return comCheckResumePrepareB;
    }

    public void setComCheckResumePrepareB(String comCheckResumePrepareB) {
        this.comCheckResumePrepareB = comCheckResumePrepareB;
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
        ComCheckResume other = (ComCheckResume) that;
        return (this.getComCheckResumeId() == null ? other.getComCheckResumeId() == null : this.getComCheckResumeId().equals(other.getComCheckResumeId()))
            && (this.getResumeId() == null ? other.getResumeId() == null : this.getResumeId().equals(other.getResumeId()))
            && (this.getComCheckResumeStatus() == null ? other.getComCheckResumeStatus() == null : this.getComCheckResumeStatus().equals(other.getComCheckResumeStatus()))
            && (this.getComCheckResumeTime() == null ? other.getComCheckResumeTime() == null : this.getComCheckResumeTime().equals(other.getComCheckResumeTime()))
            && (this.getComCheckResumePrepareA() == null ? other.getComCheckResumePrepareA() == null : this.getComCheckResumePrepareA().equals(other.getComCheckResumePrepareA()))
            && (this.getComCheckResumePrepareB() == null ? other.getComCheckResumePrepareB() == null : this.getComCheckResumePrepareB().equals(other.getComCheckResumePrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getComCheckResumeId() == null) ? 0 : getComCheckResumeId().hashCode());
        result = prime * result + ((getResumeId() == null) ? 0 : getResumeId().hashCode());
        result = prime * result + ((getComCheckResumeStatus() == null) ? 0 : getComCheckResumeStatus().hashCode());
        result = prime * result + ((getComCheckResumeTime() == null) ? 0 : getComCheckResumeTime().hashCode());
        result = prime * result + ((getComCheckResumePrepareA() == null) ? 0 : getComCheckResumePrepareA().hashCode());
        result = prime * result + ((getComCheckResumePrepareB() == null) ? 0 : getComCheckResumePrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", comCheckResumeId=").append(comCheckResumeId);
        sb.append(", resumeId=").append(resumeId);
        sb.append(", comCheckResumeStatus=").append(comCheckResumeStatus);
        sb.append(", comCheckResumeTime=").append(comCheckResumeTime);
        sb.append(", comCheckResumePrepareA=").append(comCheckResumePrepareA);
        sb.append(", comCheckResumePrepareB=").append(comCheckResumePrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}