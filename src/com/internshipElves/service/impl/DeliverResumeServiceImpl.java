package com.internshipElves.service.impl;

import com.internshipElves.dao.DeliverResumeDAO;
import com.internshipElves.entity.DeliverResume;
import com.internshipElves.service.DeliverResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.Date;
import java.util.List;

@Service
public class DeliverResumeServiceImpl implements DeliverResumeService {
    @Autowired
    DeliverResumeDAO deliverResumeDAO;

    //添加投递简历的记录
    @Override
    public int insert(DeliverResume resume) {
        int row = deliverResumeDAO.insert(resume);
        return row;
    }

    @Override
    public List<DeliverResume> queryByStuId(Integer stuId) {
        return deliverResumeDAO.queryByStuId ( stuId );
    }

    @Override
    public List<DeliverResume> queryByStuIdAndStatus(Integer stuId, Integer status) {
        return deliverResumeDAO.queryByStuIdAndStatus ( stuId,status );
    }

    @Override
    public List<DeliverResume> queryByComIdAndStatus(Integer comId, Integer status) {
        return deliverResumeDAO.queryByComIdAndStatus ( comId,status );
    }

    @Override
    public int updateStatusById( Integer deliverResumeStatus,Integer deliverResumeId) {
        Date date = new Date();
        return deliverResumeDAO.updateByPrimaryKey ( deliverResumeStatus,date,deliverResumeId );
    }
    @Override
    public DeliverResume queryByPreparaA(String deliverPrepareA,Integer id) {

        return deliverResumeDAO.queryByPreparaA(deliverPrepareA , id);
    }
}
