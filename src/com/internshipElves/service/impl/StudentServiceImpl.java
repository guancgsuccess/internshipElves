package com.internshipElves.service.impl;

import com.internshipElves.dao.StudentDAO;
import com.internshipElves.entity.Student;
import com.internshipElves.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service("studentService")
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDAO studentDAO;

    @Override
    public Integer registerByPhoneAndPwd(String stuTel, String password) {
        Date date = new Date(System.currentTimeMillis());
        Student student = new Student();
        student.setStuCreateTime(date);
        student.setStuTel(stuTel);
        student.setStuPwd(password);
        System.out.println(student);
        Integer rows = studentDAO.saveRegistByTelAndPwd(student);
        System.out.println("影响的行数为："+rows);
        return rows;
    }

    @Override
    public Integer registerByEmailAndPwd(String stuEmail, String password) {
        Date date = new Date(System.currentTimeMillis());
        Student student = new Student();
        student.setStuCreateTime(date);
        student.setStuEmail(stuEmail);
        student.setStuPwd(password);
        Integer rows = studentDAO.saveRegistByEmailAndPwd(student);
        System.out.print("受影响的行数为："+rows);
        return rows;
    }


    /**
     * 判断手机号是否已经注册过
     * @param stuTel 手机号
     * @return 手机号
     */
    @Override
    public String isRegisterTel(String stuTel) {
      String isRegisterTel  = studentDAO.isValidTelno(stuTel);
      return isRegisterTel;
    }

    /**
     * 重置密码
     * @param regPwd 新密码
     * @param stuTel 手机号码
     * @return 受影响的行数
     */
    @Override
    public Integer passwordPort(String regPwd,String stuTel) {
        Integer rows = studentDAO.regPassword(regPwd,stuTel);
        System.out.println("rows="+rows);
        return rows;
    }

    //修改个人信息，教育经历的记录
    @Override
    public int upDate(Student student) {
        int row = studentDAO.update(student);
        return row;
    }

    //根据id查询个人信息
    @Override
    public Student queryById(Integer id) {
        Student student = studentDAO.selectByPrimaryKey(id);
        return student;
    }

    //根据学生id查询学生表
    @Override
    public Student queryByStuId(Integer stuId) {
        return studentDAO.queryByPrimaryKey ( stuId );
    }


    //根据学生id修改基本信息
    @Override
    public int updateByStuId(Integer stuId,Student student) {
        student.setStuUpdateTime ( new Date (  ) );
        return studentDAO.updateByStuId ( stuId,student );
    }

    //根据学生id修改教育经历
    @Override
    public int updateEducationByStuId(Integer stuId,Student student) {
        student.setStuUpdateTime ( new Date (  ) );
        return studentDAO.updateEducationByStuId ( stuId,student );
    }

}
