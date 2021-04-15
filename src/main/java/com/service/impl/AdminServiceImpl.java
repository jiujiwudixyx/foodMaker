package com.service.impl;

import com.dao.AdminDao;
import com.pojo.Admin;
import com.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminDao adminDao;

    @Override
    public void register(Admin admin) {
         adminDao.register(admin);
    }
    @Override
    public Admin login(Admin admin){
        return adminDao.login(admin);
    }

    @Override
    public int deleteAdminById(long id) {
        return adminDao.deleteAdminById(id);
    }

    @Override
    public int updateAdmin(Admin admin) {
        return adminDao.updateAdmin(admin);
    }

    @Override
    public Admin queryById(long id) { return adminDao.queryById(id); }

    @Override
    public List<Admin> queryAllAdmin() {
        return adminDao.queryAllAdmin();
    }

}