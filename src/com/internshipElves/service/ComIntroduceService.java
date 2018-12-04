package com.internshipElves.service;

import com.internshipElves.entity.ComIntroduce;

public interface ComIntroduceService {

    /**
     *   添加公司介绍
     * @param comIntroduce
     * @return
     */
    public   Integer   insertComIntroduce(ComIntroduce comIntroduce);


    /**
     *   根据公司ID 查询公司介绍
     * @param comId    公司id
     * @return  公司信息
     */
    public ComIntroduce queryComIntroduce(Integer comId);
}
