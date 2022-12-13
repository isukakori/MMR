package com.MMR.dao;

import com.MMR.vo.Violation;

public interface ViolationMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Violation record);

    int insertSelective(Violation record);

    Violation selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Violation record);

    int updateByPrimaryKey(Violation record);
}