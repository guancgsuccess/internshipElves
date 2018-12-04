package com.internshipElves.service.impl;

import com.internshipElves.dao.ComIntroduceDAO;
import com.internshipElves.entity.ComIntroduce;
import com.internshipElves.service.ComIntroduceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class ComIntroduceServiceImpl implements ComIntroduceService {

    @Autowired
    private ComIntroduceDAO comIntroduceDAO;

    /**
     *    添加公司介绍信息
     * @param comIntroduce   公司介绍信息
     * @return   返回受影响行数
     */
    @Override
    public Integer insertComIntroduce(ComIntroduce comIntroduce) {
           Integer  rows =   comIntroduceDAO.insert(comIntroduce);
           System.out.println("添加公司介绍 返回行数  ： " +rows);
        return rows;
    }

    /**
     *   根据公司id  查询公司介绍信息
     * @param comId    公司id
     * @return   公司信息
     */
    @Override
    public ComIntroduce queryComIntroduce(Integer comId) {
        ComIntroduce comIntroduce = comIntroduceDAO.selectByPrimaryKey(comId);
        System.out.println("公司介绍信息 comIntroduce :"+comIntroduce);
        return comIntroduce;
    }
}
