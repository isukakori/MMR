package com.MMR.service;

import com.MMR.base.BaseService;
import com.MMR.dao.RoleMapper;
import com.MMR.vo.Role;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class RoleService extends BaseService<Role,Integer> {
    @Resource
    private RoleMapper roleMapper;

    public List<Map<String,Object>> queryAllRole(Integer userId) {
       return roleMapper.queryAllRole(userId);
    }
}
