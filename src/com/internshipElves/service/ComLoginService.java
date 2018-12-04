package com.internshipElves.service;

import com.internshipElves.entity.ComLogin;

public interface ComLoginService {


     // 查询用户
     public ComLogin getById(Integer id);
     // 删除 用户
     public   Integer  deleteById(Integer id);




    // 添加企业登录记录
    public   Integer  insert(ComLogin comLogin);
}

