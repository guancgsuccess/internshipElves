package com.internshipElves.service.impl;

import com.internshipElves.dao.ComProductDAO;
import com.internshipElves.entity.ComProduct;
import com.internshipElves.service.ComProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComProductServiceImpl implements ComProductService {
    @Autowired
    private ComProductDAO comProductDAO;

    /**
     *    添加企业产品
     * @param comProduct  企业产品
     * @return
     */
    @Override
    public Integer insertProduct(ComProduct comProduct) {
         Integer rows =  comProductDAO.insert(comProduct);
         System.out.println("-------添加企业产品返回受印象行数 ："+rows);
         return rows;
    }

    /**
     *     根据公司Id  查询公司产品名称、网址、产品简介
     * @param comId   公司id
     * @return
     */
    @Override
    public ComProduct queryComProduct(Integer comId) {
        ComProduct comProduct =  comProductDAO.selectByPrimaryKey(comId);
        System.out.println("servicer    ="+comProduct);
        return comProduct;
    }
}
