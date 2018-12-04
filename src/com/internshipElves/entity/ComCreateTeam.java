package com.internshipElves.entity;

import java.io.Serializable;

/**
 * com_create_team
 * @author 
 */
public class ComCreateTeam implements Serializable {
    /**
     * 公司创始团队id
     */
    private Integer comCreateTeamId;

    /**
     * 公司id
     */
    private Integer comId;

    /**
     * 创始人姓名
     */
    private String comFounderName;

    /**
     * 当前职位
     */
    private String comPosition;

    /**
     * 新浪微博
     */
    private String comWeibo;

    /**
     * 创始人简介
     */
    private String comFounderIntro;

    /**
     * 创始人头像
     */
    private String comFounderImg;

    /**
     * 备用字段1
     */
    private String comCreateTeamPrepareA;

    /**
     * 备用字段2
     */
    private String comCreateTeamPrepareB;

    private static final long serialVersionUID = 1L;

    public Integer getComCreateTeamId() {
        return comCreateTeamId;
    }

    public void setComCreateTeamId(Integer comCreateTeamId) {
        this.comCreateTeamId = comCreateTeamId;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public String getComFounderName() {
        return comFounderName;
    }

    public void setComFounderName(String comFounderName) {
        this.comFounderName = comFounderName;
    }

    public String getComPosition() {
        return comPosition;
    }

    public void setComPosition(String comPosition) {
        this.comPosition = comPosition;
    }

    public String getComWeibo() {
        return comWeibo;
    }

    public void setComWeibo(String comWeibo) {
        this.comWeibo = comWeibo;
    }

    public String getComFounderIntro() {
        return comFounderIntro;
    }

    public void setComFounderIntro(String comFounderIntro) {
        this.comFounderIntro = comFounderIntro;
    }

    public String getComFounderImg() {
        return comFounderImg;
    }

    public void setComFounderImg(String comFounderImg) {
        this.comFounderImg = comFounderImg;
    }

    public String getComCreateTeamPrepareA() {
        return comCreateTeamPrepareA;
    }

    public void setComCreateTeamPrepareA(String comCreateTeamPrepareA) {
        this.comCreateTeamPrepareA = comCreateTeamPrepareA;
    }

    public String getComCreateTeamPrepareB() {
        return comCreateTeamPrepareB;
    }

    public void setComCreateTeamPrepareB(String comCreateTeamPrepareB) {
        this.comCreateTeamPrepareB = comCreateTeamPrepareB;
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
        ComCreateTeam other = (ComCreateTeam) that;
        return (this.getComCreateTeamId() == null ? other.getComCreateTeamId() == null : this.getComCreateTeamId().equals(other.getComCreateTeamId()))
            && (this.getComId() == null ? other.getComId() == null : this.getComId().equals(other.getComId()))
            && (this.getComFounderName() == null ? other.getComFounderName() == null : this.getComFounderName().equals(other.getComFounderName()))
            && (this.getComPosition() == null ? other.getComPosition() == null : this.getComPosition().equals(other.getComPosition()))
            && (this.getComWeibo() == null ? other.getComWeibo() == null : this.getComWeibo().equals(other.getComWeibo()))
            && (this.getComFounderIntro() == null ? other.getComFounderIntro() == null : this.getComFounderIntro().equals(other.getComFounderIntro()))
            && (this.getComFounderImg() == null ? other.getComFounderImg() == null : this.getComFounderImg().equals(other.getComFounderImg()))
            && (this.getComCreateTeamPrepareA() == null ? other.getComCreateTeamPrepareA() == null : this.getComCreateTeamPrepareA().equals(other.getComCreateTeamPrepareA()))
            && (this.getComCreateTeamPrepareB() == null ? other.getComCreateTeamPrepareB() == null : this.getComCreateTeamPrepareB().equals(other.getComCreateTeamPrepareB()));
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((getComCreateTeamId() == null) ? 0 : getComCreateTeamId().hashCode());
        result = prime * result + ((getComId() == null) ? 0 : getComId().hashCode());
        result = prime * result + ((getComFounderName() == null) ? 0 : getComFounderName().hashCode());
        result = prime * result + ((getComPosition() == null) ? 0 : getComPosition().hashCode());
        result = prime * result + ((getComWeibo() == null) ? 0 : getComWeibo().hashCode());
        result = prime * result + ((getComFounderIntro() == null) ? 0 : getComFounderIntro().hashCode());
        result = prime * result + ((getComFounderImg() == null) ? 0 : getComFounderImg().hashCode());
        result = prime * result + ((getComCreateTeamPrepareA() == null) ? 0 : getComCreateTeamPrepareA().hashCode());
        result = prime * result + ((getComCreateTeamPrepareB() == null) ? 0 : getComCreateTeamPrepareB().hashCode());
        return result;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", comCreateTeamId=").append(comCreateTeamId);
        sb.append(", comId=").append(comId);
        sb.append(", comFounderName=").append(comFounderName);
        sb.append(", comPosition=").append(comPosition);
        sb.append(", comWeibo=").append(comWeibo);
        sb.append(", comFounderIntro=").append(comFounderIntro);
        sb.append(", comFounderImg=").append(comFounderImg);
        sb.append(", comCreateTeamPrepareA=").append(comCreateTeamPrepareA);
        sb.append(", comCreateTeamPrepareB=").append(comCreateTeamPrepareB);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}