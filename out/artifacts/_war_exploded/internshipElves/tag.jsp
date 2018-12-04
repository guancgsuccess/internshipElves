<%--
  Created by IntelliJ IDEA.
  User: xingdong
  Date: 2018/10/15
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    </script><script type="text/javascript" async="" src="/js/conversion.js"></script><script src="/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
    <meta content="no-siteapp" http-equiv="Cache-Control">
    <link  media="handheld" rel="alternate">
    <!-- end 云适配 -->
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>公司标签-招聘服务-实习精灵-最专业的互联网招聘平台</title>
    <meta content="23635710066417756375" property="qc:admins">
    <meta content="QIQ6KC1oZ6" name="baidu-site-verification">

    <link href="/css/style.css" type="text/css" rel="stylesheet">
    <link href="/css/external.min.css" type="text/css" rel="stylesheet">
    <link href="/css/popup.css" type="text/css" rel="stylesheet">
    <script type="text/javascript" src="/js/jquery.1.10.1.min.js"></script>
    <script src="/js/jquery.lib.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/ajaxfileupload.js"></script>
    <script src="/js/additional-methods.js" type="text/javascript"></script>
    <!--[if lte IE 8]>
    <script type="text/javascript" src="/js/excanvas.js"></script>
    <![endif]-->
    <script type="text/javascript">
        var youdao_conv_id = 271546;
    </script>
    <script src="/js/conv.js" type="text/javascript"></script>
    <script src="/js/ajaxCross.json" charset="UTF-8"></script></head>
<body>
<div id="body">
    <div id="header">
        <div class="wrapper">
            <a class="logo" href="${pageContext.request.contextPath}/internshipElves/index.jsp">
                <img width="229" height="43" alt="实习精灵" src="/images/logo.png">
            </a>
            <ul id="navheader" class="reset">
                <li><a href="${pageContext.request.contextPath}/internshipElves/index.jsp">首页</a></li>
                <li><a target="_blank" href="${pageContext.request.contextPath}/internshipElves/companyList.jsp">公司</a></li>
                <li><a rel="nofollow" href="${pageContext.request.contextPath}/internshipElves/myhome2.jsp">企业中心</a></li>
            </ul>
            <dl class="collapsible_menu">
                <dt>
                    <span><a href="${pageContext.request.contextPath}/comLogin/logout" style="color: lightcyan">退出</a></span>
                </dt>
            </dl>
        </div>
    </div>

    <div id="container">

        <div class="content_mid">
            <dl class="c_section c_section_mid">
                <dt>
                    <h2><em></em>填写公司信息</h2>
                    <a class="c_addjob" href="create.html"><i></i>发布新职位</a>
                </dt>
                <dd id="step2Form">
                    <form   id="stepLabel" method="post" >
                    <div class="c_text">简短明了的标签信息让求职者更加方便检索，更快找到你们！</div>
                    <img width="668" height="56" class="c_steps" alt="第二步" src="/images/step2.png">

                    <h3>已添加标签</h3>
                    <ul class="reset" id="labels">
                    </ul>

                    <div class="clear"></div>

                    <div id="box_labels">
                        <dl>
                            <dt>薪酬激励</dt>
                            <dd>
                                <ul class="reset">
                                    <li>年终分红</li>
                                    <li>绩效奖金</li>
                                    <li>股票期权</li>
                                    <li>专项奖金</li>
                                    <li>年底双薪</li>
                                </ul>
                            </dd>
                        </dl>
                        <dl>
                            <dt>员工福利</dt>
                            <dd>
                                <ul class="reset">
                                    <li>五险一金</li>
                                    <li>通讯津贴</li>
                                    <li>交通补助</li>
                                    <li>带薪年假</li>
                                </ul>
                            </dd>
                        </dl>
                        <dl>
                            <dt>员工关怀</dt>
                            <dd>
                                <ul class="reset">
                                    <li>免费班车</li>
                                    <li>节日礼物</li>
                                    <li>年度旅游</li>
                                    <li>弹性工作</li>
                                    <li>定期体检</li>
                                    <li>午餐补助</li>
                                </ul>
                            </dd>
                        </dl>
                        <dl>
                            <dt>其他</dt>
                            <dd>
                                <ul class="reset">
                                    <li>岗位晋升</li>
                                    <li>技能培训</li>
                                    <li>管理规范</li>
                                    <li>扁平管理</li>
                                    <li>领导好</li>
                                    <li>美女多</li>
                                    <li>帅哥多</li>
                                </ul>
                            </dd>
                        </dl>
                    </div>
                    <input type="hidden" id="companyId" name="companyId" value="25927">
                    <input type="button" value="保存，下一步" id="step2Submit" class="btn_big fr" onclick="saveLabel()">

                         </form>
                </dd>
            </dl>
        </div>

        <script >
            var  xhr =null;
            function  saveLabel() {
                var url_saveLabel='${pageContext.request.contextPath}/comLabel/tap';
                if (window.XMLHttpRequest){
                    xhr =new XMLHttpRequest();
                }else {
                    xhr= new ActiveXObject("Microsoft.XMLHTTP");
                }

                var comLabelOne = "comLabelOne="+ document.getElementById("labels").innerText;
                alert(comLabelOne);
                xhr.open("POST",url_saveLabel,true);
                xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
                xhr.onreadystatechange = nextIndex2;
                xhr.send(comLabelOne)

            }
            function nextIndex2() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var row = xhr.responseText;

                    if (row != 0) {

                        window.location.href="${pageContext.request.contextPath}/internshipElves/founder.jsp"
                    }
                }

            }

        </script>

        <script src="/js/step2.min.js" type="text/javascript"></script>
        <div class="clear"></div>
        <input type="hidden" value="" id="resubmitToken">
        <a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
    </div><!-- end  #container -->
    <div id="footer">
        <div class="wrapper">
            <a rel="nofollow" target="_blank" href=#">联系我们</a>
            <a target="_blank" href="#">互联网公司导航</a>
            <a rel="nofollow" target="_blank" href="#">实习精灵微博</a>
            <div class="copyright">©2018-2019 internshipElves <a href="#" target="_blank">京ICP备18023790号-2</a></div>
        </div>
    </div>
</div><!-- end #body -->



<script src="/js/core.min.js" type="text/javascript"></script>
<script src="/js/popup.min.js" type="text/javascript"></script>

<!--  -->


<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div>

</body>
</html>
