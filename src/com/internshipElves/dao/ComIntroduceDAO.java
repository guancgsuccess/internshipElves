package com.internshipElves.dao;

import com.internshipElves.entity.ComIntroduce;

public interface ComIntroduceDAO {
    int deleteByPrimaryKey(Integer comIntroduceId);

//    int insert(ComIntroduce record);
    /**
     *  添加公司介绍信息
     * @param comIntroduce 公司介绍信息
     * @return 公司介绍信息
     */
    Integer insert(ComIntroduce comIntroduce);

    int insertSelective(ComIntroduce record);

//    ComIntroduce selectByPrimaryKey(Integer comIntroduceId);

    /**
     *   根据id查询 公司介绍信息
     * @param comId    公司id
     * @return    公司信息
     */
    ComIntroduce selectByPrimaryKey(Integer comId);

    int updateByPrimaryKeySelective(ComIntroduce record);

    int updateByPrimaryKey(ComIntroduce record);
}