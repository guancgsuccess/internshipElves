package com.internshipElves.entity;

import java.io.Serializable;
import java.util.Date;

/**
 * company
 * @author 
 */
public class Company implements Serializable {
    /**
     * 企业id
     */
    private Integer comId;

    /**
     * 企业密码
     */
    private String comPwd;

    /**
     * 企业邮箱
     */
    private String comEmail;

    /**
     * 招聘信息id
     */
    private Integer comReleaseJobId;

    /**
     * 公司基本信息id
     */
    private Integer comMessageId;

    /**
     * 公司产品id
     */
    private Integer comProductId;

    /**
     * 公司标签id
     */
    private Integer comLabelId;

    /**
     * 公司创始团队id
     */
    private Integer comCreateTeamId;

    /**
     * 企业状态
     */
    private Integer comStatus;

    /**
     * 企业表注册时间
     */
    private Date comCreateDate;

    /**
     * 备用字段1
     */
    private String companyPrepareA;

    /**
     * 备用字段2
     */
    private String companyPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public String getComPwd() {
        return comPwd;
    }

    public void setComPwd(String comPwd) {
        this.comPwd = comPwd;
    }

    public String getComEmail() {
        return comEmail;
    }

    public void setComEmail(String comEmail) {
        this.comEmail = comEmail;
    }

    public Integer getComReleaseJobId() {
        return comReleaseJobId;
    }

    public void setComReleaseJobId(Integer comReleaseJobId) {
        this.comReleaseJobId = comReleaseJobId;
    }

    public Integer getComMessageId() {
        return comMessageId;
    }

    public void setComMessageId(Integer comMessageId) {
        this.comMessageId = comMessageId;
    }

    public Integer getComProductId() {
        return comProductId;
    }

    public void setComProductId(Integer comProductId) {
        this.comProductId = comProductId;
    }

    public Integer getComLabelId() {
        return comLabelId;
    }

    public void setComLabelId(Integer comLabelId) {
        this.comLabelId = comLabelId;
    }

    public Integer getComCreateTeamId() {
        return comCreateTeamId;
    }

    public void setComCreateTeamId(Integer comCreateTeamId) {
        this.comCreateTeamId = comCreateTeamId;
    }

    public Integer getComStatus() {
        return comStatus;
    }

    public void setComStatus(Integer comStatus) {
        this.comStatus = comStatus;
    }

    public Date getComCreateDate() {
        return comCreateDate;
    }

    public void setComCreateDate(Date comCreateDate) {
        this.comCreateDate = comCreateDate;
    }

    public String getCompanyPrepareA() {
        return companyPrepareA;
    }

    public void setCompanyPrepareA(String companyPrepareA) {
        this.companyPrepareA = companyPrepareA;
    }

    public String getCompanyPrepareB() {
        return companyPrepareB;
    }

    public void setCompanyPrepareB(String companyPrepareB) {
        this.companyPrepareB = companyPrepareB;
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
        Company other = (Company) that;
        return (this.getComId() == null ? other.getComId() == null : this.getComId().equals(other.getComId()))
            && (this.getComPwd() == null ? other.getComPwd() == null : this.getComPwd().equals(other.getComPwd()))
            && (this.getComEmail() == null ? other.getComEmail() == null : this.getComEmail().equals(other.getComEmail()))
            && (this.getComReleaseJobId() == null ? other.getComReleaseJobId() == null : this.getComReleaseJobId().equals(other.getComReleaseJobId()))
            && (this.getComMessageId() == null ? other.getComMessageId() == null : this.getComMessageId().equals(other.getComMessageId()))
            && (this.getComProductId() == null ? other.getComProductId() == null : this.getComProductId().equals(other.getComProductId()))
            && (this.getComLabelId() == null ? other.getComLabelId() == null : this.getComLabelId().equals(other.getComLabelId()))
            && (this.getComCreateTeamId() == null ? other.getComCreateTeamId() == null : this.getComCreateTeamId().equals(other.getComCreateTeamId()))
            && (this.getComStatus() == null ? other.getComStatus() == null : this.getComStatus().equals(other.getComStatus()))
            && (this.getComCreateDate() == null ? other.getComCreateDate() == null : this.getComCreateDate().equals(other.getComCreateDate()))
            && (this.getCompanyPrepareA() == null ? other.getCompanyPrepareA() == null : this.getCompanyPrepareA().equals(other.getCompanyPrepareA()))
            && (this.getCompanyPrepareB() == null ? other.getCompanyPrepareB() == null : this.getCompanyPrepareB().equals(other.getCompanyPrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getComId() == null) ? 0 : getComId().hashCode());
        result = prime * result + ((getComPwd() == null) ? 0 : getComPwd().hashCode());
        result = prime * result + ((getComEmail() == null) ? 0 : getComEmail().hashCode());
        result = prime * result + ((getComReleaseJobId() == null) ? 0 : getComReleaseJobId().hashCode());
        result = prime * result + ((getComMessageId() == null) ? 0 : getComMessageId().hashCode());
        result = prime * result + ((getComProductId() == null) ? 0 : getComProductId().hashCode());
        result = prime * result + ((getComLabelId() == null) ? 0 : getComLabelId().hashCode());
        result = prime * result + ((getComCreateTeamId() == null) ? 0 : getComCreateTeamId().hashCode());
        result = prime * result + ((getComStatus() == null) ? 0 : getComStatus().hashCode());
        result = prime * result + ((getComCreateDate() == null) ? 0 : getComCreateDate().hashCode());
        result = prime * result + ((getCompanyPrepareA() == null) ? 0 : getCompanyPrepareA().hashCode());
        result = prime * result + ((getCompanyPrepareB() == null) ? 0 : getCompanyPrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", comId=").append(comId);
        sb.append(", comPwd=").append(comPwd);
        sb.append(", comEmail=").append(comEmail);
        sb.append(", comReleaseJobId=").append(comReleaseJobId);
        sb.append(", comMessageId=").append(comMessageId);
        sb.append(", comProductId=").append(comProductId);
        sb.append(", comLabelId=").append(comLabelId);
        sb.append(", comCreateTeamId=").append(comCreateTeamId);
        sb.append(", comStatus=").append(comStatus);
        sb.append(", comCreateDate=").append(comCreateDate);
        sb.append(", companyPrepareA=").append(companyPrepareA);
        sb.append(", companyPrepareB=").append(companyPrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}