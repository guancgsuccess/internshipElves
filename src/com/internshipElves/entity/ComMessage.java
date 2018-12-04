package com.internshipElves.entity;

import java.io.Serializable;

/**
 * com_message
 * @author 
 */
public class ComMessage implements Serializable {
    /**
     * 公司基本信息id
     */
    private Integer comMessageId;

    /**
     * 公司id
     */
    private Integer comId;

    /**
     * 公司名称
     */
    private String comName;

    /**
     * 公司网址
     */
    private String comInterAddr;

    /**
     * 公司所在城市
     */
    private String comCity;

    /**
     * 行业领域
     */
    private String comField;

    /**
     * 公司规模
     */
    private String comScale;

    /**
     * 发展阶段
     */
    private String comDeplo;

    /**
     * 公司介绍
     */
    private String comIntroduce;

    /**
     * 备用字段1
     */
    private String comMessagePrepareA;

    /**
     * 备用字段2
     */
    private String comMessagePrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getComMessageId() {
        return comMessageId;
    }

    public void setComMessageId(Integer comMessageId) {
        this.comMessageId = comMessageId;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName;
    }

    public String getComInterAddr() {
        return comInterAddr;
    }

    public void setComInterAddr(String comInterAddr) {
        this.comInterAddr = comInterAddr;
    }

    public String getComCity() {
        return comCity;
    }

    public void setComCity(String comCity) {
        this.comCity = comCity;
    }

    public String getComField() {
        return comField;
    }

    public void setComField(String comField) {
        this.comField = comField;
    }

    public String getComScale() {
        return comScale;
    }

    public void setComScale(String comScale) {
        this.comScale = comScale;
    }

    public String getComDeplo() {
        return comDeplo;
    }

    public void setComDeplo(String comDeplo) {
        this.comDeplo = comDeplo;
    }

    public String getComIntroduce() {
        return comIntroduce;
    }

    public void setComIntroduce(String comIntroduce) {
        this.comIntroduce = comIntroduce;
    }

    public String getComMessagePrepareA() {
        return comMessagePrepareA;
    }

    public void setComMessagePrepareA(String comMessagePrepareA) {
        this.comMessagePrepareA = comMessagePrepareA;
    }

    public String getComMessagePrepareB() {
        return comMessagePrepareB;
    }

    public void setComMessagePrepareB(String comMessagePrepareB) {
        this.comMessagePrepareB = comMessagePrepareB;
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
        ComMessage other = (ComMessage) that;
        return (this.getComMessageId() == null ? other.getComMessageId() == null : this.getComMessageId().equals(other.getComMessageId()))
            && (this.getComId() == null ? other.getComId() == null : this.getComId().equals(other.getComId()))
            && (this.getComName() == null ? other.getComName() == null : this.getComName().equals(other.getComName()))
            && (this.getComInterAddr() == null ? other.getComInterAddr() == null : this.getComInterAddr().equals(other.getComInterAddr()))
            && (this.getComCity() == null ? other.getComCity() == null : this.getComCity().equals(other.getComCity()))
            && (this.getComField() == null ? other.getComField() == null : this.getComField().equals(other.getComField()))
            && (this.getComScale() == null ? other.getComScale() == null : this.getComScale().equals(other.getComScale()))
            && (this.getComDeplo() == null ? other.getComDeplo() == null : this.getComDeplo().equals(other.getComDeplo()))
            && (this.getComIntroduce() == null ? other.getComIntroduce() == null : this.getComIntroduce().equals(other.getComIntroduce()))
            && (this.getComMessagePrepareA() == null ? other.getComMessagePrepareA() == null : this.getComMessagePrepareA().equals(other.getComMessagePrepareA()))
            && (this.getComMessagePrepareB() == null ? other.getComMessagePrepareB() == null : this.getComMessagePrepareB().equals(other.getComMessagePrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getComMessageId() == null) ? 0 : getComMessageId().hashCode());
        result = prime * result + ((getComId() == null) ? 0 : getComId().hashCode());
        result = prime * result + ((getComName() == null) ? 0 : getComName().hashCode());
        result = prime * result + ((getComInterAddr() == null) ? 0 : getComInterAddr().hashCode());
        result = prime * result + ((getComCity() == null) ? 0 : getComCity().hashCode());
        result = prime * result + ((getComField() == null) ? 0 : getComField().hashCode());
        result = prime * result + ((getComScale() == null) ? 0 : getComScale().hashCode());
        result = prime * result + ((getComDeplo() == null) ? 0 : getComDeplo().hashCode());
        result = prime * result + ((getComIntroduce() == null) ? 0 : getComIntroduce().hashCode());
        result = prime * result + ((getComMessagePrepareA() == null) ? 0 : getComMessagePrepareA().hashCode());
        result = prime * result + ((getComMessagePrepareB() == null) ? 0 : getComMessagePrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", comMessageId=").append(comMessageId);
        sb.append(", comId=").append(comId);
        sb.append(", comName=").append(comName);
        sb.append(", comInterAddr=").append(comInterAddr);
        sb.append(", comCity=").append(comCity);
        sb.append(", comField=").append(comField);
        sb.append(", comScale=").append(comScale);
        sb.append(", comDeplo=").append(comDeplo);
        sb.append(", comIntroduce=").append(comIntroduce);
        sb.append(", comMessagePrepareA=").append(comMessagePrepareA);
        sb.append(", comMessagePrepareB=").append(comMessagePrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}