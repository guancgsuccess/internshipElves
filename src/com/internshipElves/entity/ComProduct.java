package com.internshipElves.entity;

import java.io.Serializable;

/**
 * com_product
 * @author 
 */
public class ComProduct implements Serializable {
    /**
     * 公司产品id
     */
    private Integer comProductId;

    /**
     * 公司id 
     */
    private Integer comId;

    /**
     * 产品名称
     */
    private String comProductName;

    /**
     * 产品地址
     */
    private String comProductAddr;

    /**
     * 产品简介
     */
    private String comProductIntro;

    /**
     * 备用字段1
     */
    private String comProductPrepareA;

    /**
     * 备用字段2
     */
    private String comProductPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getComProductId() {
        return comProductId;
    }

    public void setComProductId(Integer comProductId) {
        this.comProductId = comProductId;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public String getComProductName() {
        return comProductName;
    }

    public void setComProductName(String comProductName) {
        this.comProductName = comProductName;
    }

    public String getComProductAddr() {
        return comProductAddr;
    }

    public void setComProductAddr(String comProductAddr) {
        this.comProductAddr = comProductAddr;
    }

    public String getComProductIntro() {
        return comProductIntro;
    }

    public void setComProductIntro(String comProductIntro) {
        this.comProductIntro = comProductIntro;
    }

    public String getComProductPrepareA() {
        return comProductPrepareA;
    }

    public void setComProductPrepareA(String comProductPrepareA) {
        this.comProductPrepareA = comProductPrepareA;
    }

    public String getComProductPrepareB() {
        return comProductPrepareB;
    }

    public void setComProductPrepareB(String comProductPrepareB) {
        this.comProductPrepareB = comProductPrepareB;
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
        ComProduct other = (ComProduct) that;
        return (this.getComProductId() == null ? other.getComProductId() == null : this.getComProductId().equals(other.getComProductId()))
            && (this.getComId() == null ? other.getComId() == null : this.getComId().equals(other.getComId()))
            && (this.getComProductName() == null ? other.getComProductName() == null : this.getComProductName().equals(other.getComProductName()))
            && (this.getComProductAddr() == null ? other.getComProductAddr() == null : this.getComProductAddr().equals(other.getComProductAddr()))
            && (this.getComProductIntro() == null ? other.getComProductIntro() == null : this.getComProductIntro().equals(other.getComProductIntro()))
            && (this.getComProductPrepareA() == null ? other.getComProductPrepareA() == null : this.getComProductPrepareA().equals(other.getComProductPrepareA()))
            && (this.getComProductPrepareB() == null ? other.getComProductPrepareB() == null : this.getComProductPrepareB().equals(other.getComProductPrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getComProductId() == null) ? 0 : getComProductId().hashCode());
        result = prime * result + ((getComId() == null) ? 0 : getComId().hashCode());
        result = prime * result + ((getComProductName() == null) ? 0 : getComProductName().hashCode());
        result = prime * result + ((getComProductAddr() == null) ? 0 : getComProductAddr().hashCode());
        result = prime * result + ((getComProductIntro() == null) ? 0 : getComProductIntro().hashCode());
        result = prime * result + ((getComProductPrepareA() == null) ? 0 : getComProductPrepareA().hashCode());
        result = prime * result + ((getComProductPrepareB() == null) ? 0 : getComProductPrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", comProductId=").append(comProductId);
        sb.append(", comId=").append(comId);
        sb.append(", comProductName=").append(comProductName);
        sb.append(", comProductAddr=").append(comProductAddr);
        sb.append(", comProductIntro=").append(comProductIntro);
        sb.append(", comProductPrepareA=").append(comProductPrepareA);
        sb.append(", comProductPrepareB=").append(comProductPrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}