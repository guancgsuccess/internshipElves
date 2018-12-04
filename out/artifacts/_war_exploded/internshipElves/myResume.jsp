<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
</script><script type="text/javascript" async="" src="${pageContext.request.contextPath}/js/conversion.js"></script><script src="style/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>
<meta content="no-siteapp" http-equiv="Cache-Control">
<link  media="handheld" rel="alternate">
<!-- end 云适配 -->
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<title>我的简历-实习精灵-最专业的互联网招聘平台</title>
<meta content="23635710066417756375" property="qc:admins">
<meta name="description" content="拉勾网是3W旗下的互联网领域垂直招聘网站,互联网职业机会尽在拉勾网">
<meta name="keywords" content="拉勾,拉勾网,拉勾招聘,拉钩, 拉钩网 ,互联网招聘,拉勾互联网招聘, 移动互联网招聘, 垂直互联网招聘, 微信招聘, 微博招聘, 拉勾官网, 拉勾百科,跳槽, 高薪职位, 互联网圈子, IT招聘, 职场招聘, 猎头招聘,O2O招聘, LBS招聘, 社交招聘, 校园招聘, 校招,社会招聘,社招">
<meta content="QIQ6KC1oZ6" name="baidu-site-verification">

<!-- <div class="web_root"  style="display:none">h</div> -->
<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>

<link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/external.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/popup.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.1.10.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.lib.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ajaxfileupload.js"></script>
<script src="${pageContext.request.contextPath}/js/additional-methods.js" type="text/javascript"></script>
<!--[if lte IE 8]>
    <script type="text/javascript" src="style/js/excanvas.js"></script>
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
    		<a class="logo" href="h/">
    			<img width="229" height="43" alt="实习精灵-专注互联网招聘" src="${pageContext.request.contextPath}/images/logo.png">
    		</a>
    		<ul id="navheader" class="reset">
    			<li><a href="${pageContext.request.contextPath}/internshipElves/index.jsp">首页</a></li>
    			<li><a href="${pageContext.request.contextPath}/internshipElves/companyList.jsp">公司</a></li>
    			<li><a target="_blank" href="${pageContext.request.contextPath}/internshipElves/personCenter.jsp">个人中心</a></li>
    				    			<li class="current"><a rel="nofollow" href="">我的简历</a></li>
	    						    		</ul>
        	        	<dl class="collapsible_menu">
            	<dt>
           			<span>${student.stuName}&nbsp;</span>
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                                	<dd><a rel="nofollow" href="">我的简历</a></dd>
                	                	<dd><a href="">我收藏的职位</a></dd>
                	                	                	<dd class="btm"><a href="">我的订阅</a></dd>
                	<dd><a href="">我要招人</a></dd>
                                                <dd><a href="">帐号设置</a></dd>
                                <dd class="logout"><a rel="nofollow" href="">退出</a></dd>
            </dl>
                                    <div class="dn" id="noticeTip">
            	<span class="bot"></span>
				<span class="top"></span>
				<a target="_blank" href=""><strong>0</strong>条新投递反馈</a>
				<a class="closeNT" href="javascript:;"></a>
            </div>
                    </div>
    </div><!-- end #header -->
	<div id="container">

		<div class="clearfix">
			<div class="content_l">
				<div class="fl" id="resume_name">
					<div class="nameShow fl">
						<h1 title="jason的简历">${student.stuName}的简历</h1>
						<a  href="${pageContext.request.contextPath}/resume/preview">预览</a>
					</div>
					<form class="fl dn" id="resumeNameForm">
						<input type="text" value="jason的简历" name="resumeName" class="nameEdit c9">
						<input type="submit" value="保存"> | <a target="_blank" href="">预览</a>
					</form>
				</div><!--end #resume_name-->
				<div class="fr c5" id="lastChangedTime">最后一次更新：<span>${updateDate} </span></div><!--end #lastChangedTime-->


				<div class="profile_box" id="basicInfo">
					<h2>基本信息</h2>
					<span class="c_edit"></span>
					<div class="basicShow">
            			            			<span>${student.stuName} |  ${student.stuGender==1?"男":"女"} |     ${student.stuDegree} | ${empty student.stuPrepareA ? "应届毕业生":student.stuPrepareA }<br>
            			            			${student.stuTel}| ${student.stuEmail}<br>
            			</span>

					</div>

					<div class="basicEdit dn">
						<div id="profileForm">
							<table>
								<tbody><tr>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td>
										<input type="text" placeholder="姓名"  name="name" id="name">
									</td>
									<td valign="top"></td>
									<td>
										<ul class="profile_radio clearfix reset">
											<li class="current">
												男<em></em>
												<input type="radio" checked="checked" name="gender" value="男">
											</li>
											<li>
												女<em></em>
												<input type="radio" name="gender" value="女">
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td>
										<input type="hidden" id="topDegree"  name="topDegree">
										<input type="button" value="${student.stuDegree}" id="select_topDegree" class="profile_select_190 profile_select_normal">
										<div class="boxUpDown boxUpDown_190 dn" id="box_topDegree" style="display: none;">
											<ul>
												<li>大专</li>
												<li>本科</li>
												<li>硕士</li>
												<li>博士</li>
												<li>其他</li>
											</ul>
										</div>
									</td>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td>
										<input type="hidden" id="workyear"  name="workyear">
										<input type="button" value="${empty student.stuPrepareA ? "应届毕业生":student.stuPrepareA }" id="select_workyear" class="profile_select_190 profile_select_normal">
										<div class="boxUpDown boxUpDown_190 dn" id="box_workyear" style="display: none;">
											<ul>
												<li>应届毕业生</li>
												<li>1年</li>
												<li>2年</li>
												<li>3年</li>
												<li>4年</li>
												<li>5年</li>
												<li>6年</li>
												<li>7年</li>
												<li>8年</li>
												<li>9年</li>
												<li>10年</li>
												<li>10年以上</li>
											</ul>
										</div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td colspan="3">
										<input type="text" placeholder="手机号码"  name="tel" id="tel">
									</td>
								</tr>
								<tr>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td colspan="3">
										<input type="text" placeholder="接收面试通知的邮箱"  name="email" id="email">
									</td>
								</tr>
								<tr>
									<td valign="top"> </td>

								</tr>
								<tr>
									<td></td>
									<td colspan="3">
										<input type="button" value="保 存" onclick="editMessage()" class="btn_profile_save">
										<a class="btn_profile_cancel" href="javascript:;">取 消</a>
									</td>
								</tr>
								</tbody></table>
						</div><!--end #profileForm-->

					</div><!--end .basicEdit-->
					<input type="hidden" id="nameVal" value="${student.stuName}">
					<input type="hidden" id="genderVal" value=" ${student.stuGender==1?"男":"女"}">
					<input type="hidden" id="topDegreeVal" value="${student.stuDegree}">
					<input type="hidden" id="workyearVal" value="${empty student.stuPrepareA ? "应届毕业生":student.stuPrepareA }">
					<input type="hidden" id="currentStateVal" value="">
					<input type="hidden" id="emailVal" value="${student.stuEmail}">
					<input type="hidden" id="telVal" value="${student.stuTel}">
					<input type="hidden" id="pageType" value="1">
				</div><!--end #basicInfo-->
				<script>
                    var url_edit='${pageContext.request.contextPath}/student/editStu';
                    function editMessage() {
                        var stuName=document.getElementById("name").value; //姓名
                        var stuDegree = document.getElementById("topDegree").value;//学历
                        var stuPrepareA = document.getElementById("workyear").value;//工作经验
                        var stuTel =  document.getElementById("tel").value;//电话
                        var stuEmail =  document.getElementById("email").value;//邮箱
                        var gender = "";//性别
                        var radios = document.getElementsByName("gender");
                        for(var i=0;i<radios.length;i++) {
                            if (radios[i].checked==true){
                                gender=radios[i].value;
                            }
                        }
                        var  stuGender= (gender=="男")?1:0;
                        if (window.XMLHttpRequest) {
                            xhr = new XMLHttpRequest();
                        } else {
                            xhr = new ActiveXObject('Microsoft.XMLHTTP');
                        }
                        var url_editStu = url_edit;
                        url_editStu+="?stuName="+stuName+"&stuDegree="+stuDegree+"&stuPrepareA="+stuPrepareA+
                            "&stuTel="+stuTel+"&stuEmail="+stuEmail+"&stuGender="+stuGender;

                        xhr.open("GET", url_editStu);
                        xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
                        xhr.onreadystatechange = reloadMessage;
                        xhr.send();
                    }
                    function reloadMessage() {
                        var result = JSON.parse(xhr.responseText);
                        if(result==1){
                            alert("修改成功!");
                            location.reload(true);
                            window.onbeforeunload=close;
                        }else{
                            alert("修改失败!");
                        }
                    }
				</script>
				<div class="profile_box" id="expectJob">
					<h2>期望工作</h2>
					<span class="c_edit dn"></span>
					<div class="expectShow dn">
						<span></span>
					</div><!--end .expectShow-->
					<div class="expectEdit dn">
						<form id="expectForm">
							<table>
								<tbody><tr>
									<td>
										<input type="hidden" id="expectCity"  name="expectCity">
										<input type="button" value="${resume.resumeStuWorkAddr}" id="select_expectCity" class="profile_select_287 profile_select_normal">
										<div class="boxUpDown boxUpDown_596 dn" id="box_expectCity" style="display: none;">
											<dl>
												<dt>热门城市</dt>
												<dd>
													<span>北京</span>
													<span>上海</span>
													<span>广州</span>
													<span>深圳</span>
													<span>成都</span>
													<span>杭州</span>
												</dd>
											</dl>
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
										</div>
									</td>
									<td>
										<ul class="profile_radio clearfix reset">
											<li class="current">
												全职<em></em>
												<input type="radio" checked="false" name="type" value="全职">
											</li>
											<li>
												兼职<em></em>
												<input type="radio" name="type" value="兼职">
											</li>
											<li>
												实习<em></em>
												<input type="radio" name="type" value="实习">
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<td>
										<input type="text" placeholder="期望职位，如：产品经理" value="${resume.resumeStuOccupation}" name="expectPosition" id="expectPosition">
									</td>
									<td>
										<input type="hidden" id="expectSalary" name="expectSalary">
										<input type="button" value="${resume.resumeStuSalaryLow}k-${resume.resumeStuSalaryHigh}k" id="select_expectSalary" class="profile_select_287 profile_select_normal">
										<div class="boxUpDown boxUpDown_287 dn" id="box_expectSalary" style="display: none;">
											<ul>
												<li>2k以下</li>
												<li>2k-5k</li>
												<li>5k-10k</li>
												<li>10k-15k</li>
												<li>15k-25k</li>
												<li>25k-50k</li>
												<li>50k以上</li>
											</ul>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="button" value="保 存" onclick="editResume()" class="btn_profile_save">
										<a class="btn_profile_cancel" href="javascript:;">取 消</a>
									</td>
								</tr>
								</tbody></table>
						</form><!--end #expectForm-->
					</div><!--end .expectEdit-->
					<div class="expectAdd pAdd">
						期望城市:${resume.resumeStuWorkAddr} &nbsp;期望工作性质: ${ resume.resumeStuJobNature}<br>
						期望职位:${resume.resumeStuOccupation} &nbsp;&nbsp;&nbsp;月薪:${resume.resumeStuSalaryLow}k-${resume.resumeStuSalaryHigh}k

					</div><!--end .expectAdd-->

					<input type="hidden" id="expectJobVal" value="">
					<input type="hidden" id="expectCityVal" value="">
					<input type="hidden" id="typeVal" value="">
					<input type="hidden" id="expectPositionVal" value="">
					<input type="hidden" id="expectSalaryVal" value="">
				</div><!--end #expectJob-->

				<script>
                    function editResume() {

                        var resumeStuWorkAddr = document.getElementById("select_expectCity").value;
                        var resumeStuOccupation =document.getElementById("expectPosition").value;
                        var salary = document.getElementById("select_expectSalary").value;
                        var resumeStuSalaryLow=0;
                        var resumeStuSalaryHigh =0;
                        switch (salary){
                            case "2k以下":resumeStuSalaryLow=0;resumeStuSalaryHigh=2;break;
                            case "2k-5k":resumeStuSalaryLow=2;resumeStuSalaryHigh=5;break;
                            case "5k-10k":resumeStuSalaryLow=5;resumeStuSalaryHigh=10;break;
                            case "10k-15k":resumeStuSalaryLow=10;resumeStuSalaryHigh=15;break;
                            case "15k-25k":resumeStuSalaryLow=15;resumeStuSalaryHigh=25;break;
                            case "25k-50k":resumeStuSalaryLow=25;resumeStuSalaryHigh=50;break;
                            case "50k以上":resumeStuSalaryLow=50;resumeStuSalaryHigh=1000;break;
                        }
                        var type = document.getElementsByName("type");
                        var resumeStuJobNature="";
                        for(var i=0;i<type.length;i++){
                            if(type[i].checked==true){
                                resumeStuJobNature=type[i].value;
                            }
                        }
                        if (window.XMLHttpRequest) {
                            xhr = new XMLHttpRequest();
                        } else {
                            xhr = new ActiveXObject('Microsoft.XMLHTTP');
                        }
                        var url_editResume = '${pageContext.request.contextPath}/student/editResume';
                        url_editResume+="?resumeStuWorkAddr="+resumeStuWorkAddr+"&resumeStuOccupation="+resumeStuOccupation+"&resumeStuSalaryLow="+resumeStuSalaryLow+
                            "&resumeStuSalaryHigh="+resumeStuSalaryHigh+"&resumeStuJobNature="+resumeStuJobNature;

                        xhr.open("GET", url_editResume);
                        xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
                        xhr.onreadystatechange = reloadMessage;
                        xhr.send();

                    }

				</script>

				<div class="profile_box" id="projectExperience">
					<h2>项目经验</h2>
					<span class="c_add dn"></span>
					<div class="projectShow dn">
						<ul class="plist clearfix">
						</ul>
					</div><!--end .projectShow-->
					<div class="projectEdit dn">
						<div class="projectForm">
							<table>
								<tbody><tr>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td>
										<input type="text" placeholder="项目名称"  id="projectName" value="${proExp.proExpName}" name="projectName">
									</td>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td>
										<input type="text" placeholder="担任职务，如：产品负责人" id="thePost" value="${proExp.proExpDuty}" name="thePost">
									</td>
								</tr>

								<tr>
									<td valign="top"></td>
									<td colspan="3">
										<textarea   name="projectDescription" id="projectDescription"   placeholder="项目描述">${proExp.proExpDesc}</textarea>
										<div class="word_count">你还可以输入 <span>500</span> 字</div>
									</td>
								</tr>

								<tr>
									<td valign="top"></td>
									<td colspan="3">
										<input type="submit" value="保 存" onclick="editProExp()" class="btn_profile_save">
										<a class="btn_profile_cancel" href="javascript:;">取 消</a>
									</td>
								</tr>
								</tbody></table>
							<input type="hidden" value="" class="projectId">
						</div><!--end .projectForm-->
					</div><!--end .projectEdit-->
					<div class="projectAdd pAdd">
						项目名称:${proExp.proExpName} &nbsp;担任职务:${proExp.proExpDuty}<br>
						项目描述:${proExp.proExpDesc}

					</div><!--end .projectAdd-->
				</div><!--end #projectExperience-->
				<script>
                    function editProExp() {
                        var proExpName = document.getElementById("projectName").value;
                        var proExpDuty =  document.getElementById("thePost").value;
                        var proExpDesc = document.getElementById("projectDescription").value;

                        if (window.XMLHttpRequest) {
                            xhr = new XMLHttpRequest();
                        } else {
                            xhr = new ActiveXObject('Microsoft.XMLHTTP');
                        }
                        var url_editProExp = '${pageContext.request.contextPath}/student/editProExp';
                        url_editProExp+="?proExpName="+proExpName+"&proExpDuty="+proExpDuty+"&proExpDesc="+proExpDesc;

                        xhr.open("GET", url_editProExp);
                        xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
                        xhr.onreadystatechange = reloadMessage;
                        xhr.send();
                    }

				</script>
				<div class="profile_box" id="educationalBackground">
					<h2>教育背景<span>（投递简历时必填）</span></h2>
					<span class="c_add dn"></span>


					<%--<div class="educationalShow dn">
						<form class="educationalForm borderBtm dn">
							<table>
								<tbody><tr>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td>
										<input type="text" placeholder="学校名称" name="schoolName" class="schoolName">
									</td>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td>
										<input type="hidden" class="degree" value="" name="degree">
										<input type="button" value="学历" class="profile_select_287 profile_select_normal select_degree">
										<div class="box_degree boxUpDown boxUpDown_287 dn" style="display: none;">
											<ul>
												<li>大专</li>
												<li>本科</li>
												<li>硕士</li>
												<li>博士</li>
												<li>其他</li>
											</ul>
										</div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td>
										<input type="text" placeholder="专业名称" name="professionalName" class="professionalName">
									</td>


								</tr>
								<tr>
									<td></td>
									<td colspan="3">
										<input type="submit" value="保 存" class="btn_profile_save">
										<a class="btn_profile_cancel" href="javascript:;">取 消</a>
									</td>
								</tr>
								</tbody></table>
							<input type="hidden" class="eduId" value="">
						</form><!--end .educationalForm-->

						<ul class="elist clearfix">
						</ul>
					</div>--%>
					<div class="educationalEdit dn">
						<div class="educationalForm">
							<table>
								<tbody>
								<tr>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td>
										<input type="text" placeholder="学校名称" value="${student.stuSchool}" name="schoolName" id="schoolName">
									</td>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td>
										<input type="hidden" id="degree" value="${student.stuDegree}" name="degree">
										<input type="button" value="${student.stuDegree}" class="profile_select_287 profile_select_normal select_degree">
										<div class="box_degree boxUpDown boxUpDown_287 dn" style="display: none;">
											<ul>
												<li>大专</li>
												<li>本科</li>
												<li>硕士</li>
												<li>博士</li>
												<li>其他</li>
											</ul>
										</div>
									</td>
								</tr>
								<tr>
									<td valign="top">
										<span class="redstar">*</span>
									</td>
									<td>
										<input type="text" placeholder="专业名称" value="${student.stuMajor}" name="professionalName" id="professionalName">
									</td>


								</tr>
								<tr>
									<td></td>
									<td colspan="3">
										<input type="submit" value="保 存" onclick="editEducation()" class="btn_profile_save">
										<a class="btn_profile_cancel" href="javascript:;">取 消</a>
									</td>
								</tr>
								</tbody></table>
							<input type="hidden" class="eduId" value="">
						</div><!--end .educationalForm-->
					</div>

					<div class="educationalAdd pAdd">
						学校名称:${student.stuSchool}  &nbsp;&nbsp;&nbsp;&nbsp;学历:${student.stuDegree}<br>
						专业:${student.stuMajor} &nbsp;&nbsp;&nbsp;&nbsp;${readDate}-${gradDate}
					</div><!--end .educationalAdd-->
				</div><!--end #educationalBackground-->
				<script>
                    function editEducation() {
                        var stuSchool= document.getElementById("schoolName").value;
                        var stuMajor = document.getElementById("professionalName").value;
                        var stuDegree = document.getElementById("degree").value;

                        if (window.XMLHttpRequest) {
                            xhr = new XMLHttpRequest();
                        } else {
                            xhr = new ActiveXObject('Microsoft.XMLHTTP');
                        }
                        var url_editEducation = '${pageContext.request.contextPath}/student/editEducation';
                        url_editEducation+="?stuSchool="+stuSchool+"&stuMajor="+stuMajor+"&stuDegree="+stuDegree;

                        xhr.open("GET", url_editEducation);
                        xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
                        xhr.onreadystatechange = reloadMessage;
                        xhr.send();
                    }
				</script>



				<div class="profile_box" id="selfDescription">
					<h2>自我描述</h2>
					<span class="c_edit dn"></span>
					<div class="descriptionShow dn">

					</div><!--end .descriptionShow-->
					<div class="descriptionEdit dn">
						<div class="descriptionForm">
							<table>
								<tbody>
								<tr>
									<td colspan="2">
										<textarea id="selfDescriptions" name="selfDescriptions"  placeholder="自我描述">${resume.resumePrepareA}</textarea>
										<div class="word_count">你还可以输入 <span>500</span> 字</div>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<input type="button" value="保 存" onclick="editDesc()" class="btn_profile_save">
										<a class="btn_profile_cancel" href="javascript:;">取 消</a>
									</td>
								</tr>
								</tbody></table>
						</div><!--end .descriptionForm-->
					</div><!--end .descriptionEdit-->
					<div class="descriptionAdd pAdd">
						${resume.resumePrepareA}



					</div><!--end .descriptionAdd-->
				</div><!--end #selfDescription-->
				<script>
                    function editDesc() {
                        var resumePrepareA = document.getElementById("selfDescriptions").value;


                        if (window.XMLHttpRequest) {
                            xhr = new XMLHttpRequest();
                        } else {
                            xhr = new ActiveXObject('Microsoft.XMLHTTP');
                        }
                        var url_editDescription = '${pageContext.request.contextPath}/student/editDescription';
                        url_editDescription+="?resumePrepareA="+resumePrepareA;

                        xhr.open("GET", url_editDescription);
                        xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
                        xhr.onreadystatechange = reloadMessage;
                        xhr.send();
                    }
				</script>

				<input type="hidden" id="resumeId" value="268472">
			</div><!--end .content_l-->
			<div class="content_r">
				<div class="mycenterR" id="myInfo">
					<h2>我的信息</h2>
					<a target="_blank" href="">我收藏的职位</a>
					<br>
					<a target="_blank" href="">我订阅的职位</a>
				</div><!--end #myInfo-->

				<div class="mycenterR" id="myResume">
					<h2>我的附件简历
						<a title="上传附件简历" href="#uploadFile" class="inline cboxElement">上传简历</a>
					</h2>
					<div class="resumeUploadDiv">
						暂无附件简历
					</div>
				</div><!--end #myResume-->

				<div class="mycenterR" id="resumeSet">
					<h2>投递简历设置  <span>修改设置</span></h2>
					<!-- -1 (0=附件， 1=在线， 其他=未设置) -->
					<div class="noSet set0 dn">默认使用<span>附件简历</span>进行投递</div>
					<div class="noSet set1 dn">默认使用<span>在线简历</span>进行投递</div>
					<div class="noSet">暂未设置默认投递简历</div>
					<input type="hidden" class="defaultResume" value="-1">
					<form class="dn" id="resumeSetForm">
						<label><input type="radio" value="1" class="resume1" name="resume">默认使用<span>在线简历</span>进行投递</label>
						<label><input type="radio" value="0" class="resume0" name="resume">默认使用<span>附件简历</span>进行投递</label>
						<span class="setTip error"></span>
						<div class="resumeTip">设置后投递简历时将不再提醒</div>
						<input type="button" value="保 存" class="btn_profile_save">
						<a class="btn_profile_cancel" href="javascript:;">取 消</a>
					</form>
				</div><!--end #resumeSet-->

				<div class="mycenterR" id="myShare">
					<h2>当前每日投递量：10个</h2>
					<a target="_blank" href="">邀请好友，提升投递量</a>
				</div><!--end #myShare-->


			</div><!--end .content_r-->
		</div>

		<input type="hidden" id="userid" name="userid" value="314873">


		<!-------------------------------------弹窗lightbox ----------------------------------------->

<!------------------------------------- end ----------------------------------------->

<script src="${pageContext.request.contextPath}/js/Chart.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/profile.min.js" type="text/javascript"></script>
<!-- <div id="profileOverlay"></div> -->
<div class="" id="qr_cloud_resume" style="display: none;">
	<div class="cloud">
		<img width="134" height="134" src="">
		<a class="close" href="javascript:;"></a>
	</div>
</div>
<script>
$(function(){
	$.ajax({
        url:ctx+"/mycenter/showQRCode",
        type:"GET",
        async:false
   	}).done(function(data){
        if(data.success){
             $('#qr_cloud_resume img').attr("src",data.content);
        }
   	});
	var sessionId = "resumeQR"+314873;
	if(!$.cookie(sessionId)){
		$.cookie(sessionId, 0, {expires: 1});
	}
	if($.cookie(sessionId) &amp;&amp; $.cookie(sessionId) != 5){
		$('#qr_cloud_resume').removeClass('dn');
	}
	$('#qr_cloud_resume .close').click(function(){
		$('#qr_cloud_resume').fadeOut(200);
		resumeQR = parseInt($.cookie(sessionId)) + 1;
		$.cookie(sessionId, resumeQR, {expires: 1});
	});
});
</script>
			<div class="clear"></div>
			<input type="hidden" value="97fd449bcb294153a671f8fe6f4ba655" id="resubmitToken">
	    	<a rel="nofollow" title="回到顶部" id="backtop" style="display: none;"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a rel="nofollow" target="_blank" href="h/about.html">联系我们</a>
		    <a target="_blank" href="h/af/zhaopin.html">互联网公司导航</a>
		    <a rel="nofollow" target="_blank" href="http://e.weibo.com/lagou720">拉勾微博</a>
		    <a rel="nofollow" href="javascript:void(0)" class="footer_qr">拉勾微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script src="${pageContext.request.contextPath}/js/core.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/popup.min.js" type="text/javascript"></script>

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

<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div></body></html>