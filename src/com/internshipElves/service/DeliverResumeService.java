package com.internshipElves.service;

import com.internshipElves.entity.DeliverResume;

import java.util.List;

public interface DeliverResumeService {
    //添加投递简历的记录
    public int insert(DeliverResume resume);



//查询
    List<DeliverResume> queryByStuId(Integer stuId);


    List<DeliverResume> queryByStuIdAndStatus(Integer stuId ,Integer status);


    List<DeliverResume> queryByComIdAndStatus(Integer comId ,Integer status);

//修改
    int updateStatusById(Integer deliverResumeStatus,Integer deliverResumeId);
    //根据发布职位id查询
    DeliverResume queryByPreparaA(String deliverPrepareA,Integer id );

}
