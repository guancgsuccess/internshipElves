package com.internshipElves.service;

import com.internshipElves.entity.ComMessage;

import java.util.List;

public interface ComMessageService {

    ComMessage queryByComId(Integer comId);

    /**
     *    添加基本信息
     * @param
     * @return   返回 comMessage
     */
    public Integer insertComMessage(ComMessage comMessage) ;

    /**
     * 根据id查询信息
     * @param comId  公司基本信息Id
     * @return   返回公司基本信息
     */
    public   ComMessage  queryComMessage(Integer comId);


    /**
     *    修改 基本信息  （公司名称  、 一句话）
     * @return
     */
    public   Integer  updateByComId(ComMessage comMessage);

    /**
     *    修改 基本信息  （公司地址 网址 领域 规模）
     * @return
     */
    public   Integer  updateByComId2(ComMessage comMessage);

    /**
     *    修改 基本信息  公司发展阶段
     * @return
     */
    public   Integer  updateByComId3(ComMessage comMessage);


    //查询所有的公司列表数
    public Integer queryAllCount();

    //查询所有的公司列表
    public List<ComMessage> queryAll(String comCity, String comDeplo, String comField);
    //分页获得公司列表
    public List<ComMessage> queryByPage(Integer startRecord,Integer pageSize,String comCity,String comDeplo,String comField);

    //根据条件查询公司列表数
    public Integer queryAllCountByCondition(ComMessage comMessage);
    //根据姓名查询公司列表
    public ComMessage queryByName(String name);
}
