package com.internshipElves.entity;

import java.io.Serializable;

/**
 * com_introduce
 * @author 
 */
public class ComIntroduce implements Serializable {
    /**
     * 公司介绍id
     */
    private Integer comIntroduceId;

    /**
     * 公司id
     */
    private Integer comId;

    /**
     * 公司介绍
     */
    private String comIntroduce;

    private static final long serialVersionUID = 1L;

    public Integer getComIntroduceId() {
        return comIntroduceId;
    }

    public void setComIntroduceId(Integer comIntroduceId) {
        this.comIntroduceId = comIntroduceId;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public String getComIntroduce() {
        return comIntroduce;
    }

    public void setComIntroduce(String comIntroduce) {
        this.comIntroduce = comIntroduce;
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
        ComIntroduce other = (ComIntroduce) that;
        return (this.getComIntroduceId() == null ? other.getComIntroduceId() == null : this.getComIntroduceId().equals(other.getComIntroduceId()))
            && (this.getComId() == null ? other.getComId() == null : this.getComId().equals(other.getComId()))
            && (this.getComIntroduce() == null ? other.getComIntroduce() == null : this.getComIntroduce().equals(other.getComIntroduce()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getComIntroduceId() == null) ? 0 : getComIntroduceId().hashCode());
        result = prime * result + ((getComId() == null) ? 0 : getComId().hashCode());
        result = prime * result + ((getComIntroduce() == null) ? 0 : getComIntroduce().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", comIntroduceId=").append(comIntroduceId);
        sb.append(", comId=").append(comId);
        sb.append(", comIntroduce=").append(comIntroduce);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}