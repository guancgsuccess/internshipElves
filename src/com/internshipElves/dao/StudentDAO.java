package com.internshipElves.dao;


import com.internshipElves.entity.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository("studentDao")
public interface StudentDAO {
    int deleteByPrimaryKey(Integer stuId);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(Integer stuId);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);

    /**
     判断手机号是否已经注册过
     @param stuTel 验证手机号码是否已经注册
     @return 若该手机号已经注册，则返回已注册的手机号，若没有注册过，则返回null
     */
    public String isValidTelno(String stuTel);

    /**
     判断邮箱是否已经注册过
     @param email 验证邮箱是否已经注册
     @return 若该邮箱已经注册，则返回已注册的邮箱，若没有注册过，则返回null
     */
    public String isValidEmail(String email);

    /**
     设置用户密码 ，根据用户ID修改密码
     @param student 需要设置密码的用户，该对象封装了新密码
     @return 返回修改受影响行数
     */
    public Integer updatePwd(Student student);

    /**
     新用户注册(通过邮箱和密码注册）
     @param student 需要注册的会员
     @return 返回添加受影响行数
     */
    public Integer saveRegistByEmailAndPwd(Student student);

    /**
     新用户注册(通过手机号和密码注册）
     @param student 需要注册的会员
     @return 返回添加受影响行数
     */
    public Integer saveRegistByTelAndPwd(Student student);

    /**
     根据主键查询用户自己的信息
     @param stuId 用户ID
     @return 返回用户详细信息
     */
    public Student queryById(Integer stuId);

    /**
     修改用户信息
     @param student 要修改的用户信息
     @return 返回受影响的行数
     */
    public  Integer update(Student student);

    /**
     * 重置密码
     * @param regPwd 密码
     * @param stuTel 手机号g
     * @return 受影响的行数
     */
    public Integer regPassword(@Param("regPwd") String regPwd, @Param("stuTel") String stuTel);




    //根据学生id查询
    Student queryByPrimaryKey(Integer stuId);


    /**
     * 根据学生id修改
     */
    int updateByStuId(@Param ( "stuId" ) Integer stuId,@Param ("student") Student student);


    /**
     * 根据学生id修改教育经历
     */
    int updateEducationByStuId(@Param ( "stuId" ) Integer stuId,@Param ("student") Student student);
}