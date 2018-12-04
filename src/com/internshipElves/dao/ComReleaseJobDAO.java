package com.internshipElves.dao;


import com.internshipElves.entity.ComReleaseJob;
import com.internshipElves.entity.HotJob;
import com.internshipElves.util.PageModel;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository("comReleaseJobDAO")
public interface ComReleaseJobDAO {
    int deleteByPrimaryKey(Integer comReleaseJobId);

    int insert(ComReleaseJob record);

    int insertSelective(ComReleaseJob record);

    ComReleaseJob selectByPrimaryKey(Integer comReleaseJobId);

    int updateByPrimaryKeySelective(ComReleaseJob record);

    int updateByPrimaryKey(ComReleaseJob record);

    /**
     * 返回热门职业的集合
     * @return 热门职业的集合
     */
    public List<HotJob> hotJob();

    /**
     * 返回最新职业的集合
     * @return 最新职业的集合
     */
    public List<HotJob> newJob();

    //查询企业发布简历的所有信息
    List<ComReleaseJob> queryAll();


    ComReleaseJob queryByPrimaryKey(Integer comReleaseJobId);

    //根据职位名称查询
    List<ComReleaseJob> queryByJobName(String jobName);


    //1. 查询总记录数
    @Select("select count(com_release_job_id) from com_release_job")
    Integer queryCount();
    //2. 分页查询
    @Select("select  com_release_job_id, com_id, com_release_job_type, com_release_job_name, com_release_job_depart, \n" +
            "    com_release_job_prop, com_release_job_salary_low, com_release_job_salary_high, com_release_job_city, \n" +
            "    com_release_job_exp, com_release_job_requir, com_release_job_temp, com_release_job_describe, \n" +
            "    com_release_job_addr, com_release_job_email, com_release_job_time, com_release_job_update_time" +
            " from com_release_job limit #{startRecord},#{pageSize}")
    List<ComReleaseJob> queryJobByPage(PageModel<ComReleaseJob> pageModel);


    //按职位名称分页查询
    @Select("select  com_release_job_id, com_id, com_release_job_type, com_release_job_name, com_release_job_depart, \n" +
            "    com_release_job_prop, com_release_job_salary_low, com_release_job_salary_high, com_release_job_city, \n" +
            "    com_release_job_exp, com_release_job_requir, com_release_job_temp, com_release_job_describe, \n" +
            "    com_release_job_addr, com_release_job_email, com_release_job_time, com_release_job_update_time" +
            " from com_release_job where" +
            " (case when #{comReleaseJobName} is not null and #{comReleaseJobName} != '' then (com_release_job_name = #{comReleaseJobName}) else (1=1) end) and" +
            " (case when #{comReleaseJobCity} is not null and #{comReleaseJobCity} != '' then (com_release_job_city = #{comReleaseJobCity}) else (1=1) end) and" +
            " (case when #{comReleaseJobSalaryLow} is not null and #{comReleaseJobSalaryLow} != '' then (com_release_job_salary_low >= #{comReleaseJobSalaryLow}) else(1=1) end) and" +
            " (case when #{comReleaseJobSalaryHigh} is not null and #{comReleaseJobSalaryHigh} != '' then (com_release_job_salary_high <= #{comReleaseJobSalaryHigh}) else(1=1) end) and" +
            " (case when #{comReleaseJobExp} is not null and #{comReleaseJobExp} != '' then (com_release_job_exp = #{comReleaseJobExp}) else(1=1) end) and" +
            " (case when #{comReleaseJobRequir} is not null and #{comReleaseJobRequir} !='' then (com_release_job_requir = #{comReleaseJobRequir}) else(1=1) end) and" +
            " (case when #{comReleaseJobProp} is not null and #{comReleaseJobProp} !='' then (com_release_job_prop = #{comReleaseJobProp}) else(1=1) end)" +
            " limit #{pageModel.startRecord},#{pageModel.pageSize}")
    List<ComReleaseJob> queryJobByNameAndPage(@Param ( "pageModel" ) PageModel<ComReleaseJob> pageModel, @Param ( "comReleaseJobName" ) String comReleaseJobName, @Param ( "comReleaseJobCity" ) String comReleaseJobCity,
                                              @Param ( "comReleaseJobSalaryLow" )String comReleaseJobSalaryLow,
                                              @Param ( "comReleaseJobSalaryHigh" )String comReleaseJobSalaryHigh,
                                              @Param ( "comReleaseJobExp" )String comReleaseJobExp,
                                              @Param ( "comReleaseJobRequir")String comReleaseJobRequir,
                                              @Param( "comReleaseJobProp" )String comReleaseJobProp);

    //按职位查记录数
    @Select("select count(com_release_job_id) from com_release_job where " +
            "(case when #{comReleaseJobName} is not null and #{comReleaseJobName} != '' then (com_release_job_name = #{comReleaseJobName}) else (1=1) end) and " +
            "(case when #{comReleaseJobCity} is not null and #{comReleaseJobCity} != '' then (com_release_job_city = #{comReleaseJobCity}) else (1=1) end) and" +
            "(case when #{comReleaseJobSalaryLow} is not null and #{comReleaseJobSalaryLow} != '' then (com_release_job_salary_low >= #{comReleaseJobSalaryLow}) else(1=1) end) and" +
            "(case when #{comReleaseJobSalaryHigh} is not null and #{comReleaseJobSalaryHigh} != '' then (com_release_job_salary_high <= #{comReleaseJobSalaryHigh}) else(1=1) end) and" +
            "(case when #{comReleaseJobExp} is not null and #{comReleaseJobExp} != '' then (com_release_job_exp = #{comReleaseJobExp}) else(1=1) end) and" +
            "(case when #{comReleaseJobRequir} is not null and #{comReleaseJobRequir} !='' then (com_release_job_requir = #{comReleaseJobRequir}) else(1=1) end) and" +
            "(case when #{comReleaseJobProp} is not null and #{comReleaseJobProp} !='' then (com_release_job_prop = #{comReleaseJobProp}) else(1=1) end) "
    )
    Integer queryCountByName(@Param ( "comReleaseJobName" ) String comReleaseJobName,@Param ( "comReleaseJobCity" ) String comReleaseJobCity,
                             @Param ( "comReleaseJobSalaryLow" )String comReleaseJobSalaryLow,
                             @Param ( "comReleaseJobSalaryHigh" )String comReleaseJobSalaryHigh,
                             @Param ( "comReleaseJobExp" )String comReleaseJobExp,
                             @Param ( "comReleaseJobRequir")String comReleaseJobRequir,
                             @Param ( "comReleaseJobProp" )String comReleaseJobProp);

    /**
     * 根据公司id 和状态 查询部分信息
     * @param comId
     * @return
     */
    List<ComReleaseJob> queryByKey(@Param("comId") Integer comId,@Param("comReleaseJobStatus") Integer comReleaseJobStatus);

    //根据id修改
    Integer updateById(@Param("comReleaseJobId") Integer comReleaseJobId,@Param("comReleaseJobStatus") Integer comReleaseJobStatus);
}