<%--
  Created by IntelliJ IDEA.
  User: xingdong
  Date: 2018/10/15
  Time: 20:42
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
    <title>公司产品-招聘服务-实习精灵-最专业的互联网招聘平台</title>


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

                </dt>
                <dd>
                    <div class="c_text">目标明确、前途光明的产品是吸引求职者的制胜法宝哦！</div>
                    <img width="668" height="56" class="c_steps" alt="第四步" src="/images/step4.png">

                    <form method="post"  id="productForm">
                        <input type="hidden" value="8f79f658e49846ae89d90a3f1590f12e" name="resubmitToken">
                        <input type="hidden" id="companyId" name="companyId" value="25927">
                        <div id="productDiv">
                            <div class="formWrapper">
                                <input type="hidden" value="25927" name="productInfos[0].companyId">


                                <h3>产品名称</h3>
                                <input type="text" placeholder="请输入产品名称" name="productInfos[0].product" id="name0">

                                <h3>产品地址</h3>
                                <input type="text" placeholder="请输入产品主页URL或产品下载地址" name="productInfos[0].productUrl" id="address0">

                                <h3>产品简介</h3>
                                <textarea placeholder="请简短描述该产品定位、产品特色、用户群体等" maxlength="1000" name="productInfos[0].productProfile" id="description0"></textarea>
                                <div class="word_count">你还可以输入 <span>500</span> 字</div>
                            </div>
                        </div>

                        <div class="clear"></div>
                        <input type="button" value="保存，下一步" id="step4Submit" class="btn_big fr" onclick="saveProduct()">

                    </form>
                </dd>
            </dl>
        </div>

        <script>
            var  xhr =null;
            function saveProduct() {
                var  url_saveProduct='${pageContext.request.contextPath}/comProduct/index02';
                if (window.XMLHttpRequest){
                    xhr =new XMLHttpRequest();
                }else {
                    xhr= new ActiveXObject("Microsoft.XMLHTTP");
                }
                var comProductName =  document.getElementById("name0").value;
                var comProductAddr =  document.getElementById("address0").value;
                var comProductIntro =  document.getElementById("description0").value;

                var  formData=  "comProductName=" + comProductName + "&comProductAddr="+comProductAddr
                    +"&comProductIntro="+comProductIntro;

                alert(formData);

                xhr.open("POST", url_saveProduct,true);
                xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
                xhr.onreadystatechange = nextIndex4;
                xhr.send(formData);
            }

            function nextIndex4() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var row = xhr.responseText;

                    if (row != 0) {

                        window.location.href="${pageContext.request.contextPath}/internshipElves/index03.jsp"
                    }
                }
            }

        </script>

        <script src="/js/step4.min.js" type="text/javascript"></script>
        <div class="clear"></div>
        <input type="hidden" value="8f79f658e49846ae89d90a3f1590f12e" id="resubmitToken">
        <a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
    </div><!-- end #container -->

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
