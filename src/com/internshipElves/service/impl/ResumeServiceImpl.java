package com.internshipElves.service.impl;

import com.internshipElves.dao.ResumeDAO;
import com.internshipElves.entity.Resume;
import com.internshipElves.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResumeServiceImpl implements ResumeService {
    @Autowired
    private ResumeDAO resumeDAO;

    //添加求职意向的记录
    @Override
    public int insert(Resume resume) {
        int row = resumeDAO.insert(resume);
        return row;
    }

    @Override
    public Resume queryByStuId(Integer stuId) {
        return resumeDAO.queryResumeByStuId ( stuId );
    }


//根据学生id修改
    public int updateByStuId(Integer stuId ,Resume resume){
        return resumeDAO.updateByStuId ( stuId,resume );
    }

    //根据学生id修改自我描述
    @Override
    public int updateAByStuId(Integer stuId ,Resume resume){
        return resumeDAO.updateAByStuId ( stuId,resume );
    }

}
