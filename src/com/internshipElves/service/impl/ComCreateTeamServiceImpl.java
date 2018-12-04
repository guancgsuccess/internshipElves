package com.internshipElves.service.impl;

import com.internshipElves.dao.ComCreateTeamDAO;
import com.internshipElves.entity.ComCreateTeam;
import com.internshipElves.service.ComCreateTeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ComCreateTeamServiceImpl implements ComCreateTeamService {
    @Autowired
    private ComCreateTeamDAO comCreateTeamDAO;
    @Override
    public ComCreateTeam queryByComId(Integer comId) {
        return comCreateTeamDAO.queryByComId ( comId );
    }

    /**
     *     添加创始人信息
     * @param comCreateTeam 创始人信息
     * @return  返回受影响行数
     */
    @Override
    public Integer saveCreateTeam(ComCreateTeam comCreateTeam) {
        Integer  rows =  comCreateTeamDAO.insert(comCreateTeam);
        System.out.println("返回受影响受影响行数   ：  " + rows);
        return rows;
    }

    /**
     *   查询创始人信息
     * @param comId   公司id
     * @return 创始人信息
     */
    @Override
    public ComCreateTeam queryComCreateTeam(Integer comId) {
        ComCreateTeam comCreateTeam = comCreateTeamDAO.selectByPrimaryKey(comId);
        System.out.println( "comCreateTeam   =" +comCreateTeam);
        return  comCreateTeam;
    }
}
