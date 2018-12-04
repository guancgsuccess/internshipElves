package com.internshipElves.dao;

import com.internshipElves.entity.Company;
import org.apache.ibatis.annotations.Param;

public interface CompanyDAO {
    int deleteByPrimaryKey(Integer comId);

    int insert(Company record);

    int insertSelective(Company record);

    Company selectByPrimaryKey(Integer comId);

    int updateByPrimaryKeySelective(Company record);

    int updateByPrimaryKey(Company record);

    /**
     * 判断邮箱是否注册
     * @param email
     * @return    注册返回邮箱   没注册 返回null
     */
    public  String isValidEmail(String email);

    /**
     * 设置用户密码 ，根据用户ID修改密码
     * @param company  需要设置密码的用户，该对象封装了新密码
     * @return 返回修改受影响行数
     */
    public int updatePwd(Company company);

    /**
     * 新用户注册(通过邮箱和密码注册）
     * @param company
     * @return 返回添加受影响行数
     */
    int saveRegistByEmailAndPwd(Company company);

    /**
     * 根据主键查询用户自己的信息
     * @param comId
     * @return 返回用户详细信息
     */
    public Company queryById(Integer comId);

    /**
     * 修改用户信息
     * @param conpany 要修改的用户信息
     * @return 返回受影响的行数
     */
    public int update(Company conpany);


    /**
     *    判断用户登录的邮箱与密码是否正确
     * @param email 登 录邮箱（注册时的邮箱）
     * @param password 登录密码
     * @return 返回登录用户信息，若返回null,表示账户或密码错误
     */
    public Company checkEmailAndPwd(@Param ("email") String email, @Param ("password") String password);
}