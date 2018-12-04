package com.internshipElves.service;

import com.internshipElves.entity.ComCreateTeam;

public interface ComCreateTeamService {
    ComCreateTeam queryByComId(Integer comId);

    /**
     *   添加创始人信息
     * @param comCreateTeam 创始人信息
     * @return   创始人信息
     */
    public   Integer  saveCreateTeam(ComCreateTeam comCreateTeam);

    /**
     *   查询创始人信息
     * @param comId
     * @return
     */
    public   ComCreateTeam  queryComCreateTeam(Integer comId);
}
