package com.internshipElves.dao;

import com.internshipElves.entity.ComCreateTeam;

public interface ComCreateTeamDAO {
    int deleteByPrimaryKey(Integer comCreateTeamId);

//    int insert(ComCreateTeam record);

    /**
     *   添加企业创始人信息
     * @param comCreateTeam   创始人信息
     * @return    返回创始人信息
     */
    int insert(ComCreateTeam comCreateTeam);

    int insertSelective(ComCreateTeam record);

//    ComCreateTeam selectByPrimaryKey(Integer comCreateTeamId);

    /**
     *  根据公司id查询 创始团队信息
     * @param comId  公司id
     * @return  创始团队信息
     */
    ComCreateTeam selectByPrimaryKey(Integer comId);

    int updateByPrimaryKeySelective(ComCreateTeam record);

    int updateByPrimaryKey(ComCreateTeam record);



    //根据公司id查询
    ComCreateTeam queryByComId(Integer comId);
}