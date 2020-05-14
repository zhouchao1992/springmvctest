package com.zc.controller;

import com.zc.pojo.UmsAdmin;
import com.zc.service.UmsAdminService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping("/user/")
public class UmsAdminController {

    @Resource
    UmsAdminService service;

    @RequestMapping("queryAll")
    public  String queryAll(Model model){
        List<UmsAdmin> list = service.queryAll();
        model.addAttribute("list",list);
        return "userList";
    }
}
