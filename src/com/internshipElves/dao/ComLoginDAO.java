package com.internshipElves.dao;

import com.internshipElves.entity.ComLogin;
import com.internshipElves.entity.Company;
import org.apache.ibatis.annotations.Param;

;

public interface ComLoginDAO {

    /**
     判断用户登录的邮箱与密码是否正确
     @param email 登录邮箱（注册时的邮箱）
     @param password 登录密码
     @return 返回登录用户信息，若返回null,表示账户或密码错误
     */
    public Company checkEmailAndPwd(@Param("email") String email, @Param("password") String password);

    /**
     添加登录记录
     @param comLogin 用户登录信息对象
     @return  返回添加受影响的行数
     */
    public  Integer save(ComLogin comLogin);

    /**
     *     添加登录数据
     * @param record
     * @return
     */
    public Integer insert(ComLogin record);
}