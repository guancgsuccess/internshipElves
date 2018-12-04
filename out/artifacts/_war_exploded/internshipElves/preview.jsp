<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html><head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>简历预览-我的简历-实习精灵-最专业的互联网招聘平台</title>
    <meta content="23635710066417756375" property="qc:admins">
    <meta name="description" content="实习精灵">
    <meta name="keywords" content="实习精灵">

    <meta content="QIQ6KC1oZ6" name="baidu-site-verification">

    <!-- <div class="web_root"  style="display:none">h</div> -->
    </script><script type="text/javascript">
    var ctx = "h";
    console.log(1);
</script>
    <link href="h/images/favicon.ico" rel="Shortcut Icon">
    <link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/colorbox.min.css" type="text/css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/popup.css" type="text/css" rel="stylesheet">

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.1.10.1.min.js"></script>

    <script src="${pageContext.request.contextPath}/js/jquery.colorbox-min.js" type="text/javascript"></script>
    <script>
        $(function(){
            $("body").on("click","a.btn_s",function(){
                $.colorbox.close();
                parent.jQuery.colorbox.close();
            });
            $(".inline").colorbox({
                inline:true
            });
        });
    </script>
    <script src="style/js/ajaxCross.json" charset="UTF-8"></script></head>

<body>
<div id="previewWrapper">
    <div class="preview_header">
        <h1 title="jason的简历">${student.stuName}的简历</h1>
        <a  class="inline cboxElement" href="#downloadOnlineResume" onclick="javascript:window.history.back(-1);">返回</a>
    </div><!--end .preview_header-->

    <div class="preview_content">
        <div class="profile_box" id="basicInfo">
            <h2>基本信息</h2>
            <div class="basicShow">
                   <span>${student.stuName} |
                    ${student.stuGender==1?"男":"女"} | ${age}岁|${empty student.stuPrepareA ? "应届毕业生":student.stuPrepareA }
                    | ${student.stuAddrProvince}<br>
                     ${student.stuDegree} · ${student.stuSchool}<br>${student.stuTel} | ${student.stuEmail}<br>
            		</span>
                <div class="m_portrait">
                    <div></div>
                    <img width="120" height="120" alt="jason" src="${pageContext.request.contextPath}${student.stuPhoto}">
                </div>
            </div><!--end .basicShow-->
        </div><!--end #basicInfo-->

        <div class="profile_box" id="expectJob">
            <h2>期望工作</h2>
            <div class="expectShow">
                &nbsp;&nbsp;&nbsp; ${resume.resumeStuWorkAddr}，${ resume.resumeStuJobNature}，月薪:${resume.resumeStuSalaryLow}k-${resume.resumeStuSalaryHigh}k，${resume.resumeStuOccupation},${resume.resumeStuIndustry}
            </div><!--end .expectShow-->
        </div><!--end #expectJob-->
        <div class="profile_box" id="projectExperience">
            <h2>项目经验</h2>
            <div class="projectShow">
                <ul class="plist clearfix">
                    <li class="noborder">
                        <div class="projectList">
                            <div class="f16 mb10">${proExp.proExpName}，${student.stuName}
                                <span class="c9">（2018.09-至今）</span>
                            </div>
                            <div class="dl1"></div>
                        </div>
                    </li>
                </ul>
            </div><!--end .projectShow-->
        </div><!--end #projectExperience-->

        <div class="profile_box" id="educationalBackground">
            <h2>教育背景</h2>
            <div class="educationalShow">
                <ul class="elist clearfix">
                    <li class="clear">
                        <span class="c9">${readDate}-${gradDate}</span>
                        <div>
                            <h3> ${student.stuSchool}</h3>
                            <h4>${student.stuMajor}， ${student.stuDegree} </h4>
                        </div>
                    </li>
                </ul>
            </div><!--end .educationalShow-->
        </div><!--end #educationalBackground-->
        <div class="profile_box" id="selfDescription">
            <h2>自我描述</h2>
            <div class="descriptionShow">
                ${resume.resumePrepareA}
            </div><!--end .descriptionShow-->
        </div><!--end #selfDescription-->
        <div class="profile_box" id="worksShow">
            <h2>作品展示</h2>
            <div class="workShow">
                <ul class="slist clearfix">
                    <li class="noborder">
                        <div class="workList c7">
                            <div class="f16">网址：<a target="_blank" href="index.jsp">http://www.internshipElves.com</a></div>
                            <p>产品:${proExp.proExpName}<br>描述:${proExp.proExpDesc} </p>
                        </div>
                    </li>
                </ul>
            </div><!--end .workShow-->
        </div><!--end #worksShow-->
    </div><!--end .preview_content-->
</div><!--end #previewWrapper-->

<!-------------------------------------弹窗lightbox ----------------------------------------->
<div style="display:none;">
    <!-- 下载简历 -->
    <div class="popup" id="downloadOnlineResume">
        <table width="100%">
            <tbody><tr>
                <td class="c5 f18">请选择下载简历格式：</td>
            </tr>
            <tr>
                <td>
                    <a class="btn_s" href="javascript:void(0)" onclick="ToWord()">word格式</a>
                    <a class="btn_s" href="javascript:void(0)">html格式</a>
                    <a class="btn_s" href="javascript:void(0)">pdf格式</a>
                </td>
            </tr>
            </tbody></table>
    </div><!--/#downloadOnlineResume-->
</div>


<script>
    function ToWord(){

    }
</script>


<!------------------------------------- end ----------------------------------------->




<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>