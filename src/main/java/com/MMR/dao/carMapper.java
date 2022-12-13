package com.MMR.dao;

import com.MMR.vo.car;

public interface carMapper {
    int deleteByPrimaryKey(String carNumber);

    int insert(car record);

    int insertSelective(car record);

    car selectByPrimaryKey(String carNumber);

    int updateByPrimaryKeySelective(car record);

    int updateByPrimaryKey(car record);
}