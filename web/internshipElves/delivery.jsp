<%--
  Created by IntelliJ IDEA.
  User: llw
  Date: 2018/10/15
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>我的投递记录-招聘服务-实习精灵-最专业的互联网招聘平台</title>
    <link href="${pageContext.request.contextPath}/css/delivery.css" type="text/css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/js/delivery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.1.10.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.lib.min.js" type="text/javascript"></script>
</head>
<body>
<div id="header">
    <div class="wrapper">
        <a class="logo" href="index.html">
            <img width="229" height="43" alt="拉勾招聘-专注互联网招聘" src="${pageContext.request.contextPath}/images/logo.png">
        </a>
        <ul id="navheader" class="reset">
            <li><a href="index.html">首页</a></li>
            <li><a href="companylist.html">公司</a></li>
            <li><a target="_blank" href="">论坛</a></li>
            <li><a rel="nofollow" href="jianli.html">我的简历</a></li>
        </ul>
        <dl class="collapsible_menu" onclick="sw_fo()">
            <dt >
                <span>jason&nbsp;</span>
                <span class="red dn" id="noticeDot-0" ></span>
                <i></i>
            </dt>
            <dd style="display: none;" ><a rel="nofollow" href="jianli.html">我的简历</a></dd>
            <dd style="display: none;" ><a href="collections.html">我收藏的职位</a></dd>
            <dd style="display: none;" ><a href="toudi.html">我投递的职位 <span id="noticeNo" class="red dn">(0)</span></a></dd>
            <dd class="btm" style="display: none;" name="dd-1"><a href="subscribe.html">我的订阅</a></dd>
            <dd style="display: none;" ><a href="create.html">我要招人</a></dd>
            <dd style="display: none;" ><a href="accountBind.html">帐号设置</a></dd>
            <dd class="logout" style="display: none;" ><a rel="nofollow" href="login.html">退出</a></dd>
        </dl>
        <div class="dn" id="noticeTip">
            <span class="bot"></span>
            <span class="top"></span>
            <a target="_blank" href="delivery.html"><strong>0</strong>条新投递反馈</a>
            <a class="closeNT" href="javascript:;"></a>
        </div>
    </div>
</div>
<div id="container">

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
                <a href="collections.html">我收藏的职位</a>
                <br>
                <a href="toudi.html" target="_blank">我投递的职位<span id="noticeNoPage" class="red dn">&nbsp;(0)</span></a>
                <br>
                <a target="_blank" href="subscribe.html">我订阅的职位</a>
                <br>
                <a target="_blank" href="mList.html">我的职位推荐</a>
            </div><!--end #myInfo-->
            <div class="mycenterR" id="myRecommend">
                <h2>可能适合你的职位 <i>匹配度</i></h2>
                <ul class="reset">
                    <li>
                        <a target="_blank" href="http://www.lagou.com/jobs/22194.html">
                            <span class="f16">产品经理</span>
                            <span class="c7">广州百田</span>
                            <em>92%</em>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.lagou.com/jobs/148004.html">
                            <span class="f16">产品经理</span>
                            <span class="c7">短讯神州</span>
                            <em>92%</em>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.lagou.com/jobs/46793.html">
                            <span class="f16">产品经理</span>
                            <span class="c7">爱拍</span>
                            <em>89%</em>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.lagou.com/jobs/99307.html">
                            <span class="f16">产品经理</span>
                            <span class="c7">一彩票</span>
                            <em>88%</em>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="http://www.lagou.com/jobs/147510.html">
                            <span class="f16">产品经理</span>
                            <span class="c7">林安集团</span>
                            <em>88%</em>
                        </a>
                    </li>
                </ul>
                <a target="_blank" class="more" href="mList.html">更多推荐职位&gt;&gt;</a>
            </div><!--end #myRecommend-->
            <div class="greybg qrcode mt20">
                <img width="242" height="242" alt="拉勾微信公众号二维码" src="${pageContext.request.contextPath}/images/qr_delivery.png">
                <span class="c7">扫描拉勾二维码，微信轻松搜工作</span>
            </div>
        </div>
    </div>

    <!-- end #recordPopBox -->

    <div class="clear"></div>
    <input type="hidden" value="" id="resubmitToken">
    <a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
</div><!-- end #container -->
</div><!-- end #body -->
</body>
</html>
