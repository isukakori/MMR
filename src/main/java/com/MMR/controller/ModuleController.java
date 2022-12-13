package com.MMR.controller;

import com.MMR.base.BaseController;
import com.MMR.service.ModuleService;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;

@Controller
public class ModuleController extends BaseController {
    @Resource
    private ModuleService moduleService;
}
