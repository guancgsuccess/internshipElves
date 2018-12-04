package com.internshipElves.service.impl;

import com.internshipElves.dao.ComMessageDAO;
import com.internshipElves.entity.ComMessage;
import com.internshipElves.service.ComMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ComMessageServiceImpl implements ComMessageService {
    @Autowired
    private ComMessageDAO comMessageDAO;
    @Override
    public ComMessage queryByComId(Integer comId) {
        return comMessageDAO.queryByComId ( comId );
    }


    @Override
    //查询所有的公司列表数
    public Integer queryAllCount() {
        return comMessageDAO.queryAllCount();
    }

    @Override
    //查询所有的公司列表
    public List<ComMessage> queryAll(String comCity, String comDeplo, String comField) {
        return comMessageDAO.queryAll(comCity,comDeplo,comField);
    }

    @Override
    //分页获得公司列表
    public List<ComMessage> queryByPage(Integer startRecord,
                                        Integer pageSize,
                                        String comCity,
                                        String comDeplo,
                                        String comField) {
        return comMessageDAO.queryByPage(startRecord,pageSize,comCity,comDeplo,comField);
    }

    //根据条件查询列表数
    @Override
    public Integer queryAllCountByCondition(ComMessage comMessage) {
        return comMessageDAO.queryAllCountByCondition(comMessage);
    }

    @Override
    public ComMessage queryByName(String name) {
        return comMessageDAO.queryByName(name);
    }

    /**
     *  添加公司基本信息
     * @param comMessage   公司基本信息
     * @return   添加行数
     */
    @Override
    public Integer insertComMessage(ComMessage comMessage) {
        Integer  rows= comMessageDAO.save(comMessage);
        System.out.println("添加公司信息返回受影响行数      = " + rows);
        return  rows;
    }

    /**
     *  根据id查询公司基本信息
     * @param comId  公司Id
     * @return     公司基本信息
     */
    @Override
    public ComMessage queryComMessage(Integer comId) {
        return comMessageDAO.selectByPrimaryKey(comId);
    }

    /**
     *  修改公司信息
     * @param comMessage  公司信息
     * @return  公司信息
     */
    @Override
    public Integer updateByComId(ComMessage comMessage) {
        return comMessageDAO.updateByPrimaryKey(comMessage);
    }

    /**
     * 修改公司信息 （公司地址 网址 领域 规模）
     * @param comMessage  公司地址 网址 领域 规模
     * @return
     */
    @Override
    public Integer updateByComId2(ComMessage comMessage) {
        return comMessageDAO.updateByPrimaryKey2(comMessage);
    }

    /**
     * 修改公司信息  公司发展阶段
     * @param comMessage   公司发展阶段
     * @return
     */
    @Override
    public Integer updateByComId3(ComMessage comMessage) {
        return comMessageDAO.updateByPrimaryKey3(comMessage);
    }



}
