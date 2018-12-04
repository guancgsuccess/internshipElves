<%--
  Created by IntelliJ IDEA.
  User: xingdong
  Date: 2018/10/15
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!DOCTYPE HTML>
    <html xmlns:wb="http://open.weibo.com/wb"><head>
        </script><script type="text/javascript" async="" src="${pageContext.request.contextPath}/js/conversion.js"></script><script src="${pageContext.request.contextPath}/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
        <meta content="no-siteapp" http-equiv="Cache-Control">
        <link  media="handheld" rel="alternate">
        <!-- end 云适配 -->
        <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
        <title>基本信息-招聘服务-实习精灵-最专业的互联网招聘平台</title>

        <!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
        <script type="text/javascript">
            var ctx = "http://www.lagou.com";
            console.log(1);
        </script>
        <link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
        <link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/external.min.css" type="text/css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/popup.css" type="text/css" rel="stylesheet">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.1.10.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.lib.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="/js/ajaxfileupload.js"></script>
        <script src="${pageContext.request.contextPath}/js/additional-methods.js" type="text/javascript"></script>
        <!--[if lte IE 8]>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/excanvas.js"></script>
        <![endif]-->
        <script type="text/javascript">
            var youdao_conv_id = 271546;
        </script>
        <script src="${pageContext.request.contextPath}/js/conv.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/ajaxCross.json" charset="UTF-8"></script></head>
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
                    <form id="stepForm" method="post" >
                     <div class="c_text_1">基本信息为必填项，是求职者加速了解公司的窗口，认真填写吧！</div>
                        <img width="668" height="56" class="c_steps" alt="第一步" src="/images/step1.png">



                        <h3>公司简称</h3> <!--非必填-->
                        <input type="text" placeholder="请输入公司简称" value="" name="comName" id="comName" class="valid">



                        <h3>公司网址</h3>
                        <input type="text" placeholder="请输入公司网址" value="" name="website" id="website">

                        <h3>所在城市</h3>
                        <input type="text" placeholder="请输入工作城市，如：北京" name="comCity" id="city">

                        <h3>行业领域</h3>
                        <div>
                            <input type="hidden" value="" name="select_industry_hidden" id="select_industry_hidden">
                            <input type="button" value="请选择行业领域" name="select_industry" id="select_industry" class="select">
                            <div class="dn" id="box_industry" style="display: none;">
                                <ul class="reset">
                                    <li>移动互联网</li>
                                    <li>电子商务</li>
                                    <li>社交</li>
                                    <li>企业服务</li>
                                    <li>O2O</li>
                                    <li>教育</li>
                                    <li>文化艺术</li>
                                    <li>游戏</li>
                                    <li>在线旅游</li>
                                    <li>金融互联网</li>
                                    <li>健康医疗</li>
                                    <li>生活服务</li>
                                    <li>硬件</li>
                                    <li>搜索</li>
                                    <li>安全</li>
                                    <li>运动体育</li>
                                    <li>云计算\大数据</li>
                                    <li>移动广告</li>
                                    <li>社会化营销</li>
                                    <li>视频多媒体</li>
                                    <li>媒体</li>
                                    <li>智能家居</li>
                                    <li>智能电视</li>
                                    <li>分类信息</li>
                                    <li>招聘</li>
                                </ul>
                            </div>
                        </div>

                        <h3>公司规模</h3>
                        <div>
                            <input type="hidden" value="" name="select_scale_hidden" id="select_scale_hidden">
                            <input type="button" value="请选择公司规模" id="select_scale" class="select">
                            <div class="dn" id="box_scale" style="display: none;">
                                <ul class="reset">
                                    <li>少于15人</li>
                                    <li>15-50人</li>
                                    <li>50-150人</li>
                                    <li>150-500人</li>
                                    <li>500-2000人</li>
                                    <li>2000人以上</li>
                                </ul>
                            </div>
                        </div>

                        <h3>发展阶段</h3>
                        <div>
                            <input type="hidden" id="s_radio_hidden" name="s_radio_hidden" value="">
                            <ul class="s_radio clearfix s_radio_ex">
                                <li>未融资</li>
                                <li>天使轮</li>
                                <li>A轮</li>
                                <li>B轮</li>
                                <li>C轮</li>
                                <li>D轮及以上</li>
                                <li>上市公司</li>
                            </ul>
                        </div>



                        <h3>一句话介绍</h3>
                        <input type="text" placeholder="一句话概括公司亮点，如公司愿景、领导团队等，限50字" maxlength="50" name="temptation" id="temptation">
                        <span style="display:none;" class="error" id="beError"></span>
                        <input type="hidden" id="companyId" name="companyId" value="25927">
                        <input type="hidden" id="companyName" name="companyName" value="福建平潭协创进出口贸易有限公司">
                        <input type="button"   value="保存，下一步" id="stepBtn" class="btn_big fr" onclick="saveAndNext()">

                    </form>
                </dd>
            </dl>
        </div>
<script>
    var xhr= null;
    function saveAndNext() {

         var url_saveAndNext = '${pageContext.request.contextPath}/comMessage/index01';

        if (window.XMLHttpRequest) {
            xhr = new XMLHttpRequest();
        } else {
            xhr = new ActiveXObject('Microsoft.XMLHTTP');
        }
        var comName =  document.getElementById("comName").value;
        var comInterAddr =  document.getElementById("website").value;
        var comCity =  document.getElementById("city").value;
        var comField =  document.getElementById("select_industry").value;
        var comScale =  document.getElementById("select_scale").value;
        var comDeplo =  document.getElementById("s_radio_hidden").value;
        var comIntroduce =  document.getElementById("temptation").value;

        var formData = "comName=" + comName + "&comInterAddr="+comInterAddr
            +"&comCity="+comCity+"&comField="+comField+"&comScale="+comScale+"&comDeplo="+comDeplo+"&comIntroduce="+comIntroduce;

            //    alert(formData);

        xhr.open("POST", url_saveAndNext,true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
    xhr.onreadystatechange = nextIndex;
        xhr.send(formData);

    }
   function nextIndex () {
       if (xhr.readyState == 4 && xhr.status == 200) {
           var row = xhr.responseText;
           if (row != 0) {
               window.location.href="${pageContext.request.contextPath}/internshipElves/tag.jsp"
           }
       }
   }


</script>


        <script src="/js/step1.min.js" type="text/javascript"></script>
        <script>
            var avatar = {};
            avatar.uploadComplate = function( data ){
                var result = eval('('+ data +')');
                if(result.success){
                    jQuery('#logoShow img').attr("src",ctx+ '/'+result.content);
                    jQuery.colorbox.close();
                    jQuery('#logoNo').hide();
                    jQuery('#logoShow').show();
                }
            };
        </script>
        <div class="clear"></div>
        <input type="hidden" value="13ae35fedd9e45cdb66fb712318d7369" id="resubmitToken">
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


</body></html>

</body>
</html>
