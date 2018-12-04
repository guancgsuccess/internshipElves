package com.internshipElves.service.impl;

import com.internshipElves.dao.ComLoginDAO;
import com.internshipElves.entity.ComLogin;
import com.internshipElves.service.ComLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ComLoginServiceImpl implements ComLoginService {

    @Autowired
    private ComLoginDAO comLoginDAO;


    @Override
    public ComLogin getById(Integer id) {
        return null;
    }

    @Override
    public Integer deleteById(Integer id) {
        return null;
    }



    @Override
    public Integer insert(ComLogin comLogin) {
        Integer   rows= comLoginDAO.insert(comLogin);
        return rows;
    }
}
