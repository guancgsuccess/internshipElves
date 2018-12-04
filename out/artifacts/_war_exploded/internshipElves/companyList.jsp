<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns:wb="http://open.weibo.com/wb">
<head>

    <script src="/js/index.js"></script>
    <script id="allmobilize" charset="utf-8" src="/js/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="alternate" media="handheld"  />
    <!-- end 云适配 -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>公司列表</title>
    <meta property="qc:admins" content="23635710066417756375" />
    <meta content="实习精灵" name="description">
    <meta content="实习精灵" name="keywords">
    <meta name="baidu-site-verification" content="QIQ6KC1oZ6" />


    <link rel="Shortcut Icon" href="h/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="/css/external.min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/popup.css"/>
    <script src="/js/jquery.1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/jquery.lib.min.js"></script>

</head>
<div style="position:relative; left: 150px; bottom: 15px;">
    <a href="${pageContext.request.contextPath}/internshipElves/index.jsp" class="logo">
        <img src="/images/logo.png" width="229" height="43" alt="实习精灵" />
    </a>
    <ul class="reset" id="navheader" >
        <li ><a href="${pageContext.request.contextPath}/internshipElves/index.jsp">首页</a></li>
        <li><a href="${pageContext.request.contextPath}/student/isLogin" >我的简历</a></li>
        <li class="current"><a href="${pageContext.request.contextPath}/internshipElves/companyList.jsp" rel="nofollow">公司</a></li>
        <li ><a href="${pageContext.request.contextPath}/personCenter/loginIn" rel="nofollow">个人中心</a></li>
        <c:choose>
            <c:when test="${empty stuId}">
                <li ><a href="" rel="nofollow">企业中心</a></li>
            </c:when>
        </c:choose>
    </ul>
    <ul class="loginTop">
        <%--<c:choose>--%>
        <%--<c:when test="${empty stuId}">--%>
        <%--<li><a href="" rel="nofollow">企业入口</a></li>--%>
        <%--<li>|</li>--%>
        <%--<li><a href="${pageContext.request.contextPath}/internshipElves/login.jsp" rel="nofollow">学生入口</a></li>--%>
        <%--</c:when>--%>

        <%--&lt;%&ndash;<c:when test="${!empty stuId && !empty stuName}">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<li><a href="${pageContext.request.contextPath}/personCenter/isLogin">欢迎${stuName}</a></li>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<li>|</li>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<li><a href="${pageContext.request.contextPath}/stuLogin/logout">退出</a></li>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</c:when>&ndash;%&gt;--%>

        <%--&lt;%&ndash;<c:otherwise>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<li> <a href="${pageContext.request.contextPath}/student/getInfo?id=${stuId}">欢迎${stuPhoneMail}</a></li>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<li>|</li>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<li><a href="${pageContext.request.contextPath}/stuLogin/logout">退出</a></li>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</c:otherwise>&ndash;%&gt;--%>
        <%--</c:choose>--%>
    </ul>
</div>
<!-- end #header -->
<div id="container">

    <div class="clearfix">
        <div class="content_l">

            <dl class="hc_tag">
                <dt>
                    <!--  <h2 class="fl">热门公司</h2> -->
                    <ul class="workplace reset fr" id="workplaceSelect">
                        <li >
                            <a href="javascript:void(0)"  class="current" id="one"  >全国</a>
                            |
                        </li>
                        <li >
                            <a href="javascript:void(0)"  id="two" >北京</a>
                            |
                        </li>
                        <li >
                            <a href="javascript:void(0)" id="three" >上海</a>
                            |
                        </li>
                        <li >
                            <a href="javascript:void(0)"  >广州</a>
                            |
                        </li>
                        <li >
                            <a href="javascript:void(0)"  >深圳</a>
                            |
                        </li>
                        <li >
                            <a href="javascript:void(0)"  >成都</a>
                            |
                        </li>
                        <li >
                            <a href="javascript:void(0)"  >杭州</a>
                            |
                        </li>
                        <li >
                            <a href="javascript:void(0)" >武汉</a>
                            |
                        </li>
                        <li >
                            <a href="javascript:void(0)" >南京</a>
                            |
                        </li>
                        <li  class="more" >
                            <a href="javascript:void(0)" >其他</a>
                            <div class="triangle citymore_arrow"></div>
                        </li>
                        <li id="box_expectCity" class="searchlist_expectCity dn">
                            <span class="bot"></span>
                            <span class="top"></span>
                            <dl>
                                <dt>ABCDEF</dt>
                                <dd>
                                    <span>北京</span>
                                    <span>长春</span>
                                    <span>成都</span>
                                    <span>重庆</span>
                                    <span>长沙</span>
                                    <span>常州</span>
                                    <span>东莞</span>
                                    <span>大连</span>
                                    <span>佛山</span>
                                    <span>福州</span>
                                </dd>
                            </dl>
                            <dl>
                                <dt>GHIJ</dt>
                                <dd>
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
                                <dd>
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
                                <dd>
                                    <span>青岛</span>
                                    <span>泉州</span>
                                </dd>
                            </dl>
                            <dl>
                                <dt>STUV</dt>
                                <dd>
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
                                <dd>
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
                        </li>
                    </ul>
                </dt>
                <dd>
                    <dl>
                        <dt style="width: 80px;">发展阶段：</dt>
                        <dd>
                            <a href="javascript:void(0)" onclick="changeCity1(this)">初创型</a>
                            <a href="javascript:void(0)" onclick="changeCity1(this)">成长型</a>
                            <a href="javascript:void(0)" onclick="changeCity1(this)">成熟型</a>
                            <a href="javascript:void(0)" onclick="changeCity1(this)">已上市</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt  style="width: 80px;">行业领域：</dt>
                        <dd>
                            <a href="javascript:void(0)" onclick="changeCity2(this)">生活服务</a>
                            <a href="javascript:void(0)" onclick="changeCity2(this)">日常需要</a>
                            <a href="javascript:void(0)" onclick="changeCity2(this)">社交</a>
                            <a href="javascript:void(0)" onclick="changeCity2(this)">企业服务</a>
                            <a href="javascript:void(0)" onclick="changeCity2(this)">O2O</a>
                            <a href="javascript:void(0)" onclick="changeCity2(this)">教育</a>
                            <a href="javascript:void(0)" onclick="changeCity2(this)">文化艺术</a>
                            <a href="javascript:void(0)" onclick="changeCity2(this)">游戏</a>
                            <a href="javascript:void(0)">在线旅游</a>
                            <a href="javascript:void(0)">金融互联网</a>
                            <a href="javascript:void(0)">健康医疗</a>
                            <a href="javascript:void(0)">移动互联网</a>
                            <a href="javascript:void(0)">硬件</a>
                            <a href="javascript:void(0)">搜索</a>
                            <a href="javascript:void(0)">安全</a>
                            <a href="javascript:void(0)">运动体育</a>
                            <a href="javascript:void(0)">云计算\大数据</a>
                            <a href="javascript:void(0)">移动广告</a>
                            <a href="javascript:void(0)">社会化营销</a>
                            <a href="javascript:void(0)">视频多媒体</a>
                            <a href="javascript:void(0)">媒体</a>
                            <a href="javascript:void(0)">智能家居</a>
                            <a href="javascript:void(0)">智能电视</a>
                            <a href="javascript:void(0)">分类信息</a>
                            <a href="javascript:void(0)">招聘</a>
                        </dd>
                    </dl>
                    <!-- <dl>
                        <dt>热门标签：</dt>
                        <dd>                                                                                                                                            <a href="javascript:void(0)">交通补助</a>
                                      </dd>
                    </dl> -->
                </dd>
            </dl>
            <script>
                var children = document.getElementById("workplaceSelect").children ;//dd
                for(var i =0;i<9;i++){
                    children[i].index = i;

                    children[i].onclick = function () {

                        if(children[this.index].firstElementChild.className==""){
                            for(var i1=0;i1<9;i1++){
                                children[i1].firstElementChild.className="";
                            }
                            children[this.index].firstElementChild.className="current";
                            var address = children[this.index].firstElementChild.innerText;
                            document.getElementById("cityInput").value=address;
                        }else{
                            children[this.index].firstElementChild.className="";
                            children[0].firstElementChild.className="current";
                            document.getElementById("cityInput").value="";
                        }
                        comList1();

                    }
                }

            </script>



            <input type="hidden"  id="cityInput">
            <input type="hidden" id="developState">
            <input type="hidden" id="doMain">
            <input type="hidden" id="pageCode">

            <script>
                function changeCity(cityName) {
                    document.getElementById("cityInput").value=cityName.innerText;
                    comList1();
                }
                function changeCity1(cityName) {
                    document.getElementById("developState").value=cityName.innerText;
                    comList1();
                }
                function changeCity2(cityName) {
                    document.getElementById("doMain").value =cityName.innerText;
                    comList1();
                }
                function changeCity3(cityName) {
                    document.getElementById("pageCode").value =cityName.innerText;
                    comList1();
                }

                // 分页查询
                var url_getComByPage = '${pageContext.request.contextPath}/comMessage/byPage';

                //页面加载完之后执行

                window.onload=function () {
                    comList1();
                }


                //  var currentPageCode = 1;

                //发出请求 等待响应
                function comList1() {
                    if (window.XMLHttpRequest) {
                        xhr = new XMLHttpRequest();
                    } else {
                        xhr = new ActiveXObject('Microsoft.XMLHTTP');
                    }
                    var comCity=document.getElementById("cityInput").value;
                    var comDeplo=document.getElementById("developState").value;
                    var comField = document.getElementById("doMain").value;

                    url_getCompany = url_getComByPage;
                    url_getCompany+="?comCity="+comCity+"&comDeplo="+comDeplo+"&comField="+comField;
                    xhr.open("GET", url_getCompany);
                    xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
                    xhr.onreadystatechange = byPage;
                    xhr.send();


                }
                //分页
                function comList2(URL) {
                    if (window.XMLHttpRequest) {
                        xhr = new XMLHttpRequest();
                    } else {
                        xhr = new ActiveXObject('Microsoft.XMLHTTP');
                    }
                    xhr.open("GET", URL);
                    xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
                    xhr.onreadystatechange = byPage;
                    xhr.send();
                }


                //处理响应页面渲染，
                function byPage() {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        var result1 = JSON.parse(xhr.responseText);
                        console.log(result1);
                        var result = result1.modelList;

                        //console.log(result);

                        var comList = document.getElementById("comList");
                        var byPage = document.getElementById("span5");
                        comList.innerHTML = "";
                        byPage.innerHTML = "";
                        for (var i = 0; i < result.length; i++) {
                            var url = '${pageContext.request.contextPath}/comMessage/queryByName/name/'+result[i].comName;

                            comList.innerHTML += ('<li  style="display: inline-block " >' +
                                '<a href="h/c/25829.html" target="_blank">' +
                                '<h3 title="CCIC">' + '<a href="'+url+'">'+result[i].comName+'</a>' + '</h3>' +
                                '<div class="comLogo">' +
                                '<img src="' + '/images/timg'+result[i].comMessagePrepareA + '"  width="200" height="250" alt="CCIC" />' +
                                // '<ul><li>' +
                                // result[i].comCity + '</li><li>' +
                                // result[i].comScale + '</li></ul> </div></a>' +
                                '<a href="h/jobs/148928.html" target="_blank">' +
                                result[i].comInterAddr + '</a>' +
                                '<a href="h/jobs/148919.html" target="_blank">' +
                                result[i].comField + '</a>' +
                                '<a href="h/jobs/148931.html" target="_blank">' +
                                result[i].comDeplo + '</a>' +
                                '<ul class="reset ctags"><li>' +
                                result[i].comIntroduce + '</li></ul></li>');
                        }


                        if (result1.currentPageCode != 1) {
                            var pre_code =result1.currentPageCode-1;
                            var url_pre_Page = url_getComByPage;
                            var comCity=document.getElementById("cityInput").value;
                            var comDeplo=document.getElementById("developState").value;
                            var comField = document.getElementById("doMain").value;
                            url_pre_Page += "?comCity=" + comCity + "&comDeplo=" + comDeplo +
                                "&comField=" + comField + "&currentPageCode=" +pre_code;
                            var href = 'javascript:comList2("' + url_pre_Page + '")';
                            var byPageSmall = "<a style=\"color: #555;font-weight: 500;font-size: 16px;padding: 5px 12px;margin: 0 5px; border: 1px solid #ededed;\" href='" + href + "'> 上一页</a>";
                            byPage.innerHTML += byPageSmall;
                        }



                        var byPageSmall = "<span style=\"background-color:#00b38a;color: #fff;font-weight: 500;font-size: 16px; padding: 5px 12px;margin: 0 5px;border: 1px solid #00b38a;\">" + '当前是第'+result1.currentPageCode + '页'+"</span> ";
                        byPage.innerHTML += byPageSmall;



                        if (result1.currentPageCode < result1.totalPages) {
                            var  next_code = result1.currentPageCode + 1;
                            var url_next_Page = url_getComByPage;
                            var comCity=document.getElementById("cityInput").value;
                            var comDeplo=document.getElementById("developState").value;
                            var comField = document.getElementById("doMain").value;
                            url_next_Page += "?comCity="+comCity+"&comDeplo="+comDeplo+"&comField="+comField+"&currentPageCode="+next_code;
                            var href = 'javascript:comList2("' + url_next_Page + '")';
                            var byPageSmall1 = "<a style=\"color: #555;font-weight: 500;font-size: 16px;padding: 5px 12px;margin: 0 5px; border: 1px solid #ededed;\" href='" + href + "'> 下一页</a>";
                            byPage.innerHTML += byPageSmall1;
                        }


                        var byPageSmall2 = "<span>.........</span><span style=\"color: #555;padding: 5px 12px;margin: 0 5px;font-weight: 500;font-size: 16px; border: 1px solid #ededed;\">" +'共'+ result1.totalPages + '页'+"</span>\n";
                        byPage.innerHTML += byPageSmall2;

                    }
                }


            </script>
            <div style="width: 700px; ">
                <ul class="hc_list reset" style="float: left;" id="comList">

                </ul>

                <div id="span5" style="text-align: center;position: relative;top: 50px;">

                </div>


            </div>
        </div>

        <div class="content_r">
            <div class="subscribe_side">
                <a href="subscribe.html" target="_blank">
                    <div class="subpos"><span>订阅</span> 职位</div>
                    <div class="c7">实习精灵会根据你的筛选条件，定期将符合你要求的职位信息发给你
                    </div>
                    <div class="count">已有
                        <em>3</em>
                        <em>4</em>
                        <em>2</em>
                        <em>1</em>
                        <em>0</em>
                        人订阅
                    </div>
                    <i>我也要订阅职位</i>
                </a>
            </div>
            <!-- <a href="h/speed/speed3.html" target="_blank" class="adSpeed"></a> -->
            <a href="h/subject/jobguide.html" target="_blank" class="eventAd">
                <img src="/images/subject280.jpg" width="280" height="135" />
            </a>
            <a href="h/subject/risingPrice.html" target="_blank" class="eventAd">
                <img src="/images/rising280.png" width="280" height="135" />
            </a>
        </div>

    </div>

    <input type="hidden" value="" name="userid" id="userid" />

    <script type="text/javascript" src="/js/company_list.min.js"></script>

    <div class="clear"></div>
    <input type="hidden" id="resubmitToken" value="" />
    <a id="backtop" title="回到顶部" rel="nofollow"></a>
</div><!-- end #container -->
</div><!-- end #body -->
<script type="text/javascript" src="/js/core.min.js"></script>
<script type="text/javascript" src="/js/popup.min.js"></script>

<!--  -->

</body>
</html>