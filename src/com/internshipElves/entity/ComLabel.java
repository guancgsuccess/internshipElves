package com.internshipElves.entity;

import java.io.Serializable;

/**
 * com_label
 * @author 
 */
public class ComLabel implements Serializable {
    /**
     * 公司标签
     */
    private Integer comLabelId;

    /**
     * 公司id
     */
    private Integer comId;

    /**
     * 公司标签一
     */
    private String comLabelOne;

    /**
     * 公司标签二
     */
    private String comLabelTwo;

    /**
     * 公司标签三
     */
    private String comLabelThree;

    /**
     * 备用字段1
     */
    private String comLabelPrepareA;

    /**
     * 备用字段2
     */
    private String comLabelPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getComLabelId() {
        return comLabelId;
    }

    public void setComLabelId(Integer comLabelId) {
        this.comLabelId = comLabelId;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public String getComLabelOne() {
        return comLabelOne;
    }

    public void setComLabelOne(String comLabelOne) {
        this.comLabelOne = comLabelOne;
    }

    public String getComLabelTwo() {
        return comLabelTwo;
    }

    public void setComLabelTwo(String comLabelTwo) {
        this.comLabelTwo = comLabelTwo;
    }

    public String getComLabelThree() {
        return comLabelThree;
    }

    public void setComLabelThree(String comLabelThree) {
        this.comLabelThree = comLabelThree;
    }

    public String getComLabelPrepareA() {
        return comLabelPrepareA;
    }

    public void setComLabelPrepareA(String comLabelPrepareA) {
        this.comLabelPrepareA = comLabelPrepareA;
    }

    public String getComLabelPrepareB() {
        return comLabelPrepareB;
    }

    public void setComLabelPrepareB(String comLabelPrepareB) {
        this.comLabelPrepareB = comLabelPrepareB;
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
        ComLabel other = (ComLabel) that;
        return (this.getComLabelId() == null ? other.getComLabelId() == null : this.getComLabelId().equals(other.getComLabelId()))
            && (this.getComId() == null ? other.getComId() == null : this.getComId().equals(other.getComId()))
            && (this.getComLabelOne() == null ? other.getComLabelOne() == null : this.getComLabelOne().equals(other.getComLabelOne()))
            && (this.getComLabelTwo() == null ? other.getComLabelTwo() == null : this.getComLabelTwo().equals(other.getComLabelTwo()))
            && (this.getComLabelThree() == null ? other.getComLabelThree() == null : this.getComLabelThree().equals(other.getComLabelThree()))
            && (this.getComLabelPrepareA() == null ? other.getComLabelPrepareA() == null : this.getComLabelPrepareA().equals(other.getComLabelPrepareA()))
            && (this.getComLabelPrepareB() == null ? other.getComLabelPrepareB() == null : this.getComLabelPrepareB().equals(other.getComLabelPrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getComLabelId() == null) ? 0 : getComLabelId().hashCode());
        result = prime * result + ((getComId() == null) ? 0 : getComId().hashCode());
        result = prime * result + ((getComLabelOne() == null) ? 0 : getComLabelOne().hashCode());
        result = prime * result + ((getComLabelTwo() == null) ? 0 : getComLabelTwo().hashCode());
        result = prime * result + ((getComLabelThree() == null) ? 0 : getComLabelThree().hashCode());
        result = prime * result + ((getComLabelPrepareA() == null) ? 0 : getComLabelPrepareA().hashCode());
        result = prime * result + ((getComLabelPrepareB() == null) ? 0 : getComLabelPrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", comLabelId=").append(comLabelId);
        sb.append(", comId=").append(comId);
        sb.append(", comLabelOne=").append(comLabelOne);
        sb.append(", comLabelTwo=").append(comLabelTwo);
        sb.append(", comLabelThree=").append(comLabelThree);
        sb.append(", comLabelPrepareA=").append(comLabelPrepareA);
        sb.append(", comLabelPrepareB=").append(comLabelPrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}