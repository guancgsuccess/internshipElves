<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script id="allmobilize" charset="utf-8" src="/js/allmobilize.min.js"></script>
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="alternate" media="handheld"  />

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>实习精灵</title>
    <meta property="qc:admins" content="23635710066417756375" />
    <meta content="实习精灵" name="description">
    <meta content="实习精灵" name="keywords">
    <meta name="baidu-site-verification" content="QIQ6KC1oZ6" />


    <script type="text/javascript">
        var ctx = "h";
        console.log(1);
    </script>

    <link rel="Shortcut Icon" href="h/images/favicon.ico">
    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="/css/external.min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/popup.css"/>
    <script type="text/javascript" src="/js/hotJobs.js"></script>
    <script src="/js/jquery.1.10.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/jquery.lib.min.js"></script>
    <script src="/js/ajaxfileupload.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/additional-methods.js"></script>
    <script type="text/javascript">
        var youdao_conv_id = 271546;
    </script>
    <script type="text/javascript" src="/js/conv.js"></script>
</head>
<body>

<div id="body">
    <div id="header">
        <div class="wrapper">
            <a href="index.html" class="logo">
                <img src="/images/logo.png" width="229" height="43" alt="实习精灵" />
            </a>
            <ul class="reset" id="navheader">
                <li class="current"><a href="${pageContext.request.contextPath}/internshipElves/index.jsp">首页</a></li>
                <li ><a href="${pageContext.request.contextPath}/student/isLogin" >我的简历<label style="color: red;font-size: 14px;">${tip}</label></a></li>
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
                        <li><a href="${pageContext.request.contextPath}/personCenter/isLogin">欢迎${stuName}</a></li>
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






    <script>
        function turnSearch(jobName) {
            //alert(jobName.innerText);
            if (window.XMLHttpRequest) {
                xhr = new XMLHttpRequest();
            } else {
                xhr = new ActiveXObject('Microsoft.XMLHTTP');
            }
            var url_getJob = '${pageContext.request.contextPath}/student/returnToList'
            var comReleaseJobSalaryLow = -1;
            var comReleaseJobSalaryHigh = -1;
            url_getJob+="?comReleaseJobName="+jobName.innerText+"&comReleaseJobCity="+"全国"+"&comReleaseJobSalaryLow="+
                comReleaseJobSalaryLow+"&comReleaseJobSalaryHigh="+comReleaseJobSalaryHigh+"&comReleaseJobExp="+
                "exp"+"&comReleaseJobRequir="+"dg"+"&comReleaseJobProp="+"jp";

            xhr.open("GET",url_getJob );
            xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
            xhr.onreadystatechange = returnToList;
            xhr.send();

        }

        function returnToList() {
            window.location.href="${pageContext.request.contextPath}/internshipElves/list.jsp";
        }

        function turnSearch2() {
            if (window.XMLHttpRequest) {
                xhr = new XMLHttpRequest();
            } else {
                xhr = new ActiveXObject('Microsoft.XMLHTTP');
            }
            var url_getJob = '${pageContext.request.contextPath}/student/returnToList'
            var comReleaseJobSalaryLow = -1;
            var comReleaseJobSalaryHigh = -1;
            var comReleaseJobName = document.getElementById("search_input").value;
            url_getJob+="?comReleaseJobName="+comReleaseJobName+"&comReleaseJobCity="+"全国"+"&comReleaseJobSalaryLow="+
                comReleaseJobSalaryLow+"&comReleaseJobSalaryHigh="+comReleaseJobSalaryHigh+"&comReleaseJobExp="+
                "exp"+"&comReleaseJobRequir="+"dg"+"&comReleaseJobProp="+"jp";

            xhr.open("GET",url_getJob );
            xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
            xhr.onreadystatechange = returnToList;
            xhr.send();
        }
    </script>

    <div id="container">
        <div id="sidebar">
            <div class="mainNavs">
                <div class="menu_box">
                    <div class="menu_main">
                        <h2>技术 <span></span></h2>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">Java</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">PHP</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">C</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">C++</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">Android</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">iOS</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">前端开发</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">测试</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">技术经理</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">项目经理</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">架构师</a>
                    </div>
                    <div class="menu_sub dn">
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    后端开发
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >Java</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >C++</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >PHP</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >数据挖掘</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >C</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >C#</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >.NET</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >Hadoop</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >Python</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >Delphi</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >VB</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >Perl</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >Ruby</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >Node.js</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    移动开发
                                </a>
                            </dt>
                            <dd>
                                <a href=href="javascript:void(0)" onclick="turnSearch(this)"


                                >HTML5</a>
                                <a href=href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >Android</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >iOS</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >WP</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    前端开发
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >web前端</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >Flash</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >html5</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >JavaScript</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >U3D</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >COCOS2D-X</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    测试
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >测试工程师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >自动化测试</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >功能测试</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >性能测试</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >测试开发</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    运维
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >运维工程师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >运维开发工程师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >网络工程师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >系统工程师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >IT支持</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    DBA
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >MySQL</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >SQLServer</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >Oracle</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >DB2</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >MongoDB</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    项目管理
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >项目经理</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    高端职位
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >技术经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >技术总监</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >测试经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >架构师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >CTO</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >运维总监</a>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="menu_box">
                    <div class="menu_main">
                        <h2>产品 <span></span></h2>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">产品经理</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">产品助理</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">无线产品经理</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">游戏策划</a>
                    </div>
                    <div class="menu_sub dn">
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    产品经理
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >产品经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >网页产品经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >移动产品经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >产品助理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >数据产品经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"
                                >电商产品经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >游戏策划</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    产品设计师
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >网页产品设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >无线产品设计师</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    高端职位
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >产品部经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >产品总监</a>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="menu_box">
                    <div class="menu_main">
                        <h2>设计 <span></span></h2>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">UI</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">UE</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">设计师</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">交互设计</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">数据分析</a>
                    </div>
                    <div class="menu_sub dn">
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    视觉设计
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >视觉设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >网页设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >Flash设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"
                                >APP设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >UI设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >平面设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"labelWords=label"


                                >美术设计师（2D/3D）</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >广告设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"
                                >多媒体设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >原画师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >游戏特效</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >游戏界面设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >游戏场景</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >游戏角色</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >游戏动作</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    交互设计
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >交互设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >无线交互设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >网页交互设计师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"
                                >硬件交互设计师</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    用户研究
                                </a>
                            </dt>
                            <dd>
                                <a href=href="javascript:void(0)" onclick="turnSearch(this)"
                                >数据分析师</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >用户研究员</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >游戏数值策划</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    高端职位
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"
                                >设计经理/主管</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >设计总监</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >视觉设计经理/主管</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"
                                >视觉设计总监</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >交互设计经理/主管</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >交互设计总监</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >用户研究经理/主管</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"
                                >用户研究总监</a>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="menu_box">
                    <div class="menu_main">
                        <h2>运营 <span></span></h2>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">运营</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">游戏运营</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">编辑</a>
                    </div>
                    <div class="menu_sub dn">
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    运营
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"
                                >用户运营</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >产品运营</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >数据运营</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >内容运营</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >活动运营</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >商家运营</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >品类运营</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >游戏运营</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >网络推广</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    编辑
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >副主编</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >内容编辑</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    客服
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >售前咨询</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >售后客服</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    高端职位
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >主编</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >运营总监</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >COO</a>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="menu_box">
                    <div class="menu_main">
                        <h2>市场与销售 <span></span></h2>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">市场推广</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">市场策划</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">活动策划</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">BD</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">销售经理</a>
                    </div>
                    <div class="menu_sub dn">
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    市场/营销
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >市场营销</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >市场策划</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >市场顾问</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >市场推广</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >SEO</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >SEM</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >商务渠道</a>
                                <a hhref="javascript:void(0)" onclick="turnSearch(this)"

                                >商业数据分析</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >活动策划</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    公关
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >媒介经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >广告协调</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >品牌公关</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    销售
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >销售专员</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >销售经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >客户代表</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >大客户代表</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >BD经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >商务渠道</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >渠道销售</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >代理商销售</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    高端职位
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >市场总监</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >销售总监</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >商务总监</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >CMO</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >公关总监</a>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="menu_box">
                    <div class="menu_main">
                        <h2>职能 <span></span></h2>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">HR</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">行政</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">会计</a>
                        <a href="javascript:void(0)" onclick="turnSearch(this)">出纳</a>
                    </div>
                    <div class="menu_sub dn">
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    人力资源
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >人力资源</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >招聘</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >HRBP</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >人事/HR</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >培训经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >薪资福利经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >绩效考核经理</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    行政
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >助理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >前台</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >法务</a>
                                <a hhref="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >行政</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    财务
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                   class="curr"

                                >会计</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"
                                   class="curr"

                                >出纳</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >财务</a>
                            </dd>
                        </dl>
                        <dl class="reset">
                            <dt>
                                <a href="javascript:void(0)" onclick="turnSearch(this)">
                                    高端职位
                                </a>
                            </dt>
                            <dd>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"

                                >行政总监/经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"
                                >财务总监/经理</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"
                                >HRD/HRM</a>
                                <a href="javascript:void(0)" onclick="turnSearch(this)"


                                >CFO</a>
                            </dd>
                        </dl>
                    </div>
                </div>
            </div>
            <a class="subscribe" href="subscribe.html" target="_blank">订阅职位</a>
        </div>
        <div class="content">
            <div id="search_box">
                <form id="searchForm" name="searchForm"  method="get">
                    <ul id="searchType">
                        <li data-searchtype="1" class="type_selected">职位</li>
                        <li data-searchtype="4">公司</li>
                    </ul>
                    <div class="searchtype_arrow"></div>
                    <input type="text" id="search_input" name = "kd"  tabindex="1" value=""  placeholder="请输入职位名称，如：产品经理"  />
                    <input type="hidden" name="spc" id="spcInput" value=""/>
                    <input type="hidden" name="pl" id="plInput" value=""/>
                    <input type="hidden" name="gj" id="gjInput" value=""/>
                    <input type="hidden" name="xl" id="xlInput" value=""/>
                    <input type="hidden" name="yx" id="yxInput" value=""/>
                    <input type="hidden" name="gx" id="gxInput" value="" />
                    <input type="hidden" name="st" id="stInput" value="" />
                    <input type="hidden" name="labelWords" id="labelWords" value="" />
                    <input type="hidden" name="lc" id="lc" value="" />
                    <input type="hidden" name="workAddress" id="workAddress" value=""/>
                    <input type="hidden" name="city" id="cityInput" value=""/>
                    <input type="button" id="search_button" value="搜索"  onclick="turnSearch2()"/>

                </form>
            </div>
            <style>
                .ui-autocomplete{width:488px;background:#fafafa !important;position: relative;z-index:10;border: 2px solid #91cebe;}
                .ui-autocomplete-category{font-size:16px;color:#999;width:50px;position: absolute;z-index:11; right: 0px;/*top: 6px; */text-align:center;border-top: 1px dashed #e5e5e5;padding:5px 0;}
                .ui-menu-item{ *width:439px;vertical-align: middle;position: relative;margin: 0px;margin-right: 50px !important;background:#fff;border-right: 1px dashed #ededed;}
                .ui-menu-item a{display:block;overflow:hidden;}
            </style>
            <script type="text/javascript" src="/js/search.min.js"></script>
            <dl class="hotSearch">
                <dt>热门搜索：</dt>
                <dd><a href="javascript:void(0)" onclick="turnSearch(this)">Java</a></dd>
                <dd><a href="javascript:void(0)" onclick="turnSearch(this)">PHP</a></dd>
                <dd><a href="javascript:void(0)" onclick="turnSearch(this)">Android</a></dd>
                <dd><a href="javascript:void(0)" onclick="turnSearch(this)">iOS</a></dd>
                <dd><a href="javascript:void(0)" onclick="turnSearch(this)">前端</a></dd>
                <dd><a href="javascript:void(0)" onclick="turnSearch(this)">产品经理</a></dd>
                <dd><a href="javascript:void(0)" onclick="turnSearch(this)">UI</a></dd>
                <dd><a href="javascript:void(0)" onclick="turnSearch(this)">运营</a></dd>
                <dd><a href="javascript:void(0)" onclick="turnSearch(this)">BD</a></dd>
                <dd><a href="javascript:void(0)" onclick="turnSearch(this)">实习</a></dd>
            </dl>
            <div id="home_banner">
                <ul class="banner_bg">
                    <li  class="banner_bg_1 current" >
                        <a href="h/subject/s_buyfundation.html?utm_source=DH__lagou&utm_medium=banner&utm_campaign=haomai" target="_blank"><img src="/images/d05a2cc6e6c94bdd80e074eb05e37ebd.jpg" width="612" height="160" alt="好买基金——来了就给100万" /></a>
                    </li>
                    <li  class="banner_bg_2" >
                        <a href="h/subject/s_worldcup.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=wc" target="_blank"><img src="/images/c9d8a0756d1442caa328adcf28a38857.jpg" width="612" height="160" alt="世界杯放假看球，老板我也要！" /></a>
                    </li>
                    <li  class="banner_bg_3" >
                        <a href="h/subject/s_xiamen.html?utm_source=DH__lagou&utm_medium=home&utm_campaign=xiamen" target="_blank"><img src="/images/d03110162390422bb97cebc7fd2ab586.jpg" width="612" height="160" alt="出北京记——第一站厦门" /></a>
                    </li>
                </ul>
                <div class="banner_control">
                    <em></em>
                    <ul class="thumbs">
                        <li  class="thumbs_1 current" >
                            <i></i>
                            <img src="/images/4469b1b83b1f46c7adec255c4b1e4802.jpg" width="113" height="42" />
                        </li>
                        <li  class="thumbs_2" >
                            <i></i>
                            <img src="/images/381b343557774270a508206b3a725f39.jpg" width="113" height="42" />
                        </li>
                        <li  class="thumbs_3" >
                            <i></i>
                            <img src="/images/354d445c5fd84f1990b91eb559677eb5.jpg" width="113" height="42" />
                        </li>
                    </ul>
                </div>
            </div>

            <ul id="da-thumbs" class="da-thumbs">
                <li >
                    <a href="h/c/1650.html" target="_blank">
                        <img src="/images/a254b11ecead45bda166afa8aaa9c8bc.jpg" width="113" height="113" alt="联想" />
                        <div class="hot_info">
                            <h2 title="联想">联想</h2>
                            <em></em>
                            <p title="世界因联想更美好">
                                世界因联想更美好
                            </p>
                        </div>
                    </a>
                </li>
                <li >
                    <a href="h/c/9725.html" target="_blank">
                        <img src="/images/c75654bc2ab141df8218983cfe5c89f9.jpg" width="113" height="113" alt="淘米" />
                        <div class="hot_info">
                            <h2 title="淘米">淘米</h2>
                            <em></em>
                            <p title="将心注入 追求极致">
                                将心注入 追求极致
                            </p>
                        </div>
                    </a>
                </li>
                <li >
                    <a href="h/c/1914.html" target="_blank">
                        <img src="/images/2bba2b71d0b0443eaea1774f7ee17c9f.png" width="113" height="113" alt="优酷土豆" />
                        <div class="hot_info">
                            <h2 title="优酷土豆">优酷土豆</h2>
                            <em></em>
                            <p title="专注于视频领域，是中国网络视频行业领军企业">
                                专注于视频领域，是中国网络视频行业领军企业
                            </p>
                        </div>
                    </a>
                </li>
                <li >
                    <a href="h/c/6630.html" target="_blank">
                        <img src="/images/f4822a445a8b495ebad81fcfad3e40e2.jpg" width="113" height="113" alt="思特沃克" />
                        <div class="hot_info">
                            <h2 title="思特沃克">思特沃克</h2>
                            <em></em>
                            <p title="一家全球信息技术服务公司">
                                一家全球信息技术服务公司
                            </p>
                        </div>
                    </a>
                </li>
                <li >
                    <a href="h/c/2700.html" target="_blank">
                        <img src="/images/5caf8f9631114bf990f87bb11360653e.png" width="113" height="113" alt="奇猫" />
                        <div class="hot_info">
                            <h2 title="奇猫">奇猫</h2>
                            <em></em>
                            <p title="专注于移动互联网、互联网产品研发">
                                专注于移动互联网、互联网产品研发
                            </p>
                        </div>
                    </a>
                </li>
                <li  class="last" >
                    <a href="h/c/1335.html" target="_blank">
                        <img src="/images/c0052c69ef4546c3b7d08366d0744974.jpg" width="113" height="113" alt="堆糖网" />
                        <div class="hot_info">
                            <h2 title="堆糖网">堆糖网</h2>
                            <em></em>
                            <p title="分享收集生活中的美好，遇见世界上的另外一个你">
                                分享收集生活中的美好，遇见世界上的另外一个你
                            </p>
                        </div>
                    </a>
                </li>
            </ul>

            <ul class="reset hotabbing">
                <li class="current" onclick="hotJobs()">热门职位</li>
                <li onclick="newJobs()">最新职位</li>
            </ul>
            <div id="hotList">
                <ul class="hot_pos reset" id="hotPos">
                </ul>
                <ul class="hot_pos hot_posHotPosition reset" style="display:none;" id="newJob">

                </ul>
            </div>

            <div class="clear"></div>
        </div>
        <input type="hidden" value="" name="userid" id="userid" />
        <!-------------------------------------弹窗lightbox  ----------------------------------------->
        <div style="display:none;">
            <!-- 登录框 -->
            <div id="loginPop" class="popup" style="height:240px;">
                <form id="loginForm">
                    <input type="text" id="email" name="email" tabindex="1" placeholder="请输入登录邮箱地址" />
                    <input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
                    <span class="error" style="display:none;" id="beError"></span>
                    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
                    <a href="h/reset.html" class="fr">忘记密码？</a>
                    <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
                </form>
                <div class="login_right">
                    <div>还没有实习精灵帐号？</div>
                    <a href="register.html" class="registor_now">立即注册</a>
                    <div class="login_others">使用以下帐号直接登录:</div>
                    <a href="h/ologin/auth/sina.html" target="_blank" id="icon_wb" class="icon_wb" title="使用新浪微博帐号登录"></a>
                    <a href="h/ologin/auth/qq.html" class="icon_qq" id="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
                </div>
            </div><!--/#loginPop-->
        </div>
        <!------------------------------------- end ----------------------------------------->
        <script type="text/javascript" src="/js/Chart.min.js"></script>
        <script type="text/javascript" src="/js/home.min.js"></script>
        <script type="text/javascript" src="/js/count.js"></script>
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

<script type="text/javascript" src="/js/core.min.js"></script>
<script type="text/javascript" src="/js/popup.min.js"></script>
<script type="text/javascript" src="/js/newJobs.js"></script>
<!-- 在页面加载的时候，调用指定的方法 -->
 <script>
     window.onload = function () {
         hotJobs();
     }
 </script>
</div>
</body>
</html>
