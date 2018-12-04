package com.internshipElves.service.impl;

import com.internshipElves.dao.CompanyDAO;
import com.internshipElves.entity.Company;
import com.internshipElves.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;


@Service
public class CompanyServiceImpl implements CompanyService {

    @Autowired
    private CompanyDAO companyDAO;

    /**
     *  注册
     * @param comEmail
     * @param comPwd
     * @return
     */
    @Override
    public Integer registerByEmailAndPwd(String comEmail, String comPwd) {
        Company company =new Company();
        company.setComEmail(comEmail);
        company.setComPwd(comPwd);
        company.setComCreateDate(new Date());

        Integer  rows  =companyDAO.saveRegistByEmailAndPwd(company);

            System.out.println("邮箱密码受影响行 数   ：" + rows);
                return rows;
    }

    /**
     *    登录邮箱密码 验证
     * @param comEmail
     * @param password
     * @return    company 对象
     */
    @Override
    public Company loginByEmailAndPwd(String comEmail, String password) {

        Company company = companyDAO.checkEmailAndPwd(comEmail, password);

        return company;

    }



}
