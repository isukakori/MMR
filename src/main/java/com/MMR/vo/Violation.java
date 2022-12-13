package com.MMR.vo;

import java.util.Date;

public class Violation {
    private Integer id;

    private String carNumber;

    private String vCause;

    private Integer vMoney;

    private Integer isValue;

    private Date createDate;

    private Date updateDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber == null ? null : carNumber.trim();
    }

    public String getvCause() {
        return vCause;
    }

    public void setvCause(String vCause) {
        this.vCause = vCause == null ? null : vCause.trim();
    }

    public Integer getvMoney() {
        return vMoney;
    }

    public void setvMoney(Integer vMoney) {
        this.vMoney = vMoney;
    }

    public Integer getIsValue() {
        return isValue;
    }

    public void setIsValue(Integer isValue) {
        this.isValue = isValue;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}