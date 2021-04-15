package com.service;


import com.pojo.Chef;

import java.util.List;

public interface ChefService {

    Chef login(Chef chef);



    void register(Chef chef);
    int deleteChefById(long id);

    int updateChef(Chef chef);

    Chef queryById(long id);

    List<Chef> queryAllChef();

}