package com.internshipElves.dao;

import com.internshipElves.entity.Resume;
import org.apache.ibatis.annotations.Param;

public interface ResumeDAO {
    int deleteByPrimaryKey(Integer resumeId);

    int insert(Resume record);

    int insertSelective(Resume record);



    int updateByPrimaryKeySelective(Resume record);

    int updateByPrimaryKey(Resume record);



    //根据简历id查询简历
    Resume selectByPrimaryKey(Integer resumeId);

    //根据学生id查询简历
    Resume queryResumeByStuId(Integer stuId);

    //根据学生id修改
    Integer updateByStuId(@Param ( "stuId" )Integer stuId,@Param ( "resume" ) Resume resume);

    //根据学生id修改自我描述
    Integer updateAByStuId(@Param ( "stuId" )Integer stuId,@Param ( "resume" ) Resume resume);
}