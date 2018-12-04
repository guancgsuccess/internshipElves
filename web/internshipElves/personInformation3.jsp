<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2018/10/13
  Time: 15:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的简历</title>

    <title>Title</title>
    <link href="/css/personInformation.css" rel="stylesheet">
    <script src="/js/personInformation.js"></script>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="description" content="实习精灵是国内领先的实习生招聘平台,500强名企实习,靠谱实习机会,优质实习信息,优秀实习生,找实习就上实习僧,实习生招聘首选实习僧。">
    <meta name="keywords" content="实习,实习生,找实习,实习生招聘,暑期实习,实习僧">
    <meta name="Robots" content="all">
    <!--<meta property="qc:admins" content="2040752403463010135676375"/>-->
    <!--<meta name="baidu-site-verification" content="wTCpQ2cQYQ" />-->
    <link rel="Shortcut Icon" href="//sxsimg.xiaoyuanzhao.com/static/img/favicon.ico">
    <link rel="stylesheet" href=https://sxsimg.xiaoyuanzhao.com/static/css/resume_manage_chinese2.css?v=7aa117f64fc90c5b1493112ac33b6d49>
    <link rel="stylesheet" href=https://sxsimg.xiaoyuanzhao.com/static/css/resume_manage_chinese3.css?v=8a89d6ec9d0927a0de6cf95458244168>
    <link rel="stylesheet" href=https://sxsimg.xiaoyuanzhao.com/static/css/jquery.datetimepicker.css?v=22baa8aa2e0e17c6f0aacea433dc4737/>
    <link rel="stylesheet" href="https://sxsimg.xiaoyuanzhao.com/static/css/croppic.css?v=6e1fb35ec623bae366666c9dafc78952"/>
    <link rel="stylesheet" href="https://sxsimg.xiaoyuanzhao.com/static/css/webuploader.css?v=f70bf56e981d9379d6387fd25e0218bf"/>
    <link rel="stylesheet" href="https://sxsimg.xiaoyuanzhao.com/static/css/jquery.mCustomScrollbar.min.css?v=f59e3f4c0087b4d8ddc27bdd9c9ab92b"/>
    <style>
        /* 选择器样式部分 */
        .jq-selector {
            display: none;
            position: absolute;
            /*overflow-x: hidden;*/
            background-color: #fff;
            padding: 10px;
            -webkit-box-shadow: 0 0 15px rgba(0, 0, 0, .1);
            -moz-box-shadow: 0 0 15px rgba(0, 0, 0, .1);
            box-shadow: 0 0 15px rgba(0, 0, 0, .1);
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            z-index: 2;
            font-size: 13px;
            color: #262626;
        }
        .jq-selector .city-list {
            position: relative;
            height: 300px;
        }
        .jq-selector .selector-parent {
            width: 120px;
            position: absolute;
            height: 100%;
            /*overflow-y: auto;*/
        }
        .jq-selector .selector-parent li {
            display: block;
            width: 96px;
            height: 36px;
            line-height: 36px;
            text-align: center;
            border-left: 4px solid transparent;
            cursor: pointer;
        }
        .jq-selector .selector-parent li:hover {
            color: #6AA2E4;
            border-left-color: #6AA2E4;
        }
        .jq-selector .selector-parent li.active {
            color: #6AA2E4;
            border-left-color: #6AA2E4;
        }
        .jq-selector .selector-child {
            padding-left: 130px;
            height: 100%;
            /*overflow-y: auto;*/
        }
        .jq-selector .selector-child li {
            float: left;
            padding: 7px 12px;
            border: 1px solid #EBEBEB;
            -webkit-border-radius: 3px;
            -moz-border-radius: 3px;
            border-radius: 3px;
            margin: 12px 10px 0 0;
            cursor: pointer;
        }
        .jq-selector .selector-child li:hover {
            color: #6AA2E4;
            border-color: #6AA2E4;
        }
        .jq-selector .selector-child li.active {
            color: #6AA2E4;
            border-color: #6AA2E4;
        }
        .jq-selector .search-result {
            width: 80%;
            max-height: 300px;
            display: none;
            overflow: hidden;
        }
        .jq-selector .search-result li {
            height: 36px;
            padding-left: 16px;
            cursor: pointer;
            line-height: 36px;
        }
        .jq-selector .search-result li p {
            display: inline-block;
            text-overflow: ellipsis;
            white-space: nowrap;
            overflow: hidden;
        }
        .jq-selector .search-result li p:nth-child(2) {
            color: #B8B8B8;
            margin-left: 10px;
        }
        .jq-selector .search-result li:hover {
            background-color: #eee;
        }
        .jq-selector .search-result li.none {
            color: #B8B8B8;
            cursor: default;
        }
        .jq-selector .search-result li.none:hover {
            background-color: transparent;
        }
        .mCSB_scrollTools .mCSB_dragger {
            height: 56px;
        }
        .mCSB_scrollTools .mCSB_dragger .mCSB_dragger_bar {
            background-color: #F0F0F0;
        }
        .mCSB_scrollTools .mCSB_draggerRail {
            background-color: transparent;
        }
        .mCSB_scrollTools .mCSB_dragger:hover .mCSB_dragger_bar {
            width: 4px;
            background-color: #F0F0F0;
        }
        .mCSB_scrollTools .mCSB_dragger.mCSB_dragger_onDrag .mCSB_dragger_bar {
            background-color: #F0F0F0;
        }
    </style>
    <style>
        .webuploader-pick {
            width: 80%;
            height: 100%;
            padding: 0;
            background-color: transparent;
        }
        #attachPicker>div {
            width: 80% !important;
            height: 100% !important;
        }
        #WU_FILE_0 {
            text-align: center;
            margin-top: 60px;
        }
        .progress .progress-bar {
            background: #6aa2e4;
            height: 18px;
        }
    </style>
    <style>
        #croppic, #cropContainerHeaderButton {
            width: 106px;
            height: 106px;
            position: absolute;
            margin: 0;
            left: 0;
            top: 0;
            padding: 0;
        }
        #croppic {
            top: -30px;
            z-index: 3;
        }
        #cropContainerHeaderButton {
            bottom: 2px;
            z-index: 4;
            cursor: pointer;
        }
        .cropControls {
            width: 106px;
            top: 120px;
        }
        .cropControls i {
            font-size: 12px;
        }
    </style>

    <script type='text/javascript'>
        var _vds = _vds || [];
        window._vds = _vds;
        (function(){
            function getCookie(name)
            {
                var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
                if(arr=document.cookie.match(reg))
                    return unescape(arr[2]);
                else
                    return null;
            }
            _vds.push(['setAccountId', '96145fbb44e87b47']);
            _vds.push(['setCS1', 'user_id', getCookie('affefdgx')]);
            _vds.push(['setCS2', 'user_type', getCookie('userflag')]);
            (function() {
                var vds = document.createElement('script');
                vds.type='text/javascript';
                vds.async = true;
                vds.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'dn-growing.qbox.me/vds.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(vds, s);
            })();
        })();
    </script>
    <script>
        var isFirstResume = false,
            languageType = 'chinese',
            userExpand = {"status": "normal", "subscription_max_num": 3, "deliver_max_num": 10, "honor_max_num": 3, "product_max_num": 3, "uuid": "cap_wsgmqxh2hgd5", "project_max_num": 3, "edu_max_num": 3, "resume_max_num": 2, "attach_max_num": 2, "skill_max_num": 3, "deliver_num": null, "exp_max_num": 4, "resume_num": null, "user_uuid": "usr_yrxyuxzolv0x", "id": 125029515, "subscription_num": null, "practise_max_num": 3},
            sdtoken = 'QTFPqF3pf70O9ywvskN5mWAsz69yu3xg',
            resuuid = 'res_6cfslicacs0a',
            groupuuid = 'grp_9mlskqzgjktr',
            stype = 'online',
            isdefault = true,
            atta_info = [],
            practice_info = [],
            product_info = [],
            skill_info = [],
            exp_info = [],
            project_info = [],
            description = {"judge": null};
        baseinfo = true;
        expect_job = true;
        education = true;
        //is_show_gift_bag控制是否显示新人礼包弹框
        is_show_gift_bag = false;
        is_show_gift_top = true;
    </script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <link rel="icon" href="/favicon.ico" type="image/x-icon"/>
    <title>人才招聘求职网-前程无忧 | 51job 简历分析</title>
    <meta name="description" content="实习精灵为企业提供人才招聘、猎头、培训、测评和人事外包在内的全方位的人力资源服务，帮助个人求职者与企业搭建最佳的人才招募和人才培养渠道">
    <meta name="keywords" content="人才，招聘，简历，工作，面试，薪酬，跳槽，猎头，培训，测评，人事">
    <meta name="robots" content="all">
    <meta http-equiv="Expires" content="0">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Pragma" content="no-cache">
    <link href="//js.51jobcdn.com/in/css/2017/public/base.css?20180408" rel="stylesheet" type="text/css" />
    <link href="//js.51jobcdn.com/in/css/2017/public/form.css?20180408" rel="stylesheet" type="text/css" />
    <link href="//js.51jobcdn.com/in/css/2017/public/panel-pop.css?20180408" rel="stylesheet" type="text/css" />
    <link href="//js.51jobcdn.com/in/css/2016/imgareaselect.css?20180408" rel="stylesheet" type="text/css" />
    <link href="//js.51jobcdn.com/in/css/2016/step.css?20180408" rel="stylesheet" type="text/css" />
    <script language="javascript">
        var _tkd = _tkd || []; //点击量统计用
        var lang = [];
        var supporthttps = 1; //浏览器是否支持https
        var currenthttps = (window.location.protocol === 'https:') ? '1' : '0'; //当前是否为https
        var systemtime = 1540186212147;
        var d_system_client_time = systemtime - new Date().getTime();
        var trackConfig = {
            'guid': 'ba3f309faa31ea8047690ff261daa199',
            'ip': '58.211.151.194',
            'accountid': '146111979',
            'refpage': '',
            'refdomain': '',
            'domain': 'i.51job.com',
            'pageName': 'tri_resume.php',
            'partner': '',
            'islanding': '0',
        };
        if (window.localStorage instanceof Object)
        {
        }
        window.cfg = {
            lang:'c',
            domain : {
                my : 'http://my.51job.com',
                login : 'https://login.51job.com',
                search : 'https://search.51job.com',
                www : '//www.51job.com',
                jobs : 'https://jobs.51job.com',
                jianli : 'https://jianli.51job.com',
                company : '//company.51job.com',
                i : '//i.51job.com',
                jc : '//jc.51job.com',
                map : 'https://map.51job.com',
                m : 'https://m.51job.com',
                cdn : '//js.51jobcdn.com',
                help : 'https://help.51job.com',
                img : '//img03.51jobcdn.com',
                dj : '//dj.51job.com',
                mdj : '//mdj.51job.com',
                mq : '//mq.51job.com',
                mmq : '//mmq.51job.com',
                kbc : 'https://kbc.51job.com',
                mtr : 'https://medu.51job.com',
                tr : 'https://edu.51job.com',
            }
        };

        window.cfg.url = {
            root : 'https://search.51job.com/jobsearch',
            image : '//img01.51jobcdn.com/im/2009',
            image_search : '//img01.51jobcdn.com/im/2009/search'
        }
        window.cfg.root = '//i.51job.com/resume';
        window.cfg.root_i = '//i.51job.com';
        window.cfg.root_img = '//img04.51jobcdn.com/im/2016';
        window.cfg.root_ajax = '//i.51job.com/resume/ajax';
        window.cfg.root_login_ajax = 'https://login.51job.com/ajax';
        window.cfg.standard_resume_url = '//i.51job.com/resume/standard_resume.php';
        window.cfg.nowdate = '2018-10-22';
        window.cfg.langs = {

        }
        window.cfg.module_num = {
            work : '20',
            project : '50',
            education : '20',
            schoolaward : '20',
            schooljob : '20',
            skilllanguage : '20',
            skillcertification : '20',
            skilltrain : '20',
            additionattach : '40',
            additionother : '20'
        }
        window.cfg.attachment_num = {
            additionattachfile : '20',
            additionattachlink : '20'
        }
    </script>
    <script type="text/javascript" src="//js.51jobcdn.com/in/js/2016/pointtrack.js?20180605"></script>

    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/jquery.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/jquery.form.min.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/login/auth.js?20180815"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/resume/resume_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/merge_data_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/resume/resume.js?20180801"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/selectionlist.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/jquery.placeholder.min.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/resume/tri_resume.js?20180823"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/resume/pointtrack_resume.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/jquery.imgareaselect.min.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/calendar.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/resume/modify_userinfo.js?20180801"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/login/mobile_original.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/login/d_nation.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/layer.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/common_select.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/common_layer.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/common_association.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/layer_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/indtype_array_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/funtype_array_c.js?20180815"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/area_array_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/cert_array_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/itskill_array_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/major_array_c.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/association_main.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/layer_main_navigation.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/layer_main_map.js?20180815"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/layer/layer_main.js?20180319"></script>
    <script language="javascript" src="//js.51jobcdn.com/in/js/2016/login/ujz.js?20180408"></script>

</head>
<body>
<div>

    <div style="margin-right: 23px;">
        <div style="height: 60px;width:780px;background-color:#fafafa;border-top: 0px solid #019875;
line-height: 57px;font-size: 20px;color: #999;display: inline-block; ">
            <img src="/images/logo.png" width="229" height ="43"style="position: relative;left: 300px;top:10px;"  alt="实习精灵">
            <div style="position: relative;bottom: 40px;left: 550px;">


                <a href="${pageContext.request.contextPath}/internshipElves/index.jsp"><label style="padding: 30px;">首页</label></a>
                <a href="${pageContext.request.contextPath}/student/isLogin" ><label style="padding: 30px;">我的简历</label></a>
                <a href="${pageContext.request.contextPath}/internshipElves/companyList.jsp" rel="nofollow"><label style="padding: 30px;">公司</label></a>
                <a href="${pageContext.request.contextPath}/personCenter/loginIn" rel="nofollow"><label style="padding: 30px;">个人中心</label></a>

            </div>


        </div>



        <div style="position:relative;right: 110px;">
            <div class="wp Fm" style="position: relative;;left: 145px;">
                <div class="setp">
                    <div class="mail">
                        <div class="e">
                            <p><i></i><em></em></p>
                            <b>1</b>
                            <span>基本信息</span>
                        </div>
                        <div class="e">
                            <p><i></i><em></em></p>
                            <b>2</b>
                            <span>项目经验</span>
                        </div>
                        <div class="e">
                            <p><i></i><em></em></p>
                            <b>3</b>
                            <span style="color: #00b38a;font-weight: 900;">求职意向</span>
                        </div>
                    </div>
                </div>

                <div class="sin">


                </div>
            </div>
            <script language="JavaScript">
                javascript:window.history.forward(1);
            </script>




            <div id="six"style="width:670px;height:570px;font-size: 16px;background-color: #fff;padding-left: 50px;">
                <h3 style="font-size: 20px;color: #00b38a">求职意向：</h3><br>
                <form action="${pageContext.request.contextPath}/information/insert3" method="post">
                    期望工作性质：  <input type="checkbox" name="resumeStuJobNature">全职<input type="checkbox" name="resumeStuJobNature">兼职<input type="checkbox" name="resumeStuJobNature">实习<br><br><br>
                    求职状态：
                    <select name="resumeStuJobStatus">
                        <option>0</option><option>1</option>
                    </select>（0表示立即能够上岗）<br><br><br>
                    期望工作地点：   <input type="text" style="border: 1px solid grey;" id="place" name="resumeStuWorkAddr"onblur="checkplace();"><span id="spanplace"></span><br><br><br>
                    期望从事行业：   <input type="text"id="indutry" style="border: 1px solid grey;"name="resumeStuIndustry" onblur="checkindustry();"><span id="spanindustry"></span><br><br><br>
                    期望职类：      <input type="text"id="category1" style="border: 1px solid grey;"name="resumeStuOccupation"onblur="checkcategory1();"><span id="spancategory1"></span><br><br><br>
                    期望最低月薪：   <input type="text"id="salary" style="border: 1px solid grey;"name="resumeStuSalaryLow"><span id="span4"></span>K<br><br><br>
                    期望最高月薪：   <input type="text"id="salary1" style="border: 1px solid grey;"name="resumeStuSalaryHigh"><span id="span5"></span>K<br><br><br>
                    自我描述：   <input type="text"id="salary2" style="border: 1px solid grey;"name="resumePrepareA"onblur="checksalary();"><span id="span6"></span><br><br><br>
                    期望实习单位类型：<select name="resumePrepareB">
                    <option>国企</option><option>私企</option><option>外企</option><option>政府机关</option><option>事业单位</option>
                </select><br><br><br>
                    <input type="submit" value="保存" id="eight"style="font-size: 18px;width:150px;border-color:#00b38a;background-color: #00b38a;height: 46px;">
                </form>

            </div>


            <div class="wrap clearfix" style="width: 0px;background-color: #fff;position:relative;bottom: 550px;left: 350px;">
                <div class="wrap-r">

                    <div class="module-nav normal">
                        <div class="integrity">
                            <div class="text" style="font-size: 20px;font-weight:900;color: #00b38a">简历完善度</div>
                            <div class="line-box">
                                <div class="line" style="width:15px">
                                    <span class="score" style="left:0px">0%</span>
                                </div>
                            </div>
                        </div>
                        <div class="module">
                            <ul class="module-list">
                                <li class="module1">
                                    <span class="icon icon1"></span>
                                    <p class="name">个人信息</p>
                                    <div class="line"></div>
                                    <div class="complete" style="display: block;"></div>
                                </li>

                                <li class="module2">
                                    <span class="icon icon2"></span>
                                    <p class="name" style="color: #00b38a;font-weight: 900;">求职意向</p>
                                    <div class="line"></div>
                                    <div class="complete" style="display: block;"></div>
                                </li>

                                <li class="module3">
                                    <span class="icon icon3"></span>
                                    <p class="name">教育经历</p>
                                    <div class="line"></div>
                                    <div class="complete" style="display: block;"></div>
                                </li>

                                <li class="module4">
                                    <span class="icon icon6"></span>
                                    <p class="name" >项目经验</p>
                                    <div class="line"></div>
                                    <div class="complete" ></div>
                                </li>
                                <li class="module5">
                                    <span class="icon icon9"></span>
                                    <p class="name">附加信息</p>
                                    <div class="line"></div>
                                    <div class="complete" ></div>
                                </li>

                            </ul>

                            <div class="other-link clearfix">
                                <a class="link1" href="/interns" target="_blank">
                                    <p style="color: #00b38a;font-weight:900;">去投递</p>
                                </a>
                                <a class="link2" href="/resume/jobgift" target="_blank" style="border-color: #00b38a">
                                    <p style="color: #00b38a;font-weight:900;">新人礼</p>
                                </a>
                                <a class="link3" href="javascript:void(0);" target="_blank">
                                    <p style="color: #00b38a;font-weight:900;">AI推荐</p>
                                    <div class="hover">
                                        <p>敬请<br>期待</p>
                                    </div>
                                </a>
                                <a class="link4" href="javascript:void(0);" target="_blank">
                                    <p style="color: #00b38a;font-weight:900;">实习报告</p>
                                    <div class="hover">
                                        <p style="color: #00b38a;">敬请<br>期待</p>
                                    </div>
                                </a>
                            </div>

                            <div class="function clearfix">
                                <div class="invite-btn">
                                    <div class="icon-btn ">
                                        <!--<span class="text">OFF</span>-->
                                        <span class="circle"></span>
                                    </div>
                                    <span class="" style="color: #00b38a;font-weight:900;">企业邀约</span>
                                </div>
                                <div class="diagnosis-btn">
                                    <div class="icon">
                                        <img style="display: none;" src=https://sxsimg.xiaoyuanzhao.com/static/img/resume3/icon5-1.png?v=27945ae802269459b1c93228baaaef13>
                                        <img src=https://sxsimg.xiaoyuanzhao.com/static/img/resume3/icon5-2.png?v=2f4f0bfc2a05f5967254660fed6df26e>
                                    </div>
                                    <span class="open" style="color: #00b38a;font-weight:900;">简历诊断</span>
                                    <div class="diagnosis-ewm">
                                        <p style="color: #00b38a;font-weight:900;">手机扫码诊断</p>
                                        <img src=https://sxsimg.xiaoyuanzhao.com/static/img/resume3/ewm.png?v=fe67b06492881b762befbda63a6c559b>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!---->
                    </div>
                </div>
            </div>
        </div>

    </div>

    <script src=https://sxsimg.xiaoyuanzhao.com/static/js/cite/jquery-1.9.1.min.js?v=397754ba49e9e0cf4e7c190da78dda05></script>
    <script>
        var $basicInfo = $('.basic-info'),
            $expectPractice = $('.expect-practice'),
            $eduBg = $('.edu-bg'),
            $practiceEx = $('.practice-ex'),
            $academicEx = $('.academic-ex'),
            $schoolEx = $('.school-ex'),
            $skillHobby = $('.skill-hobby'),
            $opus = $('.opus'),
            $personalEv = $('.personal-ev'),
            $attachment = $('.attachment'),
            $moduleList = $('.module-list');
    </script>
    <script src=https://sxsimg.xiaoyuanzhao.com/static/js/resume2/art-template.js?v=373f227a23b6f1354dac6b7df5587429></script>
    <script src=https://sxsimg.xiaoyuanzhao.com/static/js/cite/autosize.min.js?v=5a992eb72bcf4ef1fa1d61b73b64e889></script>
    <script src=https://sxsimg.xiaoyuanzhao.com/static/js/cite/jquery.datetimepicker.js?v=73ba5cfb741fd00574e7c0139d2a7355></script>
    <script src=https://sxsimg.xiaoyuanzhao.com/static/js/resume3/jq.city-selector.js?v=e7ac4d80566fcadee0f6432ffa252b69></script>
    <script src=https://sxsimg.xiaoyuanzhao.com/static/js/resume3/jq.school-selector.js?v=bace6f2eebc1b3145d54789e7fc76c40></script>
    <script src=https://sxsimg.xiaoyuanzhao.com/static/js/resume3/choose-tool.js?v=4d1f29a83a87ef81a29a4b3e1cc78875></script>
    <script src=https://sxsimg.xiaoyuanzhao.com/static/js/resume3/jquery.mCustomScrollbar.concat.min.js?v=42a368e95b4a38989c8984c672d29ec0></script>
    <script src="https://sxsimg.xiaoyuanzhao.com/static/js/upload.js?v=28a131a39dc38aa08c75e984d12e2c3d"></script>
    <script src="https://sxsimg.xiaoyuanzhao.com/static/js/cite/croppic.min.js?v=decf46711b96a614925b3f1c11ac3c1a"></script>
    <script src="https://sxsimg.xiaoyuanzhao.com/static/js/webuploader.js?v=bf448310ed783f8c2bc0474e5cc9825b"></script>
    <script>
    </script>
    <!--基本信息模板-->
    <script id="tpl1" type="text/html"></script>
    <script id="tpl1-1" type="text/html"></script>
    <!--期望实习模板-->

    <script id="tpl2" type="text/html"></script>
    <script id="tpl2-1" type="text/html">
        <? for(var i = 0;i<info.length;i++) {?>
        <div class="content clearfix">
            <p class="post"><b><i>期望职位</i>：</b><span><?=info[i][0].value?></span></p>
            <p class="area"><b><i>实习城市</i>：</b><span><?=info[i][1].value?></span></p>
        </div>
        <?}?>
    </script>

    <!--教育背景模板-->
    <script id="tpl3" type="text/html"></script>
    <script id="tpl3-1" type="text/html"></script>
    <!--实习经历模板-->
    <script id="tpl4" type="text/html"></script>
    <script id="tpl4-1" type="text/html"></script>


</body>
</html>
