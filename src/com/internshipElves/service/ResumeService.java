package com.internshipElves.service;

import com.internshipElves.entity.Resume;


public interface ResumeService {
    //添加求职意向的记录：resume表
    public int insert(Resume resume);


    //根据学生id查询简历
    Resume queryByStuId(Integer stuId);

//根据学生id修改
    public int updateByStuId(Integer stuId ,Resume resume);


    //根据学生id修改自我描述
    public int updateAByStuId(Integer stuId ,Resume resume);
}




