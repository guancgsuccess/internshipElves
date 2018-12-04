package com.internshipElves.dao;

import com.internshipElves.entity.DeliverResume;
import com.internshipElves.entity.DeliverResumeKey;
import org.apache.ibatis.annotations.Param;


import java.util.Date;
import java.util.List;

public interface DeliverResumeDAO {
    int deleteByPrimaryKey(DeliverResumeKey key);

    int insert(DeliverResume record);

    int insertSelective(DeliverResume record);

    DeliverResume selectByPrimaryKey(DeliverResumeKey key);

    int updateByPrimaryKeySelective(DeliverResume record);

    int updateByPrimaryKey(DeliverResume record);



    //根据主键修改
    int updateByPrimaryKey(@Param ( "deliverResumeStatus" ) Integer deliverResumeStatus, @Param ( "deliverResumeTime" ) Date deliverResumeTime , @Param ( "deliverResumeId" ) Integer deliverResumeId);



    //根据投递状态id和学生id查询投递状态
    DeliverResume queryByPrimaryKey(DeliverResumeKey key);

    //根据学生id查询简历状态
    List<DeliverResume> queryByStuId(Integer stuId);

    //根据学生id和状态查询
    List<DeliverResume> queryByStuIdAndStatus(@Param( "stuId" ) Integer stuId, @Param ( "status" ) Integer status);

    //根据公司id和状态查询
    List<DeliverResume> queryByComIdAndStatus(@Param ( "comId" ) Integer comId,@Param ( "status" ) Integer status);

    //根据简历id查询（）
    DeliverResume queryByPreparaA(@Param("deliverPrepareA") String deliverPrepareA,@Param("stuId") Integer stuId);
}