package com.zc.service.impl;

import com.zc.dao.UmsAdminDao;
import com.zc.pojo.UmsAdmin;
import com.zc.service.UmsAdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UmsAdminServiceImpl implements UmsAdminService {
    @Resource
    UmsAdminDao umsAdminDao;

    public List<UmsAdmin> queryAll(){
        return umsAdminDao.queryAll();
    }
}
