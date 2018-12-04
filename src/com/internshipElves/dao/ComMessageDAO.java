package com.internshipElves.dao;

import com.internshipElves.entity.ComMessage;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ComMessageDAO {
    int deleteByPrimaryKey(Integer comMessageId);

    int insert(ComMessage record);

    int insertSelective(ComMessage record);

//    ComMessage selectByPrimaryKey(Integer comMessageId);

    int updateByPrimaryKeySelective(ComMessage record);

//    int updateByPrimaryKey(ComMessage record);

    //根据公司id查询
    ComMessage queryByComId(Integer comId);
    //查询获得所有的公司列表数
    Integer queryAllCount();
    //根据条件查询公司列表数
    Integer queryAllCountByCondition(ComMessage comMessage);


    //查询获得所有的公司列表
    List<ComMessage> queryAll(@Param("comCity") String comCity, @Param("comDeplo")
            String comDeplo, @Param("comField" )String comField);


    //分页获得公司列表
    List<ComMessage> queryByPage(@Param("startRecord") Integer startRecord,
                                 @Param("pageSize") Integer pageSize,
                                 @Param("comCity") String comCity,@Param("comDeplo")
                                         String comDeplo,@Param("comField" )String comField);
    //根据名称查询查询公司
    ComMessage queryByName(String name);

    /**
     *    根据公司基本信息id 查询公司基本信息
     * @param comId   公司id
     * @return   返回公司基本信息
     */
    ComMessage selectByPrimaryKey(Integer comId);

    /**
     *  根据comId修改公司名称
     * @param comMessage gong si xin xi
     * @return   int
     */
    Integer updateByPrimaryKey(ComMessage comMessage);

    /**
     * 添加公司信息
     * @param comMessage   公司信息
     * @return
     */
    Integer  save(ComMessage comMessage);

    /**
     *  根据comId修改 公司地址网址领域规模
     * @param comMessage 公司地址网址领域规模
     * @return   int
     */
    int updateByPrimaryKey2(ComMessage comMessage);



    /**
     *  根据comId修改 公司发展阶段
     * @param comMessage 公司发展阶段
     * @return   int
     */
    int updateByPrimaryKey3(ComMessage comMessage);



}