package com.service.impl;

import com.dao.ChefDao;
import com.pojo.Chef;
import com.service.ChefService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChefServiceImpl implements ChefService {
    @Autowired
    private ChefDao chefDao;

    @Override
    public void register(Chef chef) {
         chefDao.register(chef);
    }
    @Override
    public Chef login(Chef chef){
        return chefDao.login(chef);
    }

    @Override
    public int deleteChefById(long id) {
        return chefDao.deleteChefById(id);
    }

    @Override
    public int updateChef(Chef chef) {
        return chefDao.updateChef(chef);
    }

    @Override
    public Chef queryById(long id) { return chefDao.queryById(id); }

    @Override
    public List<Chef> queryAllChef() {
        return chefDao.queryAllChef();
    }

}