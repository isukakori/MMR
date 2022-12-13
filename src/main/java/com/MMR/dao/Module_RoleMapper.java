package com.MMR.dao;

import com.MMR.vo.Module_Role;

public interface Module_RoleMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Module_Role record);

    int insertSelective(Module_Role record);

    Module_Role selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Module_Role record);

    int updateByPrimaryKey(Module_Role record);
}