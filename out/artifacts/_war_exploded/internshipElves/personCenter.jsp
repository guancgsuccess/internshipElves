<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/css/delivery.css" type="text/css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/delivery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.1.10.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.lib.min.js" type="text/javascript"></script>

    <meta charset="UTF-8">

    <title>个人中心</title>
    <meta name="description" content="实习精灵">
    <meta name="keywords" content="实习精灵">

    <meta name="sogou_site_verification" content="Xs9pZRBFow"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="Robots" content="all">
    <meta property="qc:admins" content="2040752403463010135676375"/>
    <meta name="baidu-site-verification" content="wTCpQ2cQYQ" />
    <meta name="applicable" concent="pc">
    <meta name="mobile-agent" content="format=html5;url=http://wap.shixiseng.com/">
    <link rel="icon" href="//sxsimg.xiaoyuanzhao.com/static/img/favicon.ico" type="image/x-icon" />
    <link rel="Shortcut Icon" href="//sxsimg.xiaoyuanzhao.com/static/img/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://sxsimg.xiaoyuanzhao.com/static/css/style.css?v=f00ff3cb23dce9f47a108ae35abb6ecc"/>
    <link rel="stylesheet" href="https://sxsimg.xiaoyuanzhao.com/static/new_main/css/n_base.css?v=8a72c28b95cf4b171ff244745ebbcb96"/>
    <link rel="stylesheet" href="https://sxsimg.xiaoyuanzhao.com/static/new_main/css/register_index.css?v=cad185b3d3ca597a244aeb15def9558e"/>
    <style>
        #MEIQIA-BTN-HOLDER{
            width: 50px!important;
            height: 52px!important;
            bottom: 40px!important;
            right: 20px!important;
            cursor: pointer!important;
            /*opacity: .3!important;*/
            /*filter: alpha(opacity=30)!important;*/
        }
        #MEIQIA-BTN-HOLDER #MEIQIA-BTN{
            border: none;
            background: none;
            box-shadow: none;
            width: 50px;
            height: 52px;
        }
        #MEIQIA-BTN-HOLDER #MEIQIA-BTN #MEIQIA-BTN-TEXT{
            font-size: 12px;
            width: 50px;
            height: 14px;
            display: inline-block;
            margin: 0;
            margin-top: 6px;
            color: #cbcbcb;
            float: none;
            line-height: 14px;
        }
        #MEIQIA-BTN-HOLDER #MEIQIA-BTN #MEIQIA-BTN-LINE{
            display: none;
        }
        #MEIQIA-BTN-HOLDER #MEIQIA-BTN #MEIQIA-BTN-ICON{
            /*background: url(//sxsimg.xiaoyuanzhao.com/static/new_main/img/right-pn.png) center no-repeat!important;*/
            background: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/right-pn.png?v=6442f322a100901fe0deb21f99339bd2) center no-repeat!important;
            width: 30px;
            height: 30px;
            margin: auto;
            float: none!important;
        }
        /*#MEIQIA-BTN-HOLDER:hover{*/
        /*opacity: 1!important;*/
        /*filter: alpha(opacity=100)!important;*/
        /*}*/
        #MEIQIA-BTN-HOLDER:hover #MEIQIA-BTN #MEIQIA-BTN-ICON{
            /*background-image: url(//sxsimg.xiaoyuanzhao.com/static/new_main/img/right-pa.png)!important;*/
            background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/right-pa.png?v=7ce9e56b62f825b12f7fb66106a9c40e)!important;
        }
        #MEIQIA-BTN-HOLDER:hover #MEIQIA-BTN #MEIQIA-BTN-TEXT {
            color: #6aa2e4;
        }
        #MEIQIA-PANEL-HOLDER{
            bottom: 10px!important;
            right: 35px!important;
        }
        #back_top .back-img {
            /*background: url("//sxsimg.xiaoyuanzhao.com/static/new_main/img/right-hn.png") left top no-repeat;*/
            background: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/right-hn.png?v=759284d0021aab63796581ada3c20abb) left top no-repeat;
        }
        #back_top:hover .back-img {
            /*background-image: url("//sxsimg.xiaoyuanzhao.com/static/new_main/img/right-ha.png");*/
            background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/right-ha.png?v=6316800b8b8d70d92a4be014cef25b04);
        }
        #small-r .small-img {
            /*background: url("//sxsimg.xiaoyuanzhao.com/static/new_main/img/right-sn.png") left top no-repeat;*/
            background: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/right-sn.png?v=b9abb4a098fd1d804367ce007204a68a) left top no-repeat;
        }
        #small-r:hover .small-img {
            /*background-image: url("//sxsimg.xiaoyuanzhao.com/static/new_main/img/right-sa.png");*/
            background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/right-sa.png?v=db1896ee150d36b7091f42c805e8695c);
        }
        .hideimg {
            width: 1px;
            height: 1px;
            display: none !important;
        }
    </style>

    <link rel="stylesheet" href="https://sxsimg.xiaoyuanzhao.com/static/css/trainee_center.css?v=84ca23f953b7ca75b3720dec0fcf81ec"/>
    <link rel="stylesheet" href="https://sxsimg.xiaoyuanzhao.com/static/css/talk_module.css?v=b12198902038820216d2aba7fd630fe0"/>
    <link rel="stylesheet" href="https://sxsimg.xiaoyuanzhao.com/static/css/croppic.css?v=6e1fb35ec623bae366666c9dafc78952"/>
    <link rel="stylesheet" type="text/css" href="https://sxsimg.xiaoyuanzhao.com/static/css/jquery.datetimepicker.css?v=22baa8aa2e0e17c6f0aacea433dc4737"/>
    <link rel="stylesheet" type="text/css" href="https://sxsimg.xiaoyuanzhao.com/static/css/hzw-city-picker.css?v=e1b72704981131e49cdd3a1b4ff8f5ad"/>
    <link rel="stylesheet" href="https://sxsimg.xiaoyuanzhao.com/static/css/pagebar.css?v=3422cad6331a3fed4558f2bf51cc83c8">
    <link rel="stylesheet" href="https://sxsimg.xiaoyuanzhao.com/static/new_main/css/my.css?v=6c4b085dda15f6ef27c49e430c312b72">
    <style>
        .center-header .header_con .cen_resume_list .cen_resume .resume_shape .shape:after {
            background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/center_resume_last.png?v=f346425213d48fdbe062807e247afc84);
        }
        #croppic,#cropContainerHeaderButton{
            width: 92px;
            height: 92px;
            position: absolute;
            margin: 0;
            left: 0;
            top: 0;
            padding: 0;
        }
        #croppic {
            top: -22px;
            z-index: 3;
        }
        #cropContainerHeaderButton{
            bottom: 0;
            z-index: 4;
            cursor: pointer;
        }
        .cropImgWrapper{
            width: 92px!important;
            height: 92px!important;
            border-radius: 50% !important;
        }
        #wait_up{
            border-radius: 50%;
            overflow: hidden;
        }
        .cropControls{
            width: 140px;
            top: 135px;
            left: -20px;
        }
        .dialogue_hr{
            top: 50%!important;
            position: fixed!important;
            /*-webkit-transform: translateY(-50%);*/
            /*-moz-transform: translateY(-50%);*/
            /*-ms-transform: translateY(-50%);*/
            /*transform: translateY(-50%);*/
        }
        .load_res_de{
            top: 5%!important;
        }
        .hzw-city-picker:before,
        .hzw-city-picker:after
        {
            display: none;
        }
        .hzw-city-picker{
            left: 0 !important;
            right: 0 !important;
            top: 50% !important;
            bottom: 0 !important;
            margin: -170px auto 0 !important;
            height: 340px !important;
        }
        .resume_chinese:hover span,.resume_english:hover span{
            box-shadow: 0 0 5px 0px #ccc;
        }
        .invite-icon {
            position: relative;
            top: 4px;
            left: 5px;
            width: 20px;
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
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?03465902f492a43ee3eb3543d81eba55";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

</head>
<body>
<div id="header">
    <div class="wrapper">
        <a class="logo" href="index.html">
            <img width="229" height="43" alt="实习精灵" src="${pageContext.request.contextPath}/images/logo.png">
        </a>
        <ul id="navheader" class="reset">
            <li><a href="${pageContext.request.contextPath}/internshipElves/index.jsp">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/internshipElves/companyList.jsp">公司</a></li>

            <li><a rel="nofollow" href="${pageContext.request.contextPath}/student/isLogin">我的简历<label style="color: red;font-size: 14px;">${tip}</label></a></li>
            <li style="border-bottom: 3px solid #019875"><a href="${pageContext.request.contextPath}/personCenter/loginIn" rel="nofollow">个人中心</a></li>
        </ul>
        <dl class="collapsible_menu" onclick="sw_fo()">
            <dt >
                <span><a href="${pageContext.request.contextPath}/stuLogin/logout" style="color:honeydew; margin-left: 40px">退出</a>&nbsp;</span>
            </dt>
            <%--<dd style="display: none;" ><a rel="nofollow" href="jianli.html">我的简历</a></dd>--%>
            <%--<dd style="display: none;" ><a href="collections.html">我收藏的职位</a></dd>--%>
            <%--<dd style="display: none;" ><a href="toudi.html">我投递的职位 <span id="noticeNo" class="red dn">(0)</span></a></dd>--%>
            <%--<dd class="btm" style="display: none;" name="dd-1"><a href="subscribe.html">我的订阅</a></dd>--%>
            <%--<dd style="display: none;" ><a href="create.html">我要招人</a></dd>--%>
            <%--<dd style="display: none;" ><a href="accountBind.html">帐号设置</a></dd>--%>
            <%--<dd class="logout" style="display: none;" ><a rel="nofollow" href="login.html">退出</a></dd>--%>
        </dl>
        <div class="dn" id="noticeTip">
            <span class="bot"></span>
            <span class="top"></span>
            <a target="_blank" href="delivery.html"><strong>0</strong>条新投递反馈</a>
            <a class="closeNT" href="javascript:;"></a>
        </div>
    </div>
</div>
<div class="wrap">


    <div class="center-box">
        <div class="center-header">
            <div class="header_people">
                <div class="header_img">
                    <img src="https://sxsimg.xiaoyuanzhao.com/4E/1D/4EBF399A932DF5F0D0E3D05AFE2F6F1D.png" alt="" class="people_img">
                    <div id="croppic"></div>
                    <span class="btn" id="cropContainerHeaderButton"></span>
                </div>
                <c:choose>
                    <c:when test="${!empty stuName}">
                        <div class="people_name">${stuName}</div>
                        <div class="people_msg"style="position: relative;bottom: 15px;">欢迎您，${stuName}同学。</div>
                    </c:when>

                    <c:otherwise>
                        <div class="people_name">${stuPhoneMail}</div>
                        <div class="people_msg"style="position: relative;bottom: 15px;">欢迎您，${stuPhoneMail}的同学。</div>
                    </c:otherwise>
                </c:choose>
            </div>
            <div class="header_con">
                <div class="resume_til"><a href="${pageContext.request.contextPath}/information/insert4"><label style="font-weight: 600;font-size:20px;color:#000;position: relative;bottom: 18px;"><label style="font-weight: 600;font-size:20px;color:#000;">${tip1}</label>填写</label><span class="resume_til_name" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/center_text_p1.png?v=468f287b04bfd25a278e041b43a87c66)"></span></a><span class="til_tips">磨刀不误砍柴工，填写下简历吧</span><span class="til_add_resume" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/center_new_resume.png?v=294e2870a821e4613d6ead741d5609be)"><span class="close_tip"></span></span></div>
                <div class="cen_resume_list">

                    <div class="cen_resume" data-stype="online">
                        <a target="_blank" href="#" class="resume-link">
                            <div class="resume_introduce">
                                <div class="resume_name"><span class="name_length" title="默认简历">默认简历</span>
                                    <span class="name_type">-默认</span></div>
                                <div class="resume_msg">最新修改-${s.stuUpdateTime}</div>
                            </div>
                        </a>

                        <span class="resume_english">
                            <span class="resume_status not_have" data-guuid="grp_9mlskqzgjktr">创建英文</span>
                                </span>

                        <a target="_blank" href="#"
                           class="resume_chinese">
                            <div class="resume_bi" data-val="0">中文 0%</div><span class="close_resume" data-resid="res_6cfslicacs0a">&times;</span>
                            <div class="resume_shape"><span class="shape"></span></div>
                        </a>
                    </div>

                    <div class="cen_resume" data-stype="online">
                        <a target="_blank" href="/student/myResume" class="resume-link">
                            <div class="resume_introduce">
                                <div class="resume_name"><span class="name_length"  title="我的简历">我的简历</span>
                                    <span class="name_type">-在线</span></div>
                                <div class="resume_msg">最新修改-${s.stuUpdateTime}</div>
                            </div>
                        </a>
                        <span class="resume_english">
                                                  <span class="resume_status not_have" data-guuid="grp_aldzycmupk03">创建英文</span>
                                        </span>

                        <a target="_blank" href="#"
                           class="resume_chinese">
                            <div class="resume_bi" data-val="0">中文 0%</div><span class="close_resume" data-resid="res_jyed4cu5op1k">&times;</span>
                            <div class="resume_shape"><span class="shape"></span></div>
                        </a>
                    </div>

                </div>
            </div>
        </div>

        <div class="a_list">
            <a href="#" class="a_item" data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位">
                <span class="a_num a_color_green" data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位">5</span>
                <div data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位" class="a_name" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/center_text_p2.png?v=a454fb32f7cc6ce78bf50d3ddff2565b)"></div>
                <div data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位" class="a_msg">看看大数据显示吧</div>
                <span data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位" class="a_next" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/center_icon_next.png?v=8b59c649d00f909a79097649e7cf96aa)"></span>
            </a>
            <a href="#" class="a_item" data-sa="click" data-starget="/my/collect" data-sinfo="{&quot;name&quot;: &quot;收藏&quot;}" data-sevent="intern_sub" data-sname="118" data-desc="trainee_center-我的收藏">
                <span data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位" class="a_num a_color_green">2</span>
                <div data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位" class="a_name" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/center_text_p3.png?v=7017fd7f241617e6a9d4e25b13f41afd)"></div>
                <div data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位" class="a_msg">喜欢的在这里哦</div>
                <span data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位" class="a_next" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/center_icon_next.png?v=8b59c649d00f909a79097649e7cf96aa)"></span>
            </a>
            <a href="#" class="a_item a_invite">
                <span data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位" class="a_num a_color_green">0</span>
                <div data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位" class="a_name " style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/center_text_p4.png?v=8b6dfdfc5e1f9f9b5c0addd6499c2002)"></div>


                <div class="a_msg"><span class="open_invite"style="color: grey">职位</span>能够自动找你哦</div>

                <span data-sa="click" data-starget="/my/match" data-sinfo="{&quot;name&quot;: &quot;推荐职位&quot;}" data-sevent="jb_click" data-sname="117" data-desc="trainee_center-推荐职位" class="a_next" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/center_icon_next.png?v=8b59c649d00f909a79097649e7cf96aa)"></span>
            </a>
        </div>

        <div id="container" >
            <div class="clearfix">
                <div class="content_l">
                    <dl class="c_delivery">
                        <dt>
                            <h1> <em></em>已投递简历状态
                            </h1>
                            <a class="d_refresh" href="javascript:void(0)" onclick="refresh()">刷新</a>

                        </dt>
                        <dd>
                            <div class="delivery_tabs">
                                <ul class="reset" id="reset">
                                    <li class="current">
                                        <a href="javascript:void(0)">全部</a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">投递成功</a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">被查看</a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">通过初筛</a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">通知面试</a>
                                    </li>
                                    <li class="last">
                                        <a href="javascript:void(0)">不合适</a>
                                    </li>
                                </ul>
                            </div>
                            <script>
                                var resets = document.getElementById("reset").children ;//li
                                for(var i =0;i<6;i++){
                                    resets[i].index = i;
                                    resets[i].onclick = function () {
                                        for(var i1=0;i1<6;i1++){
                                            resets[i1].className="";
                                        }
                                        resets[this.index].className="current";
                                        var tag = this.index;
                                        loadDelivery(tag);
                                    }

                                }
                                function refresh() {
                                    for(var i =0;i<6;i++) {

                                        if(resets[i].className=="current"){
                                            loadDelivery(i);
                                        }
                                    }
                                }

                            </script>
                            <form id="deliveryForm">
                                <ul class="reset my_delivery" id = "deliveryRecord">

                                </ul>

                            </form>
                            <script>
                                var url_delivery = '${pageContext.request.contextPath}/resume/delivery';
                                window.onload=function() {
                                    loadDelivery(0);
                                }
                                function loadDelivery(tag) {
                                    if (window.XMLHttpRequest) {
                                        xhr = new XMLHttpRequest();
                                    } else {
                                        xhr = new ActiveXObject('Microsoft.XMLHTTP');
                                    }
                                    var deliverResumeStatus ="deliverResumeStatus="+tag;
                                    xhr.open("POSt", url_delivery,true);
                                    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
                                    xhr.onreadystatechange = loadRecords;
                                    xhr.send(deliverResumeStatus);

                                }
                                function loadRecords() {
                                    if (xhr.readyState == 4 && xhr.status == 200) {
                                        var result = JSON.parse(xhr.responseText);
                                        var recordList = document.getElementById("deliveryRecord");
                                        recordList.innerHTML = "";
                                        for(var i=0;i<result.length;i++){
                                            var date = strFormat(result[i].deliverResumeTime);
                                            recordList.innerHTML+=('<li> <div class="d_item"> <h2 title="java工程师">'+
                                                '<a target="_blank" href="http://www.lagou.com/jobs/149594.html"><em>'+
                                                result[i].jobName+'</em> <span>'+
                                                "（"+result[i].comSalaryLow+"k-"+result[i].comSalaryHigh+"k）"+
                                                '</span> </a></h2><div class="clear"></div>'+
                                                ' <a title="公司名称" class="d_jobname" target="_blank" href="http://www.lagou.com/c/25927.html">'+
                                                result[i].comName+ ' <span>'+"["+result[i].comCity+"]"+' </span> </a><span class="d_time">' +
                                                date+'</span><div class="clear"></div><div class="d_resume">'+
                                                "使用简历:"+'<span>'+'<a href="/resume/preview">' +"在线简历"+'</a></span> </div>'+
                                                '<a class="btn_showprogress" href="javascript:void(0);" >'+
                                                result[i].deliverResumeStatus+'</a></div>'+
                                                '</li>'
                                            );

                                        }
                                    }

                                }
                                //时间格式化
                                function strFormat(date1){
                                    var month=0;
                                    var day=0;
                                    var date=new Date(date1);
                                    if((date.getMonth()+1)>=10)
                                    {
                                        month=date.getMonth()+1;
                                    }else
                                    {
                                        month="0"+(date.getMonth()+1);
                                    }
                                    if(date.getDate()>=10)
                                    {
                                        day=date.getDate();
                                    }else {
                                        day="0"+date.getDate();
                                    }
                                    var setDate=date.getFullYear()+"-"+month+"-"+day;
                                    return setDate;

                                }
                            </script>
                        </dd>
                    </dl>
                </div>
                <script>
                    function wt_del(){
                        var style1 =document.getElementById("progress_status").style.display;
                        if(style1=="none"){
                            document.getElementById("progress_status").style.display="block";}
                        if(style1=="block") {
                            document.getElementById("progress_status").style.display = "none";
                        }
                    }
                    function sw_del(){
                        document.getElementById("progress_status").style.display = "none";
                    }
                </script>
                <div class="content_r">
                    <div class="mycenterR" id="myInfo">
                        <h2>我的信息</h2>
                        <a href="#">我收藏的职位</a>
                        <br>
                        <a href="#" target="_blank">我投递的职位<span id="noticeNoPage" class="red dn">&nbsp;(0)</span></a>
                        <br>
                        <a target="_blank" href="#">我订阅的职位</a>
                        <br>
                        <a target="_blank" href=#">我的职位推荐</a>
                    </div><!--end #myInfo-->
                    <div class="mycenterR" id="myRecommend">
                        <h2>可能适合你的职位 <i>匹配度</i></h2>
                        <ul class="reset">
                            <li>
                                <a target="_blank" href="#">
                                    <span class="f16">产品经理</span>
                                    <span class="c7">广州百田</span>
                                    <em>92%</em>
                                </a>
                            </li>
                            <li>
                                <a target="_blank" href="#">
                                    <span class="f16">产品经理</span>
                                    <span class="c7">短讯神州</span>
                                    <em>92%</em>
                                </a>
                            </li>
                            <li>
                                <a target="_blank" href="#">
                                    <span class="f16">产品经理</span>
                                    <span class="c7">爱拍</span>
                                    <em>89%</em>
                                </a>
                            </li>
                            <li>
                                <a target="_blank" href="#">
                                    <span class="f16">产品经理</span>
                                    <span class="c7">一彩票</span>
                                    <em>88%</em>
                                </a>
                            </li>
                            <li>
                                <a target="_blank" href="#">
                                    <span class="f16">产品经理</span>
                                    <span class="c7">林安集团</span>
                                    <em>88%</em>
                                </a>
                            </li>
                        </ul>
                        <a target="_blank" class="more" href="#">更多推荐职位&gt;&gt;</a>
                    </div><!--end #myRecommend-->
                </div>
            </div>

            <!-- end #recordPopBox -->

            <div class="clear"></div>
            <input type="hidden" value="" id="resubmitToken">
            <a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
        </div>
    </div>
    <div id="addResume" class="popup">
        <div class="popup_head">请选择简历类型</div>
        <div class="popup_close">×</div>
        <div class="popup_main">
            <div class="btn_box">
                <a class="resume_resume_btn fl">在线简历</a>
                <a class="resume_resume_btn fr">附件简历</a>
            </div>
            <p class="tips">你最多只能拥有 2 个简历哦</p>
        </div>
    </div>
    <div class="dialogue_hr"></div>
    <div id="noticeRecord" class="popup">
        <div class="popup_head">面试体验</div>
        <div class="popup_close">×</div>
        <div class="popup_main">
            <form action="" id="noticeRecordForm">
                <ul class="interview_result">
                    <li>
                        <input name="stype" id="cope_off" type="radio" value="1" />
                        <label for="cope_off">已收到offer</label>
                    </li>
                    <li>
                        <input name="stype" id="not_off" type="radio" value="0" />
                        <label for="not_off">未收到offer</label>
                    </li>
                </ul>
                <table class="recort_content">
                    <tr>
                        <td width="80">面试评分：</td>
                        <td>
                            <input type="hidden" name="score" value="0"/>
                            <ul class="star_list">
                                <li data-v="1"></li>
                                <li data-v="2"></li>
                                <li data-v="3"></li>
                                <li data-v="4"></li>
                                <li data-v="5"></li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td width="80">面试短评：</td>
                        <td class="short_box">
                            <input id = "shortevalu" type="text" name="short_evaluate" class="borderbox shortdesc" maxlength="15" placeholder="15字以内对面试的简单描述哦">
                            <ul class="short_down">
                                <li>面试官很nice</li>
                                <li>公司环境不错</li>
                                <li>公司妹子很多</li>
                                <li>公司比较垃圾</li>
                                <li>面试官不认真</li>
                                <li>面试流程有问题</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td width="80" class="eva_con">面试经历：</td>
                        <td><textarea id="evaluate_content" class="borderbox content_box" name="cont" placeholder="记录下自己的面试经历"></textarea></td>
                    </tr>
                    <input type="hidden" name="deliver_id" class="uuid_text">
                </table>
            </form>
            <a href="javascript:;" class="popup_cancel popup_btn" >取消</a>
            <a href="javascript:;" class="popup_btn send_popup">发送</a>
        </div>
    </div>
    <div class="load_res_de"></div>
    <div class="join_interview">
        <div class="title">
            <p>请选择延期面试的日期</p>
            <img class="close_interview" src="https://sxsimg.xiaoyuanzhao.com/static/img/close.png?v=43ca279e203e75e1d574a03a9acb5e42" alt=""/>
        </div>
        <input type="hidden" class="guid_join" value=""/>
        <div class="supplement">
            延期日期：<input type="text" class="datetimepicker" id="delay_datetime"><br>
            延期理由：<textarea class="suibianba" id="delay_content" cols="30" rows="5" maxlength="200" placeholder="请输入延期理由，200字以内"></textarea>
        </div>
        <div class="btn_yanqi">
            <span class="join_int_go">确定</span>
            <span class="join_int_no">取消</span>
        </div>
    </div>
    <div class="cen_shade"></div>
    <div class="cen_jump">
        <div class="cen_jump_til">温馨提示</div>
        <div class="cen_jump_text">开启邀约后，你的简历会被推荐给匹配的认证企业HR，我们会通过短信、邮件、APPpush等方式通知你，同时你也可能会收到企业的直接电话邀请。</div>
        <div class="cen_jump_btn" data-sa="click" data-starget="" data-sevent="jb_click" data-sinfo="{&quot;name&quot;: &quot;开启职位邀约&quot;}" data-sname="58" data-desc="trainee_center-个人中心-立即开启">开启邀约</div>
    </div>

    <div class="reg_log_box login_box_X">
        <span id="close_login" class="close_login">×</span>
        <div class="log_box">
            <a href="/" class="go_home" data-sa="click" data-sname="154" data-starget="/" data-sinfo="{&quot;name&quot;: &quot;logo图片&quot;}" data-desc="base-登录弹窗logo" data-sevent="menu_click" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/new_logo.png?v=750679c94f67c9843d75ac71fb642bf7)"></a>
            <div class="log_content">
                <div id="login_inf">
                    <form>
                        <input type="text" id="base_log_name" class="log_input" tabindex="1" placeholder="请输入手机号/邮箱"/>
                        <span class="error">此用户不存在</span>
                        <input type="password" id="base_log_password" class="log_input" tabindex="2" placeholder="请输入密码">
                        <span class="error">密码不正确</span>
                        <span id="remeber"><input type="checkbox" id="remember_btn" name="remember" value="1" checked="checked" class="checkbox valid">记住我</span>
                        <a href="/user/findpass" data-sinfo="{&quot;name&quot;: &quot;找回密码&quot;}" target="_blank" class="f_col look_pas">找回密码</a>
                        <input type="button" id="base_login_btn" value="登 录" data-sa="click" data-sname="22" data-sinfo="{&quot;name&quot;: &quot;登录弹窗&quot;}" data-starget="" data-sevent="land_click" data-desc="base-登录弹窗">
                        <div class="login_jump">
                            <p class="not_user">
                                没有账号,直接
                                <a class="to_login f_col" href="/user/register?next=/my" target="_blank" data-sa="click" data-sname="23" data-sinfo="{&quot;name&quot;: &quot;注册&quot;}" data-starget="/user/register?next=/my" data-sevent="reg_click" data-desc="base-弹窗登录注册">注册</a>
                            </p>
                        </div>
                    </form>
                </div>
                <div class="other_login">
                    <p>使用以下帐号直接登录:</p>
                    <div class="other_link">
                        <a href="/user/sso/weibo/auth" data-sa="click" data-sname="24" data-sinfo="{&quot;name&quot;: &quot;微博登录&quot;}" data-starget="/user/sso/weibo/auth" data-desc="base-弹窗微博登录" data-sevent="land_click"
                           class="icon_wb" title="使用新浪微博帐号登录" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/new_weibo.png?v=635a5677a15fd3f78246d856e0e4ad8e)"></a>
                        <a href="/user/sso/qq/auth" class="icon_qq" title="使用腾讯QQ帐号登录" data-sa="click" data-sname="25" data-desc="base-弹窗QQ登录" data-sinfo="{&quot;name&quot;: &quot;QQ登录&quot;}" data-starget="/user/sso/qq/auth" data-sevent="land_click" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/new_QQ.png?v=e7ace05fb4c36be397eb96456c1d8dfa)"></a>
                        <a href="/user/sso/wechat/auth" class="icon_weixin" title="使用微信帐号登录" data-sa="click" data-sname="26" data-desc="base-弹窗微信登录" data-sinfo="{&quot;name&quot;: &quot;微信登录&quot;}" data-starget="/user/sso/wechat/auth" data-sevent="land_click" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/new_weixin.png?v=8351cf50b467b189afe5a4eb435784ea)"></a>
                        <a href="/user/sso/alipay/auth" class="icon_alipay" title="使用支付宝帐号登录" data-sa="click" data-sname="27" data-desc="base-弹窗支付宝登录" data-sinfo="{&quot;name&quot;: &quot;支付宝登录&quot;}" data-starget="/user/sso/alipay/auth" data-sevent="land_click" style="background-image: url(https://sxsimg.xiaoyuanzhao.com/static/new_main/img/alipay.png?v=8241337e775923962520207b01b37f49)"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="shadow"></div>
    <div class="footer"></div>
</div>

<div id="back_top">
    <div class="back-img"></div>
    <div class="back-text">回到顶部</div>
</div>
<div id="small-r">
    <div class="small-img"></div>
    <div class="small-text">小程序</div>
    <img src="https://sxsimg.xiaoyuanzhao.com/static/new_main/img/right-sm.png?v=e8782ae513b9f67c14b9768e3021aaca" alt="" class="s-mark">
</div>

<input type="text" id="sswitch" value="1" name="" hidden="hidden" />

<script>
    var login_sdtoken = "ap5vqm9uxj38jZevdgs1NMWDkm38G7MO";
</script>

<script src="https://sxsimg.xiaoyuanzhao.com/static/new_main/js/jquery-1.11.3.min.js?v=895323ed2f7258af4fae2c738c8aea49"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/cite/jquery-creatBox.js?v=82c2673dd5490b77ee4d2a6fd2e8c56b"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/utils.js?v=d0e4937e5f2f5ebc8b7fb96976920f60"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/cite/layer/layer.js?v=91b08e09ce3849b9f5f894670d83e9a9"></script>

<script src="https://sxsimg.xiaoyuanzhao.com/static/new_main/js/main_base.js?v=8f089a5a99e605b8e9d9763a434d4dea"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/sxs.jq.toast.js?v=1c93cd29841cd8426427c60528d11fe0"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/point_sdk.min.js?v=3c73103b0a0fda9556421eb50ae51f06"></script>

<script>
    $("#shade").remove();
    var item = '',maxLength = '2', sdtoken='ap5vqm9uxj38jZevdgs1NMWDkm38G7MO';
</script>

<script src="https://sxsimg.xiaoyuanzhao.com/static/js/upload.js?v=28a131a39dc38aa08c75e984d12e2c3d"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/cite/jquery-creatBox.js?v=82c2673dd5490b77ee4d2a6fd2e8c56b"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/trainee_center.js?v=57116c9198e786bdcbd60e085576e1d4"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/cite/jquery.datetimepicker.js?v=73ba5cfb741fd00574e7c0139d2a7355"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/citypicker/city-data.js?v=a4c7ca963fdc7792d029921b8b77c7e4"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/citypicker/hzw-city-picker.min.js?v=cd383e6f96dfd4bdd6c625ce6884bcea"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/cite/jquery.mousewheel.min.js?v=26138bdd0a7ac76e564cd96e95b1da44"></script>
<script src="https://sxsimg.xiaoyuanzhao.com/static/js/cite/croppic.min.js?v=decf46711b96a614925b3f1c11ac3c1a"></script>

<script>
    function onUploadFinish(success, fileuuid, fileurl){
        $("#cropContainerHeaderButton").show();
        if(success) {
            $("#coverlayer").hide();
            $.post('/trainee/logo/change?filepath=' + fileuuid, function (d) {
                if (d.code == 100) {
                    var img = $(".people_img")[0];
                    img.src = fileurl;
                    img.onload = function () {
                        $(".cropControlReset").click();
                    };
                } else {
                    layer.alert(d.msg);
                }
                location.reload();
            }, 'json');
        }
        else{
            layer.alert('上传失败！');
        }
    }
    $("body").on("click", "#pagebar li", function() {
        if ($(this).hasClass('disabled')){
            return
        }
        $("body,html").animate({
            scrollTop:380
        },400);
        var page = $(this).data('value');
        var stype = $('.back_nav .active').data('back');
        setTimeout(function () {
            $fun_model.load("/my?"+Math.random(),{p:page,stype:stype});
        },400)
    });
    $("body").on("click", ".back_nav .back_item", function() {
        var page = 1;
        var stype = $(this).data('back');
        $fun_model.load("/my?"+Math.random(),{p:page,stype:stype});
    });

    $(".resume_bi").each(function () {
        var $width = $(this).data("val");
        $(this).siblings(".resume_shape").find(".shape").css("width",$width*0.64);
    })
    var $mask_show = $(".open_invite"),$shadow = $(".cen_shade"),$jump_mask = $(".cen_jump");
    $mask_show.on("click",function (e) {
        $shadow.addClass("cen_shade_show");
        $jump_mask.addClass("cen_jump_show");
        e.stopPropagation();
        e.preventDefault();
    })
    $shadow.on("click",function () {
        $shadow.removeClass("cen_shade_show");
        $jump_mask.removeClass("cen_jump_show");
    })
    $(".cen_jump_btn").on("click",function () {
        $.get("/my/invite/open?"+Math.random(),function(data){
            if(data.code!=100){
                layer.alert(data.msg);
            }else{
                $shadow.removeClass("cen_shade_show");
                $jump_mask.removeClass("cen_jump_show");
                $(".a_invite .a_msg").text("这些认证企业邀请你来面试啦");
                $(".a_invite .a_name").removeClass("no_click");
            }
        },'json').error(function(){
            layer.alert("网络错误！");
        });
    })
</script>

<script>
    function anmit(obj,n_class,time){
        setTimeout(function () {
            $(obj).removeClass(n_class);
        },time)
        setInterval(function () {
            $(obj).addClass(n_class);
            setTimeout(function () {
                $(obj).removeClass(n_class);
            },2000)
        },30000)
    }
    $(function () {
        anmit(".qb i","add_anim",2000)

        anmit(".xyz i","add_anim",2000)
    })
</script>

<script type='text/javascript'>
    (function(m, ei, q, i, a, j, s) {
        m[i] = m[i] || function() {
            (m[i].a = m[i].a || []).push(arguments)
        };
        j = ei.createElement(q),
            s = ei.getElementsByTagName(q)[0];
        j.async = true;
        j.charset = 'UTF-8';
        j.src = '//static.meiqia.com/dist/meiqia.js?_=t';
        s.parentNode.insertBefore(j, s);
    })(window, document, 'script', '_MEIQIA');
    _MEIQIA('entId', 57673);
    _MEIQIA('fallback', 1);
    _MEIQIA('assign', {
        agentToken: '0b0b1e8e3ee191fc1c42ed94d512aa45'
    });
    // 设置 fallback
    _MEIQIA('fallback', 1);
    // 传递顾客信息
    _MEIQIA('metadata', {
        "name": "usr_yrxyuxzolv0x",
        "email": "",
        "phone": "",
        //自定义用户信息
        "type": "学生"
    });
    var interval = setInterval(function () {
        if($("#MEIQIA-BTN-TEXT").text()=="我要反馈"){
            clearInterval(interval);
        }else{
            $("#MEIQIA-BTN-TEXT").text("我要反馈");
            $(".khfw").on("click",function () {
                $("#MEIQIA-BTN").click();
            })
        }
    },100)
</script>
</body>
</html>