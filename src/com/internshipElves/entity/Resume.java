package com.internshipElves.entity;

import java.io.Serializable;

/**
 * resume
 * @author 
 */
public class Resume implements Serializable {
    /**
     * 简历id
     */
    private Integer resumeId;

    /**
     * 期望工作性质
     */
    private String resumeStuJobNature;

    /**
     * 期望工作地点
     */
    private String resumeStuWorkAddr;

    /**
     * 期望从事行业
     */
    private String resumeStuIndustry;

    /**
     * 期望从事职业
     */
    private String resumeStuOccupation;

    /**
     * 备用字段1
     */
    private String resumePrepareA;

    /**
     * 备用字段2
     */
    private String resumePrepareB;

    /**
     * 学生id
     */
    private Integer stuId;

    /**
     * 期望最低月薪
     */
    private Integer resumeStuSalaryLow;

    /**
     * 期望最高月薪
     */
    private Integer resumeStuSalaryHigh;

    /**
     * 求职状态
     */
    private Integer resumeStuJobStatus;

    private static final long serialVersionUID = 1L;

    public Integer getResumeId() {
        return resumeId;
    }

    public void setResumeId(Integer resumeId) {
        this.resumeId = resumeId;
    }

    public String getResumeStuJobNature() {
        return resumeStuJobNature;
    }

    public void setResumeStuJobNature(String resumeStuJobNature) {
        this.resumeStuJobNature = resumeStuJobNature;
    }

    public String getResumeStuWorkAddr() {
        return resumeStuWorkAddr;
    }

    public void setResumeStuWorkAddr(String resumeStuWorkAddr) {
        this.resumeStuWorkAddr = resumeStuWorkAddr;
    }

    public String getResumeStuIndustry() {
        return resumeStuIndustry;
    }

    public void setResumeStuIndustry(String resumeStuIndustry) {
        this.resumeStuIndustry = resumeStuIndustry;
    }

    public String getResumeStuOccupation() {
        return resumeStuOccupation;
    }

    public void setResumeStuOccupation(String resumeStuOccupation) {
        this.resumeStuOccupation = resumeStuOccupation;
    }

    public String getResumePrepareA() {
        return resumePrepareA;
    }

    public void setResumePrepareA(String resumePrepareA) {
        this.resumePrepareA = resumePrepareA;
    }

    public String getResumePrepareB() {
        return resumePrepareB;
    }

    public void setResumePrepareB(String resumePrepareB) {
        this.resumePrepareB = resumePrepareB;
    }

    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    public Integer getResumeStuSalaryLow() {
        return resumeStuSalaryLow;
    }

    public void setResumeStuSalaryLow(Integer resumeStuSalaryLow) {
        this.resumeStuSalaryLow = resumeStuSalaryLow;
    }

    public Integer getResumeStuSalaryHigh() {
        return resumeStuSalaryHigh;
    }

    public void setResumeStuSalaryHigh(Integer resumeStuSalaryHigh) {
        this.resumeStuSalaryHigh = resumeStuSalaryHigh;
    }

    public Integer getResumeStuJobStatus() {
        return resumeStuJobStatus;
    }

    public void setResumeStuJobStatus(Integer resumeStuJobStatus) {
        this.resumeStuJobStatus = resumeStuJobStatus;
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
        Resume other = (Resume) that;
        return (this.getResumeId() == null ? other.getResumeId() == null : this.getResumeId().equals(other.getResumeId()))
            && (this.getResumeStuJobNature() == null ? other.getResumeStuJobNature() == null : this.getResumeStuJobNature().equals(other.getResumeStuJobNature()))
            && (this.getResumeStuWorkAddr() == null ? other.getResumeStuWorkAddr() == null : this.getResumeStuWorkAddr().equals(other.getResumeStuWorkAddr()))
            && (this.getResumeStuIndustry() == null ? other.getResumeStuIndustry() == null : this.getResumeStuIndustry().equals(other.getResumeStuIndustry()))
            && (this.getResumeStuOccupation() == null ? other.getResumeStuOccupation() == null : this.getResumeStuOccupation().equals(other.getResumeStuOccupation()))
            && (this.getResumePrepareA() == null ? other.getResumePrepareA() == null : this.getResumePrepareA().equals(other.getResumePrepareA()))
            && (this.getResumePrepareB() == null ? other.getResumePrepareB() == null : this.getResumePrepareB().equals(other.getResumePrepareB()))
            && (this.getStuId() == null ? other.getStuId() == null : this.getStuId().equals(other.getStuId()))
            && (this.getResumeStuSalaryLow() == null ? other.getResumeStuSalaryLow() == null : this.getResumeStuSalaryLow().equals(other.getResumeStuSalaryLow()))
            && (this.getResumeStuSalaryHigh() == null ? other.getResumeStuSalaryHigh() == null : this.getResumeStuSalaryHigh().equals(other.getResumeStuSalaryHigh()))
            && (this.getResumeStuJobStatus() == null ? other.getResumeStuJobStatus() == null : this.getResumeStuJobStatus().equals(other.getResumeStuJobStatus()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getResumeId() == null) ? 0 : getResumeId().hashCode());
        result = prime * result + ((getResumeStuJobNature() == null) ? 0 : getResumeStuJobNature().hashCode());
        result = prime * result + ((getResumeStuWorkAddr() == null) ? 0 : getResumeStuWorkAddr().hashCode());
        result = prime * result + ((getResumeStuIndustry() == null) ? 0 : getResumeStuIndustry().hashCode());
        result = prime * result + ((getResumeStuOccupation() == null) ? 0 : getResumeStuOccupation().hashCode());
        result = prime * result + ((getResumePrepareA() == null) ? 0 : getResumePrepareA().hashCode());
        result = prime * result + ((getResumePrepareB() == null) ? 0 : getResumePrepareB().hashCode());
        result = prime * result + ((getStuId() == null) ? 0 : getStuId().hashCode());
        result = prime * result + ((getResumeStuSalaryLow() == null) ? 0 : getResumeStuSalaryLow().hashCode());
        result = prime * result + ((getResumeStuSalaryHigh() == null) ? 0 : getResumeStuSalaryHigh().hashCode());
        result = prime * result + ((getResumeStuJobStatus() == null) ? 0 : getResumeStuJobStatus().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", resumeId=").append(resumeId);
        sb.append(", resumeStuJobNature=").append(resumeStuJobNature);
        sb.append(", resumeStuWorkAddr=").append(resumeStuWorkAddr);
        sb.append(", resumeStuIndustry=").append(resumeStuIndustry);
        sb.append(", resumeStuOccupation=").append(resumeStuOccupation);
        sb.append(", resumePrepareA=").append(resumePrepareA);
        sb.append(", resumePrepareB=").append(resumePrepareB);
        sb.append(", stuId=").append(stuId);
        sb.append(", resumeStuSalaryLow=").append(resumeStuSalaryLow);
        sb.append(", resumeStuSalaryHigh=").append(resumeStuSalaryHigh);
        sb.append(", resumeStuJobStatus=").append(resumeStuJobStatus);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}