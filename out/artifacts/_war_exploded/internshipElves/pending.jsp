<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    </script><script type="text/javascript" async="" src="/js/conversion.js"></script><script src="/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
    <meta content="no-siteapp" http-equiv="Cache-Control">
    <link  media="handheld" rel="alternate">
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>待处理简历</title>



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
    <script src="/js/ajaxCross.json" charset="UTF-8"></script>
</head>
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
        <div class="sidebar">
            <a class="btn_create" href="releaseJob">发布新职位</a>
            <dl class="company_center_aside" id="handlemethd">
                <dt>我收到的简历</dt>
                <dd class="current" >
                    <a href="javascript:void(0)">待查看简历</a>
                </dd>
                <dd  >
                    <a href="javascript:void(0)">待处理简历</a>
                </dd>
                <dd >
                    <a href="javascript:void(0)">待定简历</a>
                </dd>
                <dd >
                    <a href="javascript:void(0)">已通知面试简历</a>
                </dd>
                <dd>
                    <a href="javascript:void(0)">不合适简历</a>
                </dd>
            </dl>


                <dl class="company_center_aside"  id="comaside">
                      <dt>我发布的职位</dt>
                       <dd class="jobclass">
                         <a href="positions">有效职位</a>
                       </dd>
                       <dd>
                         <a href="positions">已下线职位</a>
                       </dd>
                </dl>




             <script >
                 var  comasides  =document.getElementById("comaside").children;
                 var handlemethds = document.getElementById("handlemethd").children ;//li

                 for(var i =1;i<6;i++){
                     handlemethds[i].index = i;
                     handlemethds[i].onclick = function () {
                         for(var i1=1;i1<6;i1++){
                             handlemethds[i1].className="";
                         } for (var ii1=1;ii1<3;ii1++){
                             comasides[ii1].className="";
                         }
                         handlemethds[this.index].className="current";
                         var tag = this.index;
                         loadResumes(tag);
                     }
                 }
                  for (var ii=1 ;ii<3;ii++){
                      comasides[ii].index =ii;
                      comasides[ii].onclick =function () {
                          for (var ii1=1;ii1<3;ii1++){
                              comasides[ii1].className="";
                          } for(var i1=1;i1<6;i1++){
                              handlemethds[i1].className="";
                          }
                          comasides[this.index].className="current";


                      }
                  }
             </script>

        </div>
        <div class="content" >
            <dl class="company_center_content">
                <dt id="Resumetype">

                </dt>
                <dd>
                    <form action="canInterviewResumes.html" method="get" id="filterForm">
                        <div class="filter_actions">

                        </div>
                        <div class="filter_options  dn " style="display: none;">

                            <input type="hidden" value="0" name="filterStatus" id="filterStatus">
                            <input type="hidden" value="" name="positionId" id="positionId">
                        </div><!-- end .filter_options -->
                        <ul class="reset resumeLists" id="resumeLists">

                    </ul><!-- end .resumeLists -->
                    </form>
                </dd>
            </dl><!-- end .company_center_content -->
        </div><!-- end .content -->


        <script>
            var url_pending = '${pageContext.request.contextPath}/company/loadResume';
            window.onload=function() {
                loadResumes (1);
            }
            function loadResumes(tag) {
                if (window.XMLHttpRequest) {
                    xhr = new XMLHttpRequest();
                } else {
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');
                }
                var deliverResumeStatus ="deliverResumeStatus="+tag;
                xhr.open("POST", url_pending,true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
                xhr.onreadystatechange = loadHandles;
                xhr.send(deliverResumeStatus);

            }
            function loadHandles() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    var result = JSON.parse(xhr.responseText);
                    var resumeList = document.getElementById("resumeLists");
                    var resumeTitle = document.getElementById("Resumetype");
                    var handlemethds = document.getElementById("handlemethd").children;//li
                    for (var j = 1; j < 6; j++) {
                        if (handlemethds[j].className == "current")

                            resumeTitle.innerHTML = '<h1><em></em>' + handlemethds[j].innerText + '</h1>';
                    }
                    resumeList.innerHTML = "";
                    for (var i = 0; i < result.length; i++) {
                                              var date = strFormat(result[i].deliverResumeTime);

                        resumeList.innerHTML += ( '<li data-id="1686182" class="onlineResume"> <div class="resumeShow">' +
                            '<a title="预览在线简历" target="_blank" class="resumeImg" href="#">' +
                            '<img src="'+result[i].stuProfile+'"> </a> <div class="resumeIntro">' +
                            '<h3 class="unread"><a target="_blank" title="预览jason的简历" href="">' +
                            result[i].stuName + "的简历" + ' </a><em></em></h3><span class="fr">' +
                            "投递时间：" + date + '</span><div>' + result[i].stuName + " / " + result[i].stuGender + " / " +
                            "应届毕业生 / " + result[i].stuAddr + '<br>' + result[i].stuDegree + " · " + result[i].stuSchool +
                            '</div><div class="jdpublisher"><span>' + "应聘职位：" +
                            '<a title="result[i].jobName" target="_blank" href="">' +
                            result[i].jobName + '</a></span></div></div><div class="links" >' +
                            '<a href="javascript:void(0)" name="'+result[i].deliverResumeId+'" onclick="handleL(this)">'+
                             "待处理"+'</a>'+
                            '<a href="javascript:void(0)" name="'+result[i].deliverResumeId+'" onclick="handleL(this)">' +
                            "待定" + '</a><a href="javascript:void(0)" name="'+result[i].deliverResumeId+'" onclick="handleL(this)">' +
                            "通知面试" + '</a><a href="javascript:void(0)" name="'+result[i].deliverResumeId+'" onclick="handleL(this)">' +
                            "不合适" + ' </a></div></div> <div class="contactInfo"><span class="c9">' +
                            "电话：" + ' </span>' + result[i].stuTel + '&nbsp;&nbsp;&nbsp;<span class="c9">' +
                            "邮箱:" + '</span><a href="mailto:888888888@qq.com">' + result[i].stuEmail +
                            '</a></div>');

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

    var url_pending_handle = '${pageContext.request.contextPath}/company/updateDResume';

            function handleL(type) {
                if (window.XMLHttpRequest) {
                    xhr = new XMLHttpRequest();
                } else {
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');
                }

                var tag =1;
                if(type.innerText=="通知面试"){
                    tag = 4;
                }
                if(type.innerText=="不合适"){
                    tag = 5;
                }
                if(type.innerText=="待定"){
                    tag = 3;
                }
                if(type.innerText=="待处理"){
                    tag = 2;
                }
                var deliverResumeId;
                var deliverResumeStatus ="deliverResumeStatus="+tag;;
                if (type.name!=null &&type.name!=="")
                deliverResumeId = "&deliverResumeId="+type.name;
                else deliverResumeId =1;

                var date=deliverResumeStatus+deliverResumeId;
                xhr.open("POST", url_pending_handle,true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");

                xhr.send(date);


                var handlemethds = document.getElementById("handlemethd").children;//li
                for (var j = 1; j < 6; j++) {
                    if (handlemethds[j].className == "current")
                        loadResumes(j);
                }
            }
        </script>



















        <script src="/js/jquery.ui.datetimepicker.min.js" type="text/javascript"></script>
        <script src="/js/received_resumes.min.js" type="text/javascript"></script>
        <script>
        </script>
        <div class="clear"></div>
        <input type="hidden" value="b4bc225f0d084ee5b8d045f9c98a49ff" id="resubmitToken">
        <a rel="nofollow" title="回到顶部" id="backtop"></a>
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

<script type="text/javascript">
    $(function(){
        $('#noticeDot-1').hide();
        $('#noticeTip a.closeNT').click(function(){
            $(this).parent().hide();
        });
    });
    var index = Math.floor(Math.random() * 2);
    var ipArray = new Array('42.62.79.226','42.62.79.227');
    var url = "ws://" + ipArray[index] + ":18080/wsServlet?code=314873";
    var CallCenter = {
        init:function(url){
            var _websocket = new WebSocket(url);
            _websocket.onopen = function(evt) {
                console.log("Connected to WebSocket server.");
            };
            _websocket.onclose = function(evt) {
                console.log("Disconnected");
            };
            _websocket.onmessage = function(evt) {
                //alert(evt.data);
                var notice = jQuery.parseJSON(evt.data);
                if(notice.status[0] == 0){
                    $('#noticeDot-0').hide();
                    $('#noticeTip').hide();
                    $('#noticeNo').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
                    $('#noticeNoPage').text('').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
                }else{
                    $('#noticeDot-0').show();
                    $('#noticeTip strong').text(notice.status[0]);
                    $('#noticeTip').show();
                    $('#noticeNo').text('('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
                    $('#noticeNoPage').text(' ('+notice.status[0]+')').show().parent('a').attr('href',ctx+'/mycenter/delivery.html');
                }
                $('#noticeDot-1').hide();
            };
            _websocket.onerror = function(evt) {
                console.log('Error occured: ' + evt);
            };
        }
    };
    CallCenter.init(url);
</script>

<div id="cboxOverlay" style="display: none;"></div>
<div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;">
    <div id="cboxWrapper">
        <div><div id="cboxTopLeft" style="float: left;"></div>
            <div id="cboxTopCenter" style="float: left;"></div>
            <div id="cboxTopRight" style="float: left;"></div>
        </div>
        <div style="clear: left;">
            <div id="cboxMiddleLeft" style="float: left;"></div>
            <div id="cboxContent" style="float: left;">
                <div id="cboxTitle" style="float: left;"></div>
                <div id="cboxCurrent" style="float: left;"></div>
                <button type="button" id="cboxPrevious"></button>
                <button type="button" id="cboxNext"></button>
                <button id="cboxSlideshow"></button>
                <div id="cboxLoadingOverlay" style="float: left;"></div>
                <div id="cboxLoadingGraphic" style="float: left;"></div>
            </div>
            <div id="cboxMiddleRight" style="float: left;"></div>
        </div>
        <div style="clear: left;">
            <div id="cboxBottomLeft" style="float: left;"></div>
            <div id="cboxBottomCenter" style="float: left;"></div>
            <div id="cboxBottomRight" style="float: left;"></div>
        </div>
    </div>
    <div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div>
</div>
<div class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" id="ui-datepicker-div"></div>
</body>
</html>
