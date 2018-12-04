<%--
  Created by IntelliJ IDEA.
  User: xingdong
  Date: 2018/10/15
  Time: 20:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <script async="" src="/js/analytics.js"></script><script type="text/javascript" async="" src="/js/conversion.js"></script><script src="/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
    <meta content="no-siteapp" http-equiv="Cache-Control">
    <link  media="handheld" rel="alternate">
    <!-- end 云适配 -->
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>我发布的职位-招聘服务-实习精灵-最专业的互联网招聘平台</title>


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
        <div class="sidebar">
            <a class="btn_create" href="releaseJob">发布新职位</a>
            <dl class="company_center_aside">
                <dt>我收到的简历</dt>
                <dd>
                    <a href="pending">待查看简历</a>
                </dd>
                <dd>
                    <a href="pending">待处理简历</a>
                </dd>
                <dd>
                    <a href="pending">待定简历</a>
                </dd>
                <dd>
                    <a href="pending">已通知面试简历</a>
                </dd>
                <dd class="btm">
                    <a href="pending">不合适简历</a>
                </dd>
            </dl>
            <dl class="company_center_aside"  id="comaside">
                <dt>我发布的职位</dt>
                <dd class="current">
                    <a href="javascript:void(0)">有效职位</a>
                </dd>
                <dd>
                    <a href="javascript:void(0)">已下线职位</a>
                </dd>
            </dl>
        </div><!-- end .sidebar -->
        <div class="content">
            <dl class="company_center_content">
                <dt>
                    <h1 id="Resumetype">

                    </h1>
                </dt>
                <dd id="releaseJob">

                </dd>
                <script >
                    var  comasides  =document.getElementById("comaside").children;


                    for (var i=1 ;i<3;i++){
                        comasides[i].index =i;
                        comasides[i].onclick =function () {
                            for (var i1=1;i1<3;i1++){
                                comasides[i1].className="";
                            }
                            comasides[this.index].className="current";

                            loadingComReleaseJob(this.index);
                        }
                    }
                </script>

                <SCRIPT>
                    var  comasides  =document.getElementById("comaside").children;
                    var  url_getComReleaseJob="${pageContext.request.contextPath}/releaseJob/getComReleaseJob";
                     window.onload =function () {
                         loadingComReleaseJob(1);
                     }
                     function loadingComReleaseJob(status) {
                         if (window.XMLHttpRequest){
                             xhr = new  XMLHttpRequest()
                         }else {
                             xhr =new ActiveXObject('Microsoft.XMLHTTP')
                         }
                         var comReleaseJobStatus = "comReleaseJobStatus="+status;

                         xhr.open("post",url_getComReleaseJob,true);
                         xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
                         xhr.onreadystatechange =loadRelease;
                         xhr.send(comReleaseJobStatus);
                     }
                     function loadRelease() {

                         if(xhr.readyState == 4  && xhr.status == 200 ){
                             var result = JSON.parse(xhr.responseText);
                             var release =document.getElementById("releaseJob");
                             release.innerHTML="";
                             var resumeTitle = document.getElementById("Resumetype");
                             for (var j = 1; j < 3; j++) {
                                 if (comasides[j].className == "current")

                                     resumeTitle.innerHTML = '<h1><em></em>' + comasides[j].innerText + '</h1>';
                             }
                             for(var i=0;i<result.length;i++){
                                 var  date =strFormat(result[i].comReleaseJobTime);

                                 release.innerHTML += ('<form > <input type="hidden" value="Publish" name="type">' +
                                                       ' <ul class="reset my_jobs"> <li > <h3' +
                                                       '  <a target="_blank" title="随便写" href="">'+result[i].comReleaseJobName+'</a>' +
                                                      '<span>'+"["+result[i].comReleaseJobCity+"]"+'</span></h3>' +
                                                       ' <span class="receivedResumeNo"><a >'+"应聘简历"+'</a></span>' +
                                     '                                <div>'+result[i].comReleaseJobProp+"/"+result[i].comReleaseJobSalaryLow+"k-"+result[i].comReleaseJobSalaryHigh+"k /" +result[i].comReleaseJobExp+" /"+ result[i].comReleaseJobRequir+'</div>' +
                                     '                                <div class="c9">'+"发布时间：" +date+'</div>' +
                                     '                                <div class="links">' +
                                     '                                    <a class="job_offline" name =  "'+result[i].comReleaseJobId+'" href="javascript:void(0)" onclick="lgoutJob(this)">'+"下线"+'</a>' +
                                     '                                    <a class="job_del" name =  "'+result[i].comReleaseJobId+'" href="javascript:void(0)" onclick="lgoutJob(this)">'+"删除"+'</a>' +
                                     '                                </div>' +
                                     '                            </li>' +
                                     '                        </ul>' +
                                     '                    </form>');


                             }
                         }
                     }
                     function lgoutJob(type) {
                         var url_lgout ='${pageContext.request.contextPath}/releaseJob/lgoutComReleaseJob';

                         if (window.XMLHttpRequest) {
                             xhr = new XMLHttpRequest();
                         } else {
                             xhr = new ActiveXObject('Microsoft.XMLHTTP');
                         }
                         var Status = 1;
                         if (type.innerText =="下线")
                             Status =2;
                             else Status =0 ;

                         var comReleaseJobId = type.name;
                         var Data = "comReleaseJobId="+comReleaseJobId+"&comReleaseJobStatus="+Status;
                         xhr.open("POST",url_lgout,true);
                         xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded;charset=utf-8");
                         xhr.onreadystatechange = updates;
                         xhr.send(Data);
                     }
                     function updates() {
                         var result = JSON.parse(xhr.responseText);
                         if(result=1)
                             loadingComReleaseJob(1);
                         else
                             alert("失败!");

                     }
                     //  时间
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

                </SCRIPT>
            </dl>
        </div><!-- end .content -->
        <script src="style/js/job_list.min.js" type="text/javascript"></script>
        <div class="clear"></div>
        <input type="hidden" value="74fb1ce14ebf4e2495270b0fbad64704" id="resubmitToken">
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
<script src="/js/tongji.js" type="text/javascript"></script>
<!--  -->
<script src="/js/analytics01.js" type="text/javascript"></script><script type="text/javascript" src="/js/h.js"></script>

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

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div>

</body>
</html>
