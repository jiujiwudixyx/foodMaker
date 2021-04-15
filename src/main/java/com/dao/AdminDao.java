package com.dao;


import com.pojo.Admin;

import java.util.List;


public interface AdminDao {

    Admin login(Admin admin);
    void register(Admin admin);
    int deleteAdminById(long id);

    int updateAdmin(Admin admin);

    Admin queryById(long id);
    List<Admin> queryAllAdmin();
}