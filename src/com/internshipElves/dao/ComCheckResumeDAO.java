package com.internshipElves.dao;


import com.internshipElves.entity.ComCheckResume;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository("comCheckResumeDAO")
public interface ComCheckResumeDAO {
    int deleteByPrimaryKey(Integer comCheckResumeId);

    int insert(ComCheckResume record);

    int insertSelective(ComCheckResume record);

    ComCheckResume selectByPrimaryKey(Integer comCheckResumeId);

    int updateByPrimaryKeySelective(ComCheckResume record);

    int updateByPrimaryKey(ComCheckResume record);

}