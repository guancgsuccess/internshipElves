package com.internshipElves.service;

import com.internshipElves.entity.ProExp;


public interface ProExpService {
    //添加项目经验的记录:pro-exp表
    public int insert(ProExp proExp);


    //根据简历id查询项目经验
    ProExp queryByResumeId(Integer resumeId);

    //根据简历id修改
    public Integer updateByResumeId(Integer resumeId ,ProExp proExp);
}





