
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <script id="allmobilize" charset="utf-8" src="${pageContext.request.contextPath}/js/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="alternate" media="handheld"  />
    <!-- end 云适配 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>前端开发全国-职位搜索-实习精灵-最专业的互联网招聘平台</title>
    <meta property="qc:admins" content="23635710066417756375" />
    <meta content="实习精灵" name="description">
    <meta content="实习精灵" name="keywords">
    <meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

    <!-- <div class="web_root"  style="display:none">h</div> -->
    <script type="text/javascript">
        var ctx = "h";
        console.log(1);
    </script>
    <link rel="Shortcut Icon" href="http://www.lagou.com/h/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/external.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/popup.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/list.css"/>

   <script src ="${pageContext.request.contextPath}/js/list.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.lib.min.js"></script>
    <script src="/js/ajaxfileupload.js" type="text/javascript"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/additional-methods.js"></script>
    <!--[if lte IE 8]>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/excanvas.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var youdao_conv_id = 271546;
    </script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/conv.js"></script>
</head>
<body>
<div id="body">
    <div id="header">
        <div class="wrapper">
            <a href="index.html" class="logo">
                <img src="${pageContext.request.contextPath}/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
            </a>
            <ul class="reset" id="navheader">
                <li class="current"><a href="${pageContext.request.contextPath}/internshipElves/index.jsp">首页</a></li>
                <li ><a href="${pageContext.request.contextPath}/student/isLogin" >我的简历</a></li>
                <li ><a href="${pageContext.request.contextPath}/internshipElves/companyList.jsp" target="_blank">公司</a></li>
                <li ><a href="${pageContext.request.contextPath}/personCenter/loginIn" rel="nofollow">个人中心</a></li>
                <c:choose>
                    <c:when test="${empty stuId}">
                        <li ><a href="create.html" rel="nofollow">企业中心</a></li>preview
                    </c:when>
                </c:choose>
            </ul>
            <ul class="loginTop">
                    <c:choose>
                        <c:when test="${empty stuId}">
                            <li><a href="login.html" rel="nofollow">企业入口</a></li>
                            <li>|</li>
                            <li><a href="${pageContext.request.contextPath}/internshipElves/login.jsp" rel="nofollow">学生入口</a></li>
                        </c:when>

                        <c:when test="${!empty stuId && !empty stuName}">
                            <li><a href="${pageContext.request.contextPath}/student/getInfo?id=${stuId}">欢迎${stuName}</a></li>
                            <li>|</li>
                            <li><a href="${pageContext.request.contextPath}/stuLogin/logout">退出</a></li>
                        </c:when>

                        <c:otherwise>
                            <li> <a href="${pageContext.request.contextPath}/student/getInfo?id=${stuId}">欢迎${stuPhoneMail}</a></li>
                            <li>|</li>
                            <li><a href="${pageContext.request.contextPath}/stuLogin/logout">退出</a></li>
                        </c:otherwise>
                    </c:choose>
            </ul>
        </div>
    </div><!-- end #header -->
    <div id="container">

        <div class="sidebar">
            <div id="options" class="greybg">
                <dl >
                    <dt>月薪范围 <em ></em></dt>
                    <dd id="salary">
                        <div><a href="javascript:void(0)" >2k以下</a></div>
                        <div><a href="javascript:void(0)">2k-5k</a></div>
                        <div><a href="javascript:void(0)">5k-10k</a></div>
                        <div><a href="javascript:void(0)">10k-15k</a></div>
                        <div><a href="javascript:void(0)">15k-25k</a></div>
                        <div><a href="javascript:void(0)">25k-50k</a></div>
                        <div><a href="javascript:void(0)">50k以上</a></div>
                    </dd>
                </dl>
                <dl >
                    <dt>工作经验 <em ></em></dt>
                    <dd id ="workExp">
                        <div><a href="javascript:void(0)">不限</a></div>
                        <div><a href="javascript:void(0)">应届毕业生</a></div>
                        <div><a href="javascript:void(0)">1年以下</a></div>
                        <div><a href="javascript:void(0)">1-3年</a></div>
                        <div><a href="javascript:void(0)">3-5年</a></div>
                        <div><a href="javascript:void(0)">5-10年</a></div>
                        <div><a href="javascript:void(0)">10年以上</a></div>
                    </dd>
                </dl>
                <dl >
                    <dt>最低学历 <em ></em></dt>
                    <dd id="degree">
                        <div><a href="javascript:void(0)">不限</a></div>
                        <div><a href="javascript:void(0)">大专</a></div>
                        <div><a href="javascript:void(0)">本科</a></div>
                        <div><a href="javascript:void(0)">硕士</a></div>
                        <div><a href="javascript:void(0)">博士</a></div>
                    </dd>
                </dl>
                <dl >
                    <dt>工作性质 <em ></em></dt>
                    <dd id="workNature">
                        <div><a href="javascript:void(0)">全职</a></div>
                        <div><a href="javascript:void(0)">兼职</a></div>
                        <div><a href="javascript:void(0)">实习</a></div>
                    </dd>
                </dl>
            </div>

            <!-- QQ群 -->
            <div class="qq_group">
                加入<span>前端</span>QQ群
                <div class="f18">跟同行聊聊</div>
                <p>160541839</p>
            </div>

            <!-- 对外合作广告位  -->
            <a href="http://www.w3cplus.com/" target="_blank" class="partnersAd">
                <img src="${pageContext.request.contextPath}/images/w3cplus.png" width="230" height="80" alt="w3cplus" />
            </a>
            <a href="" target="_blank" class="partnersAd">
                <img src="${pageContext.request.contextPath}/images/jquery_school.jpg" width="230" height="80" alt="JQ学校" />
            </a>
            <a href="http://linux.cn/" target="_blank" class="partnersAd">
                <img src="${pageContext.request.contextPath}/images/linuxcn.png" width="230" height="80" alt="Linux中文社区"  />
            </a>
            <a href="http://zt.zhubajie.com/zt/makesite? utm_source=lagou.com&utm_medium=referral&utm_campaign=BD-yl" target="_blank" class="partnersAd">
                <img src="${pageContext.request.contextPath}/images/zhubajie.jpg" width="230" height="80" alt="猪八戒" />
            </a>
            <a href="http://www.imooc.com" target="_blank" class="partnersAd">
                <img src="${pageContext.request.contextPath}/images/muke.jpg" width="230" height="80" alt="幕课网" />
            </a>
        </div>

        <div class="content">
            <div id="search_box">
                <form id="searchForm" name="searchForm" method="get">
                    <ul id="searchType">
                        <li data-searchtype="1" class="type_selected">职位</li>
                        <li data-searchtype="4">公司</li>
                    </ul>
                    <div class="searchtype_arrow"></div>
                    <input type="text" id="search_input" name = "comReleaseJobName"  tabindex="1" value=""  placeholder="请输入职位名称，如：产品经理"  />
                    <input type="hidden" name="spc" id="spcInput" value="1"/>
                    <input type="hidden" name="comReleaseJobSalaryLow" id="slInput" value=""/>
                    <input type="hidden" name="comReleaseJobSalaryHigh" id="shInput" value=""/>
                    <input type="hidden" name="comReleaseJobExp" id="jeInput" value=""/>
                    <input type="hidden" name="comReleaseJobRequir" id="jrInput" value=""/>
                    <input type="hidden" name="comReleaseJobProp" id="jpInput" value="" />
                    <input type="hidden" name="comReleaseJobTime" id="jtInput" value="" />
                    <input type="hidden" name="labelWords" id="labelWords" value="label" />
                    <input type="hidden" name="lc" id="lc" value="" />
                    <input type="hidden" name="workAddress" id="workAddress" value=""/>
                    <input type="hidden" name="comReleaseJobCity" id="cityInput" value=""/>
                    <input type="button" id="search_button" value="搜索" onclick="searchJob1()" />
                </form>
            </div>

            <style>
                .ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
                .ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
                .ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
                .ui-menu-item a{display:block;overflow:hidden;}
            </style>

            <dl class="hotSearch" id="hotSearch">
                <dt>热门搜索：</dt>
                <dd><a href="javascript:void(0)">Java</a></dd>
                <dd><a href="javascript:void(0)">PHP</a></dd>
                <dd><a href="javascript:void(0)">Android</a></dd>
                <dd><a href="javascript:void(0)">iOS</a></dd>
                <dd><a href="javascript:void(0)">前端开发</a></dd>
                <dd><a href="javascript:void(0)">产品经理</a></dd>
                <dd><a href="javascript:void(0)">UI</a></dd>
                <dd><a href="javascript:void(0)">运营</a></dd>
                <dd><a href="javascript:void(0)">BD</a></dd>
            </dl>
            <script>
                var hotSearchs = document.getElementById("hotSearch").children ;//dd
                for(var m =1;m<10;m++) {
                    hotSearchs[m].index = m;
                    hotSearchs[m].onclick = function () {
                        var search = hotSearchs[this.index].innerText;
                        document.getElementById("search_input").value = search;
                        searchJob1();
                    }
                }
            </script>
            <div class="breakline"></div>
            <dl class="workplace" id="workplaceSelect">
                <dt class="fl">工作地点：</dt>
                <dd >
                    <a href="javascript:void(0)"  id = "city0" class="current">全国</a>
                    |
                </dd>
                <dd >
                    <a href="javascript:void(0)" id = "city1"  >北京</a>
                    |
                </dd>
                <dd >
                    <a href="javascript:void(0)" id = "city2"  >上海</a>
                    |
                </dd>
                <dd >
                    <a href="javascript:void(0)" id = "city3" >广州</a>
                    |
                </dd>
                <dd >
                    <a href="javascript:void(0)" id = "city4" >深圳</a>
                    |
                </dd>
                <dd >
                    <a href="javascript:void(0)" id = "city5" >成都</a>
                    |
                </dd>
                <dd >
                    <a href="javascript:void(0)" id = "city6"  >杭州</a>
                    |
                </dd>
                <dd >
                    <a href="javascript:void(0)" id = "city7" >武汉</a>
                    |
                </dd>
                <dd >
                    <a href="javascript:void(0)" id = "city8"  >南京</a>
                    |
                </dd>
                <dd  class="more" >
                    <a href="javascript:;" id="otherCity">其他</a>
                    <div class="triangle citymore_arrow"></div>
                </dd>
                <dd id="box_expectCity" class="searchlist_expectCity dn">
                    <span class="bot"></span>
                    <span class="top"></span>
                    <dl>
                        <dt>ABCDEF</dt>
                        <dd>
                            <span><a href="javascript:void(0)">北京</a></span>
                            <span><a href="javascript:void(0)">长春</a></span>
                            <span><a href="javascript:void(0)">成都</a></span>
                            <span><a href="javascript:void(0)">重庆</a></span>
                            <span><a href="javascript:void(0)">长沙</a></span>
                            <span><a href="javascript:void(0)">常州</a></span>
                            <span><a href="javascript:void(0)">东莞</a></span>
                            <span><a href="javascript:void(0)">大连</a></span>
                            <span><a href="javascript:void(0)">佛山</a></span>
                            <span><a href="javascript:void(0)">福州</a></span>
                        </dd>
                    </dl>
                    <dl>
                        <dt>GHIJ</dt>
                        <dd id="cityA">
                            <span>贵阳</span>
                            <span>广州</span>
                            <span>哈尔滨</span>
                            <span>合肥</span>
                            <span>海口</span>
                            <span>杭州</span>
                            <span>惠州</span>
                            <span>金华</span>
                            <span>济南</span>
                            <span>嘉兴</span>
                        </dd>
                    </dl>
                    <dl>
                        <dt>KLMN</dt>
                        <dd id="cityB">
                            <span>昆明</span>
                            <span>廊坊</span>
                            <span>宁波</span>
                            <span>南昌</span>
                            <span>南京</span>
                            <span>南宁</span>
                            <span>南通</span>
                        </dd>
                    </dl>
                    <dl>
                        <dt>OPQR</dt>
                        <dd id="cityC">
                            <span>青岛</span>
                            <span>泉州</span>
                        </dd>
                    </dl>
                    <dl>
                        <dt>STUV</dt>
                        <dd id="cityD">
                            <span>上海</span>
                            <span>石家庄</span>
                            <span>绍兴</span>
                            <span>沈阳</span>
                            <span>深圳</span>
                            <span>苏州</span>
                            <span>天津</span>
                            <span>太原</span>
                            <span>台州</span>
                        </dd>
                    </dl>
                    <dl>
                        <dt>WXYZ</dt>
                        <dd id="cityE">
                            <span>武汉</span>
                            <span>无锡</span>
                            <span>温州</span>
                            <span>西安</span>
                            <span>厦门</span>
                            <span>烟台</span>
                            <span>珠海</span>
                            <span>中山</span>
                            <span>郑州</span>
                        </dd>
                    </dl>
                </dd>
            </dl>



            <ul class="hot_pos reset" id="jobList">

            </ul>
            <div id="pagearea">

            </div>
        </div>
        <script type="text/javascript">

            var children = document.getElementById("workplaceSelect").children ;//dd
            var salarys = document.getElementById("salary").children ;
            var workExps = document.getElementById("workExp").children;
            var degrees = document.getElementById("degree").children;
            var workNatures = document.getElementById("workNature").children;


            for(var i =1;i<10;i++){
                children[i].index = i;
                children[i].onclick = function () {
                    if(children[this.index].firstElementChild.className==""){
                        for(var i1=1;i1<10;i1++){
                            children[i1].firstElementChild.className="";
                        }
                        children[this.index].firstElementChild.className="current";
                        var address = children[this.index].firstElementChild.innerText;
                        document.getElementById("cityInput").value=address;
                    }else{
                        children[this.index].firstElementChild.className="";
                        children[1].firstElementChild.className="current";
                        document.getElementById("cityInput").value="";
                    }
                    searchJob();
                }
            }
            for(var l =0;l<7;l++){
                salarys[l].index = l;
                salarys[l].onclick = function () {
                    if(salarys[this.index].className==""){
                        for(var l1=0;l1<7;l1++){
                            salarys[l1].className="";
                        }
                        salarys[this.index].className="current1";
                        var salary = salarys[this.index].innerText;
                        var salarylow;
                        var salaryhigh;
                        switch (salary){
                            case '2k以下': salarylow=0;salaryhigh=2;break;
                            case '2k-5k': salarylow=2;salaryhigh=5;break;
                            case '5k-10k': salarylow=5;salaryhigh=10;break;
                            case '10k-15k': salarylow=10;salaryhigh=15;break;
                            case '15k-25k': salarylow=15;salaryhigh=25;break;
                            case '25k-50k': salarylow=25;salaryhigh=50;break;
                            case '50k以上': salarylow=50;salaryhigh=1000;break;
                            default:break;
                        }

                        document.getElementById("slInput").value=salarylow;
                        document.getElementById("shInput").value=salaryhigh;
                    }else {
                        salarys[this.index].className="";
                        document.getElementById("slInput").value="";
                        document.getElementById("shInput").value="";
                    }
                    searchJob();
                }
            }

            for(var j =0;j<7;j++){
                workExps[j].index = j;
                workExps[j].onclick =function () {
                    if(workExps[this.index].className=="") {
                        for (var j1 = 0; j1 < 7; j1++) {
                            workExps[j1].className = "";
                        }
                        workExps[this.index].className = "current1";
                        var workExp = workExps[this.index].innerText;
                        document.getElementById("jeInput").value = workExp;
                    }else{
                        workExps[this.index].className = "";
                        document.getElementById("jeInput").value = "";
                    }
                    searchJob();
                }
            }
            for(var k =0;k<5;k++){
                degrees[k].index = k;
                degrees[k].onclick =function () {
                    if( degrees[this.index].className=="") {
                        for (var k1 = 0; k1 < 5; k1++) {
                            degrees[k1].className = "";
                        }
                        degrees[this.index].className = "current1";
                        var degree = degrees[this.index].innerText;
                        document.getElementById("jrInput").value = degree;
                    }else{
                        degrees[this.index].className = "";
                        document.getElementById("jrInput").value = "";
                    }
                    searchJob();
                }
            }
            for(var n =0;n<3;n++){
                workNatures[n].index = n;
                workNatures[n].onclick =function () {
                    if( workNatures[this.index].className=="") {
                        for (var n1 = 0; n1 < 3; n1++) {
                            workNatures[n1].className = "";
                        }
                        workNatures[this.index].className = "current1";
                        var workNature = workNatures[this.index].innerText;
                        document.getElementById("jpInput").value = workNature;
                    }else{
                        workNatures[this.index].className = "";
                        document.getElementById("jpInput").value = "";
                    }
                    searchJob();
                }
            }



            var url_getJobByName = '${pageContext.request.contextPath}/student/searchJobByJobName';




            //页面加载后，首先加载所有的职位数据
            window.onload=function() {
                searchJob();
            }

            //回调显示
            function loadJobs() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var result = JSON.parse(xhr.responseText);
                    objArr=result.modelList;
                    var jobList = document.getElementById("jobList");
                    jobList.innerHTML = "";

                    //1.数据渲染
                    for (var i = 0; i < objArr.length; i++) {
                        var url = '${pageContext.request.contextPath}/releaseJob/queryByComReleaseJobId/id/'+objArr[i].comReleaseJobId;
                        var date = strFormat(objArr[i].comReleaseJobTime);
                        jobList.innerHTML += (  '<li class="clearfix"> <div class="hot_pos_l">  <div class="mb10"> <a href ="'+url+'" title="" target="_blank">' + objArr[i].comReleaseJobName + '</a>'
                            + '&nbsp; <span class="c9">' +
                            "["+objArr[i].comReleaseJobCity+"]" + '</span></div>'+
                            '<span><em class="c7">' +"月薪:"  + '</em>' + objArr[i].comReleaseJobSalaryLow +"k-"+ objArr[i].comReleaseJobSalaryHigh+"k"
                            + '</span> <span><em class="c7">' +
                            "经验:" + '</em>' + objArr[i].comReleaseJobExp +
                            '</span> <span><em class="c7">' +
                            "最低学历:" + '</em>' + objArr[i].comReleaseJobRequir +
                            '</span><br/><span><em class="c7">' +
                            "职位诱惑:" + '</em>' + objArr[i].comReleaseJobTemp +
                            '</span><br/><span>' +"工作性质:"+objArr[i].comReleaseJobProp +'</span><span>' +

                            date+"发布"+

                            '</span></div>' +

                            '<div class="hot_pos_r"><div class="apply" ><a href="${pageContext.request.contextPath}/releaseJob/login"target="_blank" >'+
                            "投个简历"+'</a></div><div class="mb10"><a href="" title="" target="_blank">'+
                            objArr[i].comName+'</a></div><span><em class="c7">'+
                            "领域："+'</em>'+objArr[i].comField+'</span><span><em class="c7">'+
                            "创始人"+'</em>'+objArr[i].comFounderName+
                            '</span><br/><span><em class="c7">'+
                            "阶段："+'</em>'+objArr[i].comDeplo+'' +
                            '</span><span><em class="c7">' +
                            "规模："+'</em>'+objArr[i].comScale+
                            '</span><ul class="companyTags reset"><li>'+
                            "股票期权"+'</li><li>'+
                            "五险一金"+'</li><li>'+
                            "带薪年假"+'</li></ul></div></li>'
                        );
                    }

                    //2.分页
                    var pagearea =   document.getElementById("pagearea");
                    pagearea.innerHTML="";
                    var comReleaseJobName =  document.getElementById("search_input").value;
                    if(comReleaseJobName == null || comReleaseJobName == ''){
                        comReleaseJobName="name";
                    }
                    var comReleaseJobCity = document.getElementById("cityInput").value;
                    if(comReleaseJobCity == null || comReleaseJobCity == ''){
                        comReleaseJobCity = "全国";
                    }
                    var comReleaseJobSalaryLow = document.getElementById("slInput").value;
                    if(comReleaseJobSalaryLow == null || comReleaseJobSalaryLow == ''){
                        comReleaseJobSalaryLow = -1;
                    }
                    var comReleaseJobSalaryHigh = document.getElementById("shInput").value;
                    if(comReleaseJobSalaryHigh == null || comReleaseJobSalaryHigh == ''){
                        comReleaseJobSalaryHigh = -1;
                    }
                    var comReleaseJobExp = document.getElementById("jeInput").value;
                    if(comReleaseJobExp == null || comReleaseJobExp == ''){
                        comReleaseJobExp = "exp";
                    }
                    var comReleaseJobRequir = document.getElementById("jrInput").value;
                    if(comReleaseJobRequir == null || comReleaseJobRequir == ''){
                        comReleaseJobRequir = "dg";
                    }
                    var comReleaseJobProp = document.getElementById("jpInput").value;
                    if(comReleaseJobProp == null || comReleaseJobProp == ''){
                        comReleaseJobProp = "jp";
                    }
                    //(1)上一页
                    if(result.currentPageCode !=1){// 不是首页，则显示上一页

                          var  url_pre_page = url_getJobByName+ "/page/" + (result.currentPageCode - 1)+"?comReleaseJobName="+comReleaseJobName+"&comReleaseJobCity="+comReleaseJobCity+"&comReleaseJobSalaryLow="+
                              comReleaseJobSalaryLow+"&comReleaseJobSalaryHigh="+comReleaseJobSalaryHigh+"&comReleaseJobExp="+
                              comReleaseJobExp+"&comReleaseJobRequir="+comReleaseJobRequir+"&comReleaseJobProp="+comReleaseJobProp;


                        var  href='javascript:searchJobByPage("'+url_pre_page+'")';
                        var prePageEle = "<a  href='"+href+"'> 上一页</a>";
                        pagearea.innerHTML+=prePageEle;

                    }
                    //(2)当前页码
                    var currentPageEle = " <span>当前是第</span><span>"+result.currentPageCode+"</span> <span>页</span>";
                    pagearea.innerHTML+=currentPageEle;

                    //(3)下一页
                    if(result.currentPageCode < result.totalPages){

                        var  url_next_page = url_getJobByName+ "/page/" + (result.currentPageCode+1)+"?comReleaseJobName="+comReleaseJobName+"&comReleaseJobCity="+comReleaseJobCity+"&comReleaseJobSalaryLow="+
                            comReleaseJobSalaryLow+"&comReleaseJobSalaryHigh="+comReleaseJobSalaryHigh+"&comReleaseJobExp="+
                            comReleaseJobExp+"&comReleaseJobRequir="+comReleaseJobRequir+"&comReleaseJobProp="+comReleaseJobProp;
                        var  href='javascript:searchJobByPage("'+url_next_page+'")';
                        var nextPageEle = "<a  href='"+href+"'> 下一页</a>";
                        pagearea.innerHTML+=nextPageEle;

                    }
                    //(4) 页码其他信息
                    var othersEle = "<span>共</span><span>"+result.totalPages+"</span><span>页</span>\n" ;
                    pagearea.innerHTML+=othersEle;


                }

            }
            // 分页查询
            function searchJobByPage(URL) {
                if (window.XMLHttpRequest) {
                    xhr = new XMLHttpRequest();
                } else {
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');
                }
                xhr.open("GET", URL);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
                xhr.onreadystatechange = loadJobs;
                xhr.send();
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
            //找工作
             function searchJob() {
                if (window.XMLHttpRequest) {
                    xhr = new XMLHttpRequest();
                } else {
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');
                }
                 var comReleaseJobName =  document.getElementById("search_input").value;
                if(comReleaseJobName == null || comReleaseJobName == ''){
                    comReleaseJobName="name";
                }
                 var comReleaseJobCity = document.getElementById("cityInput").value;
                if(comReleaseJobCity == null || comReleaseJobCity == ''){
                    comReleaseJobCity = "全国";
                }
                var comReleaseJobSalaryLow = document.getElementById("slInput").value;
                 if(comReleaseJobSalaryLow == null || comReleaseJobSalaryLow == ''){
                     comReleaseJobSalaryLow = -1;
                 }
                var comReleaseJobSalaryHigh = document.getElementById("shInput").value;
                 if(comReleaseJobSalaryHigh == null || comReleaseJobSalaryHigh == ''){
                     comReleaseJobSalaryHigh = -1;
                 }
                var comReleaseJobExp = document.getElementById("jeInput").value;
                 if(comReleaseJobExp == null || comReleaseJobExp == ''){
                     comReleaseJobExp = "exp";
                 }
                var comReleaseJobRequir = document.getElementById("jrInput").value;
                 if(comReleaseJobRequir == null || comReleaseJobRequir == ''){
                     comReleaseJobRequir = "dg";
                 }
                var comReleaseJobProp = document.getElementById("jpInput").value;
                 if(comReleaseJobProp == null || comReleaseJobProp == ''){
                     comReleaseJobProp = "jp";
                 }

                 var url_getJob = url_getJobByName;

                  url_getJob+="?comReleaseJobName="+comReleaseJobName+"&comReleaseJobCity="+comReleaseJobCity+"&comReleaseJobSalaryLow="+
                      comReleaseJobSalaryLow+"&comReleaseJobSalaryHigh="+comReleaseJobSalaryHigh+"&comReleaseJobExp="+
                      comReleaseJobExp+"&comReleaseJobRequir="+comReleaseJobRequir+"&comReleaseJobProp="+comReleaseJobProp;

                xhr.open("GET", url_getJob);
                xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
                 xhr.onreadystatechange = loadJobs;
                xhr.send();

            }
            function searchJob1() {
                if (window.XMLHttpRequest) {
                    xhr = new XMLHttpRequest();
                } else {
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');
                }
                var comReleaseJobName =  document.getElementById("search_input").value;
                if(comReleaseJobName == null || comReleaseJobName == ''){
                    comReleaseJobName="name";
                }
                for(var i =1;i<10;i++){
                    children[i].firstElementChild.className="";
                }
                children[1].firstElementChild.className="current";
                for(var l =0;l<7;l++){
                            salarys[l].className="";
                } for(var j =0;j<7;j++){
                                workExps[j].className = "";
                }
                for(var k =0;k<5;k++){
                    degrees[k].className = "";
                }
                for(var n =0;n<3;n++){
                                workNatures[n].className = "";
                }
                  document.getElementById("cityInput").value="";

                    var  comReleaseJobCity = "全国";

                  document.getElementById("slInput").value="";

                    var  comReleaseJobSalaryLow = -1;

                document.getElementById("shInput").value="";

                    var  comReleaseJobSalaryHigh = -1;

                 document.getElementById("jeInput").value="";

                    var  comReleaseJobExp = "exp";

                  document.getElementById("jrInput").value="";

                    var   comReleaseJobRequir = "dg";

               document.getElementById("jpInput").value="";

                   var comReleaseJobProp = "jp";

                var url_getJob = url_getJobByName;

                url_getJob+="?comReleaseJobName="+comReleaseJobName+"&comReleaseJobCity="+comReleaseJobCity+"&comReleaseJobSalaryLow="+
                    comReleaseJobSalaryLow+"&comReleaseJobSalaryHigh="+comReleaseJobSalaryHigh+"&comReleaseJobExp="+
                    comReleaseJobExp+"&comReleaseJobRequir="+comReleaseJobRequir+"&comReleaseJobProp="+comReleaseJobProp;

                xhr.open("GET", url_getJob);
                xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
                xhr.onreadystatechange = loadJobs;
                xhr.send();

            }
        </script>

        <div class="clear"></div>
        <input type="hidden" id="resubmitToken" value="" />
        <a id="backtop" title="回到顶部" rel="nofollow"></a>
    </div><!-- end #container -->
</div><!-- end #body -->
<div id="footer">
    <div class="wrapper">
        <a href="h/about.html" target="_blank" rel="nofollow">联系我们</a>
        <a href="h/af/zhaopin.html" target="_blank">互联网公司导航</a>
        <a href="http://e.weibo.com/lagou720" target="_blank" rel="nofollow">实习精灵微博</a>
        <div class="copyright">&copy;2018-2019 InternshipElves <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备18023790号-2</a></div>
    </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/core.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/popup.min.js"></script>

</body>
</html>
