package com.internshipElves.service.impl;

import com.internshipElves.dao.StudentLoginDAO;
import com.internshipElves.entity.Student;
import com.internshipElves.entity.StudentLogin;
import com.internshipElves.service.StudentLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("studentLoginService")
public class StudentLoginServiceImpl implements StudentLoginService {

    @Autowired
    private StudentLoginDAO studentLoginDAO;

    /**
     * j检查手机号密码登录
     * @param stuPhone 登录手机号码
     * @param password 登录密码
     * @return 学生对象
     */
    @Override
    public Student LoginByPhoneAndPwd(String stuPhone, String password) {
        Student student = studentLoginDAO.checkTelnoAndPwd(stuPhone,password);
        System.out.println("student="+student);
        return student;
    }

    /**
     * 检查邮箱密码登录
     * @param stuEmail 登录邮箱
     * @param password 登录密码
     * @return 学生对象
     */
    @Override
    public Student LoginByEmailAndPwd(String stuEmail, String password) {
       Student student = studentLoginDAO.checkEmailAndPwd(stuEmail,password);
       return student;
    }

    /**
     * 把登录信息保存到数据库中
     * @param stuLogin 登录对象
     * @return
     */
    @Override
    public Integer insetLogin(StudentLogin stuLogin) {
        Integer rows = studentLoginDAO.save(stuLogin);
        System.out.println("受影响的行数为："+rows);
        return rows;
    }
}
