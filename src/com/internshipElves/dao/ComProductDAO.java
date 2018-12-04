package com.internshipElves.dao;

import com.internshipElves.entity.ComProduct;

public interface ComProductDAO {
    int deleteByPrimaryKey(Integer comProductId);

//    int insert(ComProduct record);

    int insertSelective(ComProduct record);

    /**
     *     根据公司id  查询公司产品信息
     * @param comId    公司id
     * @return    返回公司产品信息
     */
    ComProduct selectByPrimaryKey(Integer comId);

//    ComProduct selectByPrimaryKey(Integer comProductId);

    int updateByPrimaryKeySelective(ComProduct record);

    int updateByPrimaryKey(ComProduct record);

    /**
     *    添加产品信息
     * @param comProduct   产品信息
     * @return  产品信息
     */
    Integer insert(ComProduct comProduct);
}