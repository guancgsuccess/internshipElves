package com.internshipElves.service;

import com.internshipElves.entity.Student;
import com.internshipElves.entity.StudentLogin;

public interface StudentLoginService {

    //1.手机密码登录
    public Student LoginByPhoneAndPwd(String stuPhone, String Password);

    //2.邮箱密码登录
    public Student LoginByEmailAndPwd(String stuEmail, String Password);

    //3.添加登录记录
    public Integer insetLogin(StudentLogin stuLogin);


}
