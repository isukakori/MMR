package com.MMR.service;

import com.MMR.base.BaseService;
import com.MMR.dao.ModuleMapper;
import com.MMR.vo.Module;
import com.MMR.vo.Role;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ModuleService extends BaseService<Module,Integer> {
    @Resource
    private ModuleMapper moduleMapper;
}
