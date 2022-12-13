package com.MMR.vo;

import java.util.Date;

public class Place {
    private Integer placeId;

    private String placeName;

    private Integer isValue;

    private Integer placeMoney;

    private Date createDate;

    private Date updateDate;

    public Integer getPlaceId() {
        return placeId;
    }

    public void setPlaceId(Integer placeId) {
        this.placeId = placeId;
    }

    public String getPlaceName() {
        return placeName;
    }

    public void setPlaceName(String placeName) {
        this.placeName = placeName == null ? null : placeName.trim();
    }

    public Integer getIsValue() {
        return isValue;
    }

    public void setIsValue(Integer isValue) {
        this.isValue = isValue;
    }

    public Integer getPlaceMoney() {
        return placeMoney;
    }

    public void setPlaceMoney(Integer placeMoney) {
        this.placeMoney = placeMoney;
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