package com.internshipElves.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * com_release_job
 * @author 
 */
public class ComReleaseJob implements Serializable {
    /**
     * 招聘信息id
     */
    private Integer comReleaseJobId;

    /**
     * 公司id
     */
    private Integer comId;

    /**
     * 职位类别
     */
    private String comReleaseJobType;

    /**
     * 职位名称
     */
    private String comReleaseJobName;

    /**
     * 所属部门
     */
    private String comReleaseJobDepart;

    /**
     * 工作性质
     */
    private String comReleaseJobProp;

    /**
     * 最低月薪
     */
    private Integer comReleaseJobSalaryLow;

    /**
     * 最高月薪
     */
    private Integer comReleaseJobSalaryHigh;

    /**
     * 工作城市
     */
    private String comReleaseJobCity;

    /**
     * 工作经验
     */
    private String comReleaseJobExp;

    /**
     * 学历要求
     */
    private String comReleaseJobRequir;

    /**
     * 职业诱惑
     */
    private String comReleaseJobTemp;

    /**
     * 职位描述
     */
    private String comReleaseJobDescribe;

    /**
     * 工作地址
     */
    private String comReleaseJobAddr;

    /**
     * 接收简历的邮箱
     */
    private String comReleaseJobEmail;

    /**
     * 首次发布时间
     */
    private Date comReleaseJobTime;

    /**
     * 招聘信息修改时间
     */
    private Date comReleaseJobUpdateTime;

    /**
     * 招聘信息状态
     */
    private Integer comReleaseJobStatus;

    /**
     * 备用字段1
     */
    private String comReleaseJobResumePrepareA;

    /**
     * 备用字段2
     */
    private String comReleaseJobResumePrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getComReleaseJobId() {
        return comReleaseJobId;
    }

    public void setComReleaseJobId(Integer comReleaseJobId) {
        this.comReleaseJobId = comReleaseJobId;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public String getComReleaseJobType() {
        return comReleaseJobType;
    }

    public void setComReleaseJobType(String comReleaseJobType) {
        this.comReleaseJobType = comReleaseJobType;
    }

    public String getComReleaseJobName() {
        return comReleaseJobName;
    }

    public void setComReleaseJobName(String comReleaseJobName) {
        this.comReleaseJobName = comReleaseJobName;
    }

    public String getComReleaseJobDepart() {
        return comReleaseJobDepart;
    }

    public void setComReleaseJobDepart(String comReleaseJobDepart) {
        this.comReleaseJobDepart = comReleaseJobDepart;
    }

    public String getComReleaseJobProp() {
        return comReleaseJobProp;
    }

    public void setComReleaseJobProp(String comReleaseJobProp) {
        this.comReleaseJobProp = comReleaseJobProp;
    }

    public Integer getComReleaseJobSalaryLow() {
        return comReleaseJobSalaryLow;
    }

    public void setComReleaseJobSalaryLow(Integer comReleaseJobSalaryLow) {
        this.comReleaseJobSalaryLow = comReleaseJobSalaryLow;
    }

    public Integer getComReleaseJobSalaryHigh() {
        return comReleaseJobSalaryHigh;
    }

    public void setComReleaseJobSalaryHigh(Integer comReleaseJobSalaryHigh) {
        this.comReleaseJobSalaryHigh = comReleaseJobSalaryHigh;
    }

    public String getComReleaseJobCity() {
        return comReleaseJobCity;
    }

    public void setComReleaseJobCity(String comReleaseJobCity) {
        this.comReleaseJobCity = comReleaseJobCity;
    }

    public String getComReleaseJobExp() {
        return comReleaseJobExp;
    }

    public void setComReleaseJobExp(String comReleaseJobExp) {
        this.comReleaseJobExp = comReleaseJobExp;
    }

    public String getComReleaseJobRequir() {
        return comReleaseJobRequir;
    }

    public void setComReleaseJobRequir(String comReleaseJobRequir) {
        this.comReleaseJobRequir = comReleaseJobRequir;
    }

    public String getComReleaseJobTemp() {
        return comReleaseJobTemp;
    }

    public void setComReleaseJobTemp(String comReleaseJobTemp) {
        this.comReleaseJobTemp = comReleaseJobTemp;
    }

    public String getComReleaseJobDescribe() {
        return comReleaseJobDescribe;
    }

    public void setComReleaseJobDescribe(String comReleaseJobDescribe) {
        this.comReleaseJobDescribe = comReleaseJobDescribe;
    }

    public String getComReleaseJobAddr() {
        return comReleaseJobAddr;
    }

    public void setComReleaseJobAddr(String comReleaseJobAddr) {
        this.comReleaseJobAddr = comReleaseJobAddr;
    }

    public String getComReleaseJobEmail() {
        return comReleaseJobEmail;
    }

    public void setComReleaseJobEmail(String comReleaseJobEmail) {
        this.comReleaseJobEmail = comReleaseJobEmail;
    }

    public Date getComReleaseJobTime() {
        return comReleaseJobTime;
    }

    public void setComReleaseJobTime(Date comReleaseJobTime) {
        this.comReleaseJobTime = comReleaseJobTime;
    }

    public Date getComReleaseJobUpdateTime() {
        return comReleaseJobUpdateTime;
    }

    public void setComReleaseJobUpdateTime(Date comReleaseJobUpdateTime) {
        this.comReleaseJobUpdateTime = comReleaseJobUpdateTime;
    }

    public Integer getComReleaseJobStatus() {
        return comReleaseJobStatus;
    }

    public void setComReleaseJobStatus(Integer comReleaseJobStatus) {
        this.comReleaseJobStatus = comReleaseJobStatus;
    }

    public String getComReleaseJobResumePrepareA() {
        return comReleaseJobResumePrepareA;
    }

    public void setComReleaseJobResumePrepareA(String comReleaseJobResumePrepareA) {
        this.comReleaseJobResumePrepareA = comReleaseJobResumePrepareA;
    }

    public String getComReleaseJobResumePrepareB() {
        return comReleaseJobResumePrepareB;
    }

    public void setComReleaseJobResumePrepareB(String comReleaseJobResumePrepareB) {
        this.comReleaseJobResumePrepareB = comReleaseJobResumePrepareB;
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
        ComReleaseJob other = (ComReleaseJob) that;
        return (this.getComReleaseJobId() == null ? other.getComReleaseJobId() == null : this.getComReleaseJobId().equals(other.getComReleaseJobId()))
            && (this.getComId() == null ? other.getComId() == null : this.getComId().equals(other.getComId()))
            && (this.getComReleaseJobType() == null ? other.getComReleaseJobType() == null : this.getComReleaseJobType().equals(other.getComReleaseJobType()))
            && (this.getComReleaseJobName() == null ? other.getComReleaseJobName() == null : this.getComReleaseJobName().equals(other.getComReleaseJobName()))
            && (this.getComReleaseJobDepart() == null ? other.getComReleaseJobDepart() == null : this.getComReleaseJobDepart().equals(other.getComReleaseJobDepart()))
            && (this.getComReleaseJobProp() == null ? other.getComReleaseJobProp() == null : this.getComReleaseJobProp().equals(other.getComReleaseJobProp()))
            && (this.getComReleaseJobSalaryLow() == null ? other.getComReleaseJobSalaryLow() == null : this.getComReleaseJobSalaryLow().equals(other.getComReleaseJobSalaryLow()))
            && (this.getComReleaseJobSalaryHigh() == null ? other.getComReleaseJobSalaryHigh() == null : this.getComReleaseJobSalaryHigh().equals(other.getComReleaseJobSalaryHigh()))
            && (this.getComReleaseJobCity() == null ? other.getComReleaseJobCity() == null : this.getComReleaseJobCity().equals(other.getComReleaseJobCity()))
            && (this.getComReleaseJobExp() == null ? other.getComReleaseJobExp() == null : this.getComReleaseJobExp().equals(other.getComReleaseJobExp()))
            && (this.getComReleaseJobRequir() == null ? other.getComReleaseJobRequir() == null : this.getComReleaseJobRequir().equals(other.getComReleaseJobRequir()))
            && (this.getComReleaseJobTemp() == null ? other.getComReleaseJobTemp() == null : this.getComReleaseJobTemp().equals(other.getComReleaseJobTemp()))
            && (this.getComReleaseJobDescribe() == null ? other.getComReleaseJobDescribe() == null : this.getComReleaseJobDescribe().equals(other.getComReleaseJobDescribe()))
            && (this.getComReleaseJobAddr() == null ? other.getComReleaseJobAddr() == null : this.getComReleaseJobAddr().equals(other.getComReleaseJobAddr()))
            && (this.getComReleaseJobEmail() == null ? other.getComReleaseJobEmail() == null : this.getComReleaseJobEmail().equals(other.getComReleaseJobEmail()))
            && (this.getComReleaseJobTime() == null ? other.getComReleaseJobTime() == null : this.getComReleaseJobTime().equals(other.getComReleaseJobTime()))
            && (this.getComReleaseJobUpdateTime() == null ? other.getComReleaseJobUpdateTime() == null : this.getComReleaseJobUpdateTime().equals(other.getComReleaseJobUpdateTime()))
            && (this.getComReleaseJobStatus() == null ? other.getComReleaseJobStatus() == null : this.getComReleaseJobStatus().equals(other.getComReleaseJobStatus()))
            && (this.getComReleaseJobResumePrepareA() == null ? other.getComReleaseJobResumePrepareA() == null : this.getComReleaseJobResumePrepareA().equals(other.getComReleaseJobResumePrepareA()))
            && (this.getComReleaseJobResumePrepareB() == null ? other.getComReleaseJobResumePrepareB() == null : this.getComReleaseJobResumePrepareB().equals(other.getComReleaseJobResumePrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getComReleaseJobId() == null) ? 0 : getComReleaseJobId().hashCode());
        result = prime * result + ((getComId() == null) ? 0 : getComId().hashCode());
        result = prime * result + ((getComReleaseJobType() == null) ? 0 : getComReleaseJobType().hashCode());
        result = prime * result + ((getComReleaseJobName() == null) ? 0 : getComReleaseJobName().hashCode());
        result = prime * result + ((getComReleaseJobDepart() == null) ? 0 : getComReleaseJobDepart().hashCode());
        result = prime * result + ((getComReleaseJobProp() == null) ? 0 : getComReleaseJobProp().hashCode());
        result = prime * result + ((getComReleaseJobSalaryLow() == null) ? 0 : getComReleaseJobSalaryLow().hashCode());
        result = prime * result + ((getComReleaseJobSalaryHigh() == null) ? 0 : getComReleaseJobSalaryHigh().hashCode());
        result = prime * result + ((getComReleaseJobCity() == null) ? 0 : getComReleaseJobCity().hashCode());
        result = prime * result + ((getComReleaseJobExp() == null) ? 0 : getComReleaseJobExp().hashCode());
        result = prime * result + ((getComReleaseJobRequir() == null) ? 0 : getComReleaseJobRequir().hashCode());
        result = prime * result + ((getComReleaseJobTemp() == null) ? 0 : getComReleaseJobTemp().hashCode());
        result = prime * result + ((getComReleaseJobDescribe() == null) ? 0 : getComReleaseJobDescribe().hashCode());
        result = prime * result + ((getComReleaseJobAddr() == null) ? 0 : getComReleaseJobAddr().hashCode());
        result = prime * result + ((getComReleaseJobEmail() == null) ? 0 : getComReleaseJobEmail().hashCode());
        result = prime * result + ((getComReleaseJobTime() == null) ? 0 : getComReleaseJobTime().hashCode());
        result = prime * result + ((getComReleaseJobUpdateTime() == null) ? 0 : getComReleaseJobUpdateTime().hashCode());
        result = prime * result + ((getComReleaseJobStatus() == null) ? 0 : getComReleaseJobStatus().hashCode());
        result = prime * result + ((getComReleaseJobResumePrepareA() == null) ? 0 : getComReleaseJobResumePrepareA().hashCode());
        result = prime * result + ((getComReleaseJobResumePrepareB() == null) ? 0 : getComReleaseJobResumePrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", comReleaseJobId=").append(comReleaseJobId);
        sb.append(", comId=").append(comId);
        sb.append(", comReleaseJobType=").append(comReleaseJobType);
        sb.append(", comReleaseJobName=").append(comReleaseJobName);
        sb.append(", comReleaseJobDepart=").append(comReleaseJobDepart);
        sb.append(", comReleaseJobProp=").append(comReleaseJobProp);
        sb.append(", comReleaseJobSalaryLow=").append(comReleaseJobSalaryLow);
        sb.append(", comReleaseJobSalaryHigh=").append(comReleaseJobSalaryHigh);
        sb.append(", comReleaseJobCity=").append(comReleaseJobCity);
        sb.append(", comReleaseJobExp=").append(comReleaseJobExp);
        sb.append(", comReleaseJobRequir=").append(comReleaseJobRequir);
        sb.append(", comReleaseJobTemp=").append(comReleaseJobTemp);
        sb.append(", comReleaseJobDescribe=").append(comReleaseJobDescribe);
        sb.append(", comReleaseJobAddr=").append(comReleaseJobAddr);
        sb.append(", comReleaseJobEmail=").append(comReleaseJobEmail);
        sb.append(", comReleaseJobTime=").append(comReleaseJobTime);
        sb.append(", comReleaseJobUpdateTime=").append(comReleaseJobUpdateTime);
        sb.append(", comReleaseJobStatus=").append(comReleaseJobStatus);
        sb.append(", comReleaseJobResumePrepareA=").append(comReleaseJobResumePrepareA);
        sb.append(", comReleaseJobResumePrepareB=").append(comReleaseJobResumePrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}