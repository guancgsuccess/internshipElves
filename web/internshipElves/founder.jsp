<%--
  Created by IntelliJ IDEA.
  User: xingdong
  Date: 2018/10/15
  Time: 20:34
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
    <title>创始团队-招聘服务-实习精灵-最专业的互联网招聘平台</title>


    <!-- <div class="web_root"  style="display:none">http://www.lagou.com</div> -->
    <script type="text/javascript">
        var ctx = "http://www.lagou.com";
        console.log(1);
    </script>
    <link href="http://www.lagou.com/images/favicon.ico" rel="Shortcut Icon">
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
                    <div class="c_text">

                    </div>
                    <img width="668" height="56" class="c_steps" alt="第三步" src="/images/step3.png">

                    <form method="post"  id="memberForm">
                        <input type="hidden" value="52346c62232045a8ab1d45cb3e0540b7" name="resubmitToken">
                        <input type="hidden" id="companyId" name="companyId" value="25927">
                        <div id="memberDiv">
                            <div class="formWrapper">
                                <input type="hidden" value="25927" name="leaderInfos[0].companyId">
                                <div class="new_portrait">
                                    <div class="portrait_upload" id="portraitNo0">
                                        <span>上传创始人头像</span>
                                    </div>
                                    <div class="portraitShow dn" id="portraitShow0">
                                        <img width="120" height="120" src="">
                                        <span>更换头像</span>
                                    </div>
                                    <input type="file" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="img_check(this,'http://www.lagou.com/c/upload.json',120,120,5,'myfiles0','myfiles0_error','portraitNo0','portraitShow0','type0','leaderInfos0');" name="myfiles" id="myfiles0" class="myfiles">
                                    <input type="hidden" value="7" name="type" id="type0">
                                    <input type="hidden" name="leaderInfos[0].photo" id="leaderInfos0">
                                    <em>
                                        尺寸：120*120px <br>
                                        大小：小于5M
                                    </em>
                                    <span style="display:none;" id="myfiles0_error" class="error"></span>
                                </div>


                                <h3>创始人姓名</h3>
                                <input type="text" placeholder="请输入创始人姓名" name="leaderInfos[0].name" id="name0" class="s_input1 valid">

                                <h3>当前职位</h3>
                                <input type="text" placeholder="请输入当前职位，如：创始人兼CEO" name="leaderInfos[0].position" id="position0" class="s_input1 valid">

                                <h3>新浪微博</h3>
                                <input type="text" placeholder="请输入创始人新浪微博地址" name="leaderInfos[0].weibo" id="weibo0">

                                <h3>创始人简介</h3>
                                <textarea placeholder="请输入该创始人的个人履历等，建议按照时间倒序分条展示" maxlength="1000" name="leaderInfos[0].remark" id="description0"></textarea>
                                <div class="word_count">你还可以输入 <span>500</span> 字</div>
                            </div>
                        </div>

                        <div class="clear"></div>
                        <input type="button" value="保存，下一步" id="step3Submit" class="btn_big fr"  onclick="saveTeam()">

                    </form>
                </dd>
            </dl>
        </div>
          <script>
              var  xhr= null;
              function  saveTeam() {
                  var  url_saveTeam='${pageContext.request.contextPath}/comCreateTeam/founder';
                  if (window.XMLHttpRequest){
                      xhr =new XMLHttpRequest();
                  }else {
                      xhr= new ActiveXObject("Microsoft.XMLHTTP");
                  }
                  var comFounderName =  document.getElementById("name0").value;
                  var comPosition =  document.getElementById("position0").value;
                  var comWeibo =  document.getElementById("weibo0").value;
                  var comFounderIntro =  document.getElementById("description0").value;
                  var comFounderImg =  document.getElementById("portraitShow0").value;

                  var formData = "comFounderName=" + comFounderName + "&comPosition="+comPosition
                      +"&comWeibo="+comWeibo+"&comFounderIntro="+comFounderIntro+"&comFounderImg="+comFounderImg;

                  alert(formData);

                  xhr.open("POST", url_saveTeam,true);
                  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
                  xhr.onreadystatechange = nextIndex3;
                  xhr.send(formData);
              }
              function nextIndex3() {
                  if (xhr.readyState == 4 && xhr.status == 200) {
                      var row = xhr.responseText;

                      if (row != 0) {

                          window.location.href="${pageContext.request.contextPath}/internshipElves/index02.jsp"
                      }
                  }

              }

          </script>

        <script src="/js/step3.min.js" type="text/javascript"></script>
        <div class="clear"></div>
        <input type="hidden" value="52346c62232045a8ab1d45cb3e0540b7" id="resubmitToken">
        <a rel="nofollow" title="回到顶部" id="backtop" style="display: inline;"></a>
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
