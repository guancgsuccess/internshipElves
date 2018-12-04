package com.internshipElves.dao;

import com.internshipElves.entity.ComLabel;

public interface ComLabelDAO {
    int deleteByPrimaryKey(Integer comLabelId);

    int insert(ComLabel record);

    int insertSelective(ComLabel record);

    ComLabel selectByPrimaryKey(Integer comLabelId);

    int updateByPrimaryKeySelective(ComLabel record);

    int updateByPrimaryKey(ComLabel record);

    /**
     *   添加企业标签信息
     * @param
     * @return
     */
    Integer save(ComLabel comLabel);
}