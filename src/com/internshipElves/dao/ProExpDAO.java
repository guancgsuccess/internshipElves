package com.internshipElves.dao;

import com.internshipElves.entity.ProExp;
import org.apache.ibatis.annotations.Param;

public interface ProExpDAO {
    int deleteByPrimaryKey(Integer proExpId);

    int insert(ProExp record);

    int insertSelective(ProExp record);

    ProExp selectByPrimaryKey(Integer proExpId);

    int updateByPrimaryKeySelective(ProExp record);

    int updateByPrimaryKey(ProExp record);

    //根据简历id查询项目经验
    ProExp queryProExpByResumeId(Integer resumeID);


    //根据简历id修改项目经验
    Integer updateByResumeId(@Param( "resumeId" )Integer resumeId, @Param ( "proExp" )ProExp proExp);
}