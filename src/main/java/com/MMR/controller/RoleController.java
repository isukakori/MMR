package com.MMR.controller;

import com.MMR.base.BaseController;
import com.MMR.base.ResultInfo;
import com.MMR.service.RoleService;
import com.MMR.vo.Role;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("role")
public class RoleController extends BaseController {
    @Resource
    private RoleService roleService;
    @PutMapping("list")
    @ResponseBody
    public ResultInfo queryAllRole(Integer userId){
        List<Map<String,Object>> list = roleService.queryAllRole(userId);
        return success();
    }
}
