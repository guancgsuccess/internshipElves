package com.internshipElves.entity;

import java.util.Date;

public class HotJob {

    //公司名称
    private String comName;
    //职位名称
    private String comJobName;
    //公司所在城市
    private String comCity;
    //最低月薪
    private Integer comSalaryLow;
    //最高月薪
    private Integer comSalaryHigh;
    //经验
    private String comJobExp;
    //最低学历
    private String comJobRequir;
    //职位诱惑
    private String comJobTemp;
    //发布时间
    private Date comJobTime;
    //行业领域
    private String comField;
    //创始人
    private String comFounderName;
    //发展阶段
    private String comDeplo;
    //规模
    private String comScale;

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName;
    }

    public String getComJobName() {
        return comJobName;
    }

    public void setComJobName(String comJobName) {
        this.comJobName = comJobName;
    }

    public String getComCity() {
        return comCity;
    }

    public void setComCity(String comCity) {
        this.comCity = comCity;
    }

    public Integer getComSalaryLow() {
        return comSalaryLow;
    }

    public void setComSalaryLow(Integer comSalaryLow) {
        this.comSalaryLow = comSalaryLow;
    }

    public Integer getComSalaryHigh() {
        return comSalaryHigh;
    }

    public void setComSalaryHigh(Integer comSalaryHigh) {
        this.comSalaryHigh = comSalaryHigh;
    }

    public String getComJobExp() {
        return comJobExp;
    }

    public void setComJobExp(String comJobExp) {
        this.comJobExp = comJobExp;
    }

    public String getComJobRequir() {
        return comJobRequir;
    }

    public void setComJobRequir(String comJobRequir) {
        this.comJobRequir = comJobRequir;
    }

    public String getComJobTemp() {
        return comJobTemp;
    }

    public void setComJobTemp(String comJobTemp) {
        this.comJobTemp = comJobTemp;
    }

    public Date getComJobTime() {
        return comJobTime;
    }

    public void setComJobTime(Date comJobTime) {
        this.comJobTime = comJobTime;
    }

    public String getComField() {
        return comField;
    }

    public void setComField(String comField) {
        this.comField = comField;
    }

    public String getComFounderName() {
        return comFounderName;
    }

    public void setComFounderName(String comFounderName) {
        this.comFounderName = comFounderName;
    }

    public String getComDeplo() {
        return comDeplo;
    }

    public void setComDeplo(String comDeplo) {
        this.comDeplo = comDeplo;
    }

    public String getComScale() {
        return comScale;
    }

    public void setComScale(String comScale) {
        this.comScale = comScale;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        HotJob hotJob = (HotJob) o;

        if (comName != null ? !comName.equals(hotJob.comName) : hotJob.comName != null) return false;
        if (comJobName != null ? !comJobName.equals(hotJob.comJobName) : hotJob.comJobName != null) return false;
        if (comCity != null ? !comCity.equals(hotJob.comCity) : hotJob.comCity != null) return false;
        if (comSalaryLow != null ? !comSalaryLow.equals(hotJob.comSalaryLow) : hotJob.comSalaryLow != null)
            return false;
        if (comSalaryHigh != null ? !comSalaryHigh.equals(hotJob.comSalaryHigh) : hotJob.comSalaryHigh != null)
            return false;
        if (comJobExp != null ? !comJobExp.equals(hotJob.comJobExp) : hotJob.comJobExp != null) return false;
        if (comJobRequir != null ? !comJobRequir.equals(hotJob.comJobRequir) : hotJob.comJobRequir != null)
            return false;
        if (comJobTemp != null ? !comJobTemp.equals(hotJob.comJobTemp) : hotJob.comJobTemp != null) return false;
        if (comJobTime != null ? !comJobTime.equals(hotJob.comJobTime) : hotJob.comJobTime != null) return false;
        if (comField != null ? !comField.equals(hotJob.comField) : hotJob.comField != null) return false;
        if (comFounderName != null ? !comFounderName.equals(hotJob.comFounderName) : hotJob.comFounderName != null)
            return false;
        if (comDeplo != null ? !comDeplo.equals(hotJob.comDeplo) : hotJob.comDeplo != null) return false;
        return comScale != null ? comScale.equals(hotJob.comScale) : hotJob.comScale == null;
    }

    @Override
    public int hashCode() {
        int result = comName != null ? comName.hashCode() : 0;
        result = 31 * result + (comJobName != null ? comJobName.hashCode() : 0);
        result = 31 * result + (comCity != null ? comCity.hashCode() : 0);
        result = 31 * result + (comSalaryLow != null ? comSalaryLow.hashCode() : 0);
        result = 31 * result + (comSalaryHigh != null ? comSalaryHigh.hashCode() : 0);
        result = 31 * result + (comJobExp != null ? comJobExp.hashCode() : 0);
        result = 31 * result + (comJobRequir != null ? comJobRequir.hashCode() : 0);
        result = 31 * result + (comJobTemp != null ? comJobTemp.hashCode() : 0);
        result = 31 * result + (comJobTime != null ? comJobTime.hashCode() : 0);
        result = 31 * result + (comField != null ? comField.hashCode() : 0);
        result = 31 * result + (comFounderName != null ? comFounderName.hashCode() : 0);
        result = 31 * result + (comDeplo != null ? comDeplo.hashCode() : 0);
        result = 31 * result + (comScale != null ? comScale.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "HotJob{" +
                "comName='" + comName + '\'' +
                ", comJobName='" + comJobName + '\'' +
                ", comCity='" + comCity + '\'' +
                ", comSalaryLow=" + comSalaryLow +
                ", comSalaryHigh=" + comSalaryHigh +
                ", comJobExp='" + comJobExp + '\'' +
                ", comJobRequir='" + comJobRequir + '\'' +
                ", comJobTemp='" + comJobTemp + '\'' +
                ", comJobTime=" + comJobTime +
                ", comField='" + comField + '\'' +
                ", comFounderName='" + comFounderName + '\'' +
                ", comDeplo='" + comDeplo + '\'' +
                ", comScale='" + comScale + '\'' +
                '}';
    }
}
