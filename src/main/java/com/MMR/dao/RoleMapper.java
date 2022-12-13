package com.MMR.dao;

import com.MMR.base.BaseMapper;
import com.MMR.vo.Role;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository
public interface RoleMapper extends BaseMapper<Role,Integer> {

    List<Map<String,Object>> queryAllRole(Integer userId);
}