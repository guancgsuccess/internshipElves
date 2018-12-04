package com.internshipElves.service;

import com.internshipElves.entity.Student;

public interface StudentService {

    //1.手机密码注册
    public Integer registerByPhoneAndPwd(String stuTel, String password);

    //2.邮箱密码注册
    public Integer registerByEmailAndPwd(String stuEmail, String password);

    //3.判断手机号码是否注册
    public String isRegisterTel(String stuTel);

    //4.重置密码
    public Integer passwordPort(String regPwd,String stuTel);

    //修改个人信息，教育经历的记录：student表
    public int upDate(Student student);

    //根据id查询个人信息
    public Student queryById(Integer id);

    //根据学生id查询学生表
    Student queryByStuId(Integer stuId);

    //根据学生id修改
    int updateByStuId(Integer stuId,Student student);

    //根据学生id修改教育经历
    int updateEducationByStuId(Integer stuId,Student student);
}
