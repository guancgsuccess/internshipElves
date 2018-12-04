package com.internshipElves.dao;

import com.internshipElves.entity.Student;
import com.internshipElves.entity.StudentLogin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository("studentLoginDao")
public interface StudentLoginDAO {

    /**
     判断用户登录的手机号与密码是否正确
     @param telno 登录手机号（注册时手机号）
     @param password 登录密码
     @return 返回登录用户信息，若返回null,表示账户或密码错误
     */
    public Student checkTelnoAndPwd(@Param("telno") String telno, @Param("password") String password);

    /**
     判断用户登录的邮箱与密码是否正确
     @param email 登录邮箱（注册时的邮箱）
     @param password 登录密码
     @return 返回登录用户信息，若返回null,表示账户或密码错误
     */
    public Student checkEmailAndPwd(@Param("email") String email, @Param("password") String password);

    /**
     添加登录记录
     @param stuLogin 用户登录信息对象
     @return  返回添加受影响的行数
     */
    public  int save(StudentLogin stuLogin);
}