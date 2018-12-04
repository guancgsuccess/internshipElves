package com.internshipElves.service.impl;

import com.internshipElves.dao.ProExpDAO;
import com.internshipElves.entity.ProExp;
import com.internshipElves.service.ProExpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProExpServiceImpl implements ProExpService {
    @Autowired
    private ProExpDAO proExpDAO;


    //添加项目经验的记录
    @Override
    public int insert(ProExp record) {
        int row = proExpDAO.insert(record);
        return row;
    }



    //根据简历id查询
    @Override
    public ProExp queryByResumeId(Integer resumeId) {
        return proExpDAO.queryProExpByResumeId ( resumeId );
    }

    //根据简历id修改

    @Override
    public Integer updateByResumeId(Integer resumeId ,ProExp proExp){
        return proExpDAO.updateByResumeId ( resumeId,proExp);
    }
}
