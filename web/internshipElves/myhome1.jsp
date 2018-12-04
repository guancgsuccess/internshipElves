<%--
  Created by IntelliJ IDEA.
  User: xingdong
  Date: 2018/10/23
  Time: 10:23
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
    <title>平潭协创进出口贸易有限公司-实习精灵-最专业的互联网招聘平台</title>


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
   <!-- 公司名称 -->
    <script>
    var url_getCompany = "${pageContext.request.contextPath}/ComInformation/ComInformationMessage";

    //  页面加载后，首先加载公司信息
    window.onload =function () {
        loadingName();
        loadingStage();
        loadingDeplo();
        loadingProduct();
        loadingIntroduce();
        loadingComCreateTeam();
    }
    function loadingName() {
        if (window.XMLHttpRequest){
            xhr = new XMLHttpRequest();
        }else {
            xhr = new ActiveXObject('Microsoft.XMLHTTP');
        }
        xhr.open("get",url_getCompany,false);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
        xhr.onreadystatechange =loadCompany;
        xhr.send();
    }
    //加载公司信息  回调函数
    function loadCompany() {

        if (xhr.readyState == 4 && xhr.status == 200) {

            var result = JSON.parse(xhr.responseText);
            var  company = document.getElementById("cname");
            company.innerHTML  =' <h2 title=" result.comName" >'+
                result.comName+
                ' </h2>  <em class="unvalid"></em><div class="clear"></div>' +
                '<h1 title=" result.comName" class="fullname">' +result.comName+'</h1>' +
                '<form class="clear editDetail dn" id="editDetailForm">'+
                '<input type= "text" placeholder="请输入公司简称" maxlength="15" value="" name="comName" id="comName">'+
             '<input type="text" placeholder="一句话描述公司优势，核心价值，限50字" maxlength="50" value="" name="comIntroduce" id="comIntroduce">'
                +'<input type="hidden" value="25927" id="companyId" name="companyId">' +
                '<input type="button" value="保存" id="saveDetail" class="btn_small" onclick="updateCompany()">'+
                '<a id="cancelDetail" class="btn_cancel_s" >'+"取消"+'</a></form>'+

                ' <div class="clear oneword"><img width="17" height="15" src="/images/logo_default.png">'+'&nbsp; <span> '+result.comIntroduce+'</span> &nbsp;<img width="17" height="15" src="/images/logo_default.png"></div> '+

                '<h3 class="dn">'+"已选择标签"+'</h3>'+
                '<ul style="overflow:auto" id="hasLabels" class="reset clearfix">' +
                ' <li><span>'+"年终分红"+'</span></li>' +
                '                            <li><span>'+"五险一金"+'</span></li>'+
                '                           <li><span>'+"弹性工作"+'</span></li>' +
                '                            <li><span>'+"岗位晋升"+'</span></li></ul>';
        }
    }

</script>
   <!-- 公司地址领域规模主页 -->
    <script>
    var  url_getComStage ="${pageContext.request.contextPath}/ComInformation/ComInformationMessage2";
    //修改阶段信息
    var  url_updateComStage ="${pageContext.request.contextPath}/ComInformation/saveComMessage2";

    function loadingStage() {
        if (window.XMLHttpRequest){
            xhr = new XMLHttpRequest();
        }else {
            xhr = new ActiveXObject('Microsoft.XMLHTTP');
        }

        xhr.open("get",url_getComStage,false);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
        xhr.onreadystatechange =loadComStage;
        xhr.send();
    }
    // 加载阶段信息  回调函数
    function loadComStage() {
        if (xhr.readyState == 4 && xhr.status == 200) {

            var result = JSON.parse(xhr.responseText);
            var  company2 = document.getElementById("Tags");

            company2.innerHTML  ='<div id="c_tags_show" class="c_tags solveWrap"><table><tbody><tr><td width="45">'+"地点"+'</td><td>'+result.comCity+'</td></tr><tr><td>'+" 领域"+
                '</td><td title="result.comField ">'+result.comField +'</td></tr><tr><td>'+"规模"+'</td><td>'+result.comScale+'</td></tr><tr><td>'+"主页"+'</td><td>'+
                '<a rel="nofollow" title="result.comInterAddr" target="_blank" href="result.comInterAddr">'+result.comInterAddr+'</a></td></tr></tbody></table>'+
                '</div><div id="c_tags_edit" class="c_tags editTags dn"><form id="tagForms"><table><tbody><tr>'+
                '<td>'+"地点"+'</td><td><input type="text" placeholder="请输入地点" value="上海" name="city" id="city"></td></tr><tr> <td>'+"领域"+'</td><td>'+
                '<input type="hidden" value="移动互联网" id="industryField" name="industryField">'+
                '<input type="button" style="background:none;cursor:default;border:none !important;" disable="disable" value="移动互联网" id="select_ind" class="select_tags">'+
                '</td> </tr><tr><td>'+"规模"+'</td> <td><input type="hidden" value="150-500人" id="companySize" name="companySize">'+
                '<input type="button" value="150-500人" id="select_sca" class="select_tags"><div class="selectBox dn" id="box_sca" style="display: none;">'+
                '<ul class="reset"><li>'+"少于15人"+'</li><li>'+"15-50人"+'</li><li>'+"50-150人"+'</li><li class="current">'+"150-500人"+'</li><li>'+"500-2000人"+'</li>'+
                '<li>'+"2000人以上"+'</li></ul></div></td></tr><tr><td>'+"主页"+'</td><td><input type="text" placeholder="请输入网址" value="http://www.weimob.com" name="companyUrl" id="companyUrl"></td>'+
                '</tr></tbody></table><input type="hidden" id="comCity" value="上海"><input type="hidden" id="comInd" value="移动互联网">'+
                '<input type="hidden" id="comSize" value="150-500人">'+
                '<input type="hidden" id="comUrl" value="http://www.zmtpost.com">'+
                '<input type="button" value="保存" id="submitFeatures" class="btn_small"  onclick="updataComStage" >'+
                '<a id="cancelFeatures" class="btn_cancel_s" href="javascript:void(0)">'+"取消"+'</a><div class="clear"></div></form></div>';
        }

    }
    // 修改公司信息
    function updataComStage() {
        if (window.XMLHttpRequest){
            xhr = new XMLHttpRequest();
        }else {
            xhr = new ActiveXObject('Microsoft.XMLHTTP');
        }
        var comInterAddr=document.getElementById("comInterAddr").value;
        var comCity= document.getElementById("comCity").value;
        var comField= document.getElementById("comField").value;
        var comScale= document.getElementById("comScale").value;

        var formDate="comInterAddr="+comInterAddr+"&comCity="+comCity+"&comField="+comField+"&comScale="+comScale;
        alert("***************************"+formDate);
        xhr.open("POST",url_updateComStage,false);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
        xhr.onreadystatechange =loadComStage;
        xhr.send(formDate);

    }
</script>
   <!--  公司目前阶段  -->
    <script>
    var  url_getComDeplo="${pageContext.request.contextPath}/ComInformation/ComInformationMessage3";

    //
    function   loadingDeplo(){
        if(window.XMLHttpRequest){
            xhr = new  XMLHttpRequest();
        }else {
            xhr =new ActiveXObject('Microsoft.XMLHTTP');
        }

        xhr.open("get",url_getComDeplo,false);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=utf-8");
        xhr.onreadystatechange=loadDeplo;
        xhr.send();
    }
    function loadDeplo() {
        if(xhr.readyState == 4&& xhr.status  == 200){
            var result  = JSON.parse(xhr.responseText);
            var company3 =document.getElementById("deplo")

            company3.innerHTML ='<dt><h2><em></em>'+"融资阶段"+'</h2>'+
                '</dt><dd><ul class="reset stageshow"><li>'+"目前阶段："+'<span class="c5">'+result.comDeplo+'</span></li></ul>'+
                '<form class="dn" id="stageform"><div class="stageSelect"><label>'+"目前阶段"+'</label>'+
                '<input type="hidden" value="天使轮" id="financeStage" name="financeStage">'+
                '<input type="button" value="天使轮" id="select_fin" class="select_tags_short fl">'+
                '<div class="selectBoxShort dn" id="box_fin" style="display: none;">'+
                '<ul class="reset"><li>'+"未融资"+'</li><li class="current">'+"天使轮"+'</li>'+
                '<li>'+"A轮"+'</li><li>'+"B轮"+'</li><li>'+"C轮"+'</li><li>'+"D轮及以上"+'</li><li>'+"上市公司"+'</li>'+
                '</ul></div></div><ul id="stagesList" class="reset"><li></li>'+
                '</ul><input type="button" value="保存" class="btn_small" onclick="">'+
                '<a id="cancelStages" class="btn_cancel_s" href="javascript:void(0)">'+"取消"+'</a>'+
                '<div class="clear"></div></form></dd>';

        }
    }



</script>
    <!--  公司产品  -->
     <script>
        var  url_getComProduct="${pageContext.request.contextPath}/ComInformation/saveComProduct";

        function loadingProduct() {
                if (window.XMLHttpRequest){
                    xhr =new  XMLHttpRequest();
                }else {
                    xhr =new ActiveXObject('Microsoft.XMLHTTP');
                }


                xhr.open("get",url_getComProduct,false);
                xhr.setRequestHeader("Context-type","application/x-www-from-urlencoded;charset=utf-8");
                xhr.onreadystatechange=loadProduct;
                xhr.send();
        }
        //加载公司产品信息
      function loadProduct() {
          if (xhr.readyState == 4 && xhr.status == 200) {

              var result = JSON.parse(xhr.responseText);

              var comProduct = document.getElementById("comproduct");
              comProduct.innerHTML = '<dl id="newProduct" class="newProduct dn"><dt><h2><em></em>' + "公司产品" + '</h2></dt><dd>' +
                  '<form method="post" class="productForm"><div class="new_product"><div class="product_upload dn productNo">' +
                  '<div><span>' + "上传产品图片" + '</span><br>' + "尺寸：380*220px  	大小：小于5M" + '</div></div><div class="product_upload productShow">' +
                  '<img width="380" height="220" src="/images/product_default.jpg"><span>' + "更换产品图片<br>380*220px 小于5M" + '</span>' +
                  '</div><input type="file" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="product_check" name="myfiles" id="myfiles0"> ' +
                  '<input type="hidden" value="3" name="type" class="type">' +
                  '<input type="hidden" value="images/product_default.jpg" name="productPicUrl" class="productInfos">' +
                  '</div><div class="cp_intro"><input type="text" placeholder="请输入产品名称" value="' + result.comProductName + '" name="product">' +
                  '<input type="text" placeholder="请输入产品网址" value="' + result.comProductAddr + '" name="productUrl">' +
                  '<textarea placeholder="请简短描述该产品定位、产品特色、用户群体等" maxlength="500" value="' + result.comProductIntro + '" class="s_textarea" name="productProfile">' + result.comProductIntro + '</textarea>' +
                  '<div class="word_count fr">' + "你还可以输入" + '<span>' + "500" + '</span>' + " 字" + '</div>' +
                  '<div class="clear"></div><input type="submit" value="保存" class="btn_small">' +
                  '<a class="btn_cancel_s product_delete" href="javascript:void(0)">' + "删除" + '</a>' +
                  '<input type="hidden" value="11867" class="product_id">' +
                  '</div></form></dd></dl><dl class="c_product"><dt><h2><em></em>' + "公司产品" + '</h2></dt><dd>' +
                  '<img width="380" height="220" alt="' + result.comProductName + '" src="/images/product_default.jpg">' +
                  '<div class="cp_intro"><h3><a target="_blank" href="' + result.comProductAddr + '">' + result.comProductName + ' </a></h3>' +
                  '<div class="scroll-pane" style="overflow: hidden; padding:0px;width: 260px;">' +
                  '<div class="jspContainer" style="width: 260px; height: 140px;"><div class="jspPane" style="padding: 0px; top: 0px; width: 260px;"><div>' + result.comProductIntro + '</div></div></div></div>' +
                  '</div></dd></dl>';
          }
      }
    </script>
    <!--  公司介绍-->
    <script>
        var  url_getComIntroduce="${pageContext.request.contextPath}/ComInformation/saveComIntroduce";

        function loadingIntroduce() {
            if (window.XMLHttpRequest){
                xhr= new XMLHttpRequest();
            }else {
                xhr  =new  ActiveXObject('Microsoft.XMLHTTP');
            }
            xhr.open("get",url_getComIntroduce,false);
            xhr.setRequestHeader("Context-type","application/x-www-from-urlencoded;charset =utf-8");
            xhr.onreadystatechange=loadIntroduce;
            xhr.send();
        }
        function loadIntroduce() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var result = JSON.parse(xhr.responseText);
                var comIntroduce = document.getElementById("Profile");
                comIntroduce.innerHTML = '<div class="profile_wrap"><dl class="c_section dn"><dt><h2><em></em>'+"公司介绍"+'</h2>'+
                 '</dt><dd><div class="addnew">'+"详细公司的发展历程、让求职者更加了解你!"+'<br></div></dd></dl><dl class="c_section newIntro dn">'+
                 '<dt><h2><em></em>'+"公司介绍"+'</h2></dt><dd><form id="companyDesForm">'+
                 '<textarea placeholder="请分段详细描述公司简介、企业文化等" name="companyProfile" id="companyProfile">'+result.comIntroduce+'</textarea>'+
                 '<div class="word_count fr">'+"你还可以输入 "+'<span>'+"1000"+'</span>'+" 字"+'</div>'+
                 '<div class="clear"></div><input type="submit" value="保存" id="submitProfile" class="btn_small">'+
                 '<a id="delProfile" class="btn_cancel_s" href="javascript:void(0)">'+"取消"+'</a>'+
                 '</form></dd></dl><dl class="c_section"><dt><h2><em></em>'+"公司介绍"+'</h2></dt><dd>'+
               ' <div class="c_intro">'+result.comIntroduce+'</div></dd></dl></div>';
            }
        }
    </script>
    <!-- 创始团队 -->
    <script>
        var  url_getComCreateTeam ="${pageContext.request.contextPath}/ComInformation/saveComCreateTeam";
        function loadingComCreateTeam() {
             if (window.XMLHttpRequest){
                 xhr = new XMLHttpRequest();
             }else{
                 xhr = new  ActiveXObject('Microsoft.XMLHTTP');
             }
            xhr.open("get",url_getComCreateTeam,false);
            xhr.setRequestHeader("Context-type","application/x-www-from-urlencoded;charset =utf-8");
            xhr.onreadystatechange=loadComCreateTeam;
            xhr.send();
        }
        function loadComCreateTeam() {
            if (xhr.readyState == 4 && xhr.status == 200) {
                var result = JSON.parse(xhr.responseText);
                var comCreateTeam = document.getElementById("Member");
                comCreateTeam.innerHTML = '<dl class="c_section c_member">' +
                    '                        <dt>' +
                    '                            <h2><em></em>' + "创始团队" + '</h2>' +
                    '                            <a title="添加创始人" class="c_add" href="javascript:void(0)"></a>' +
                    '                        </dt>' +
                    '                        <dd>' +
                    '                            <div class="member_wrap">' +
                    '                                <div class="member_info addnew_right dn">' + "展示公司的领导班子，" + '<br>' + "提升诱人指数！" + '<br>' +
                    '                                </div>' +
                    '                                <div class="member_info newMember dn">' +
                    '                                    <form class="memberForm">' +
                    '                                        <div class="new_portrait">' +
                    '                                            <div class="portrait_upload dn portraitNo">' +
                    '                                                <span>' + "上传创始人头像" + '</span>' +
                    '                                            </div>' +
                    '                                            <div class="portraitShow">' +
                    '                                                <img width="120" height="120" src="/images/leader_default.jpg">' +
                    '                                                <span>' + "更换头像" + '</span>' +
                    '                                            </div>' +
                    '                                            <input type="file" value="" title="支持jpg、jpeg、gif、png格式，文件小于5M" onchange="member_check;" name="myfiles" id="profiles0">' +
                    '                                            <input type="hidden" value="7" name="type" class="type">' +
                    '                                            <input type="hidden" value="images/leader_default.jpg" name="photo" class="leaderInfos">' +
                    '                                            <em>' + "尺寸：120*120px" + ' <br>' + "大小：小于5M" + '</em></div>' +
                    '                                        <input type="text" placeholder="请输入创始人姓名" value="' + result.comFounderName + '" name="name">' +
                    '                                        <input type="text" placeholder="请输入创始人当前职位" value="' + result.comPosition + '" name="position">' +
                    '                                        <input type="text" placeholder="请输入创始人新浪微博地址" value="' + result.comWeibo + '" name="weibo">' +
                    '                                        <textarea placeholder="请输入创始人个人简介" maxlength="500" class="s_textarea" name="remark">' + result.comFounderIntro + '</textarea>' +
                    '                                        <div class="word_count fr">' + "你还可以输入" + ' <span>' + "500" + '</span>' + " 字" + '</div>' +
                    '                                        <div class="clear"></div>' +
                    '                                        <input type="submit" value="保存" class="btn_small">' +
                    '                                        <a class="btn_cancel_s member_delete" href="javascript:void(0)">' + "删除" + '</a>' +
                    '                                        <input type="hidden" value="11493" class="leader_id">' +
                    '                                    </form>' +
                    '                                </div>' +
                    '                                <div class="member_info">' +
                    '                                    <div class="m_portrait">' +
                    '                                        <div></div>' +
                    '                                        <img width="120" height="120" alt="孙泰英" src="/images/leader_default.jpg">' +
                    '                                    </div>' +
                    '                                    <div class="m_name">' + result.comFounderName + '<a target="_blank" class="weibo" href="' + result.comWeibo + '"></a>' +
                    '                                    </div>' +
                    '                                    <div class="m_position">' + result.comPosition + '</div>' +
                    '                                    <div class="m_intro">' + result.comFounderIntro + '</div>' +
                    '                                </div>' +
                    '                            </div>' +
                    '                        </dd>' +
                    '                    </dl>'
            }
        }
    </script>

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
        <!-- <script src="style/js/swfobject_modified.js" type="text/javascript"></script> -->
        <div class="clearfix">

            <div class="content_l">
                <div class="c_detail">
                    <div style="background-color:#fff;" class="c_logo">

                            <img width="190" height="190" alt="公司logo" src="/images/logo_default.jpg">


                        </a>
                    </div>

                    <div class="c_box companyName"  id="cname">

                </div>
                <%--  <a title="编辑基本信息" class="c_edit" id="editCompanyDetail" href="javascript:void(0);"></a>
                   <a id="editTags" class="c_edit" href="javascript:void(0)"></a>--%>
                    <div class="clear"></div>
                </div>


                <div class="c_breakline"></div>

                <div id="Product">

                    <div class="product_wrap" id="comproduct">

                        <!--产品编辑-->

                    </div>
                </div>   <!-- end #Product -->

                <div id="Profile">

                        <!--  公司介绍-->

                </div>    <!-- end #Profile -->

                <!--[if IE 7]> <br /> <![endif]-->

                <dl id="noJobs" class="c_section">
                    <dt>
                        <h2><em></em>招聘职位</h2>
                    </dt>
                    <dd>
                        <div class="addnew">
                            发布需要的人才信息，让伯乐和千里马尽快相遇……<br>
                  <a href="${pageContext.request.contextPath}/releaseJob">+添加招聘职位</a>
                        </div>
                    </dd>
                </dl>

                <input type="hidden" value="" name="hasNextPage" id="hasNextPage">
                <input type="hidden" value="" name="pageNo" id="pageNo">
                <input type="hidden" value="" name="pageSize" id="pageSize">
                <div id="flag"></div>
            </div>	<!-- end .content_l -->

            <div class="content_r">
                <div id="Tags">

                </div><!-- end #Tags -->

                <dl class="c_section c_stages"  id="deplo" >

                </dl><!-- end .c_stages -->

                <div id="Member">
                    <!--有创始团队-->

                </div> <!-- end #Member -->

            </div>
        </div>

        <script src="/js/company.min.js" type="text/javascript"></script>
        <script>
            var avatar = {};
            avatar.uploadComplate = function( data ){
                var result = eval('('+ data +')');
                if(result.success){
                    jQuery('#logoShow img').attr("src",ctx+ '/'+result.content);
                    jQuery.colorbox.close();
                }
            };
        </script>
        <div class="clear"></div>
        <input type="hidden" value="d1035b6caa514d869727cff29a1c2e0c" id="resubmitToken">
        <a rel="nofollow" title="回到顶部" id="backtop" style="display: inline;"></a>
    </div><!-- end #container -->
</div><!-- end #body -->
<div id="footer">
    <div class="wrapper">
        <a rel="nofollow" target="_blank" href=#">联系我们</a>
        <a target="_blank" href="#">互联网公司导航</a>
        <a rel="nofollow" target="_blank" href="#">实习精灵微博</a>
        <div class="copyright">©2018-2019 internshipElves <a href="#" target="_blank">京ICP备18023790号-2</a></div>
    </div>
</div>

<script src="/js/core.min.js" type="text/javascript"></script>
<script src="/js/popup.min.js" type="text/javascript"></script>


<!--  -->


<div id="cboxOverlay" style="display: none;"></div><div id="colorbox" class="" role="dialog" tabindex="-1" style="display: none;"><div id="cboxWrapper"><div><div id="cboxTopLeft" style="float: left;"></div><div id="cboxTopCenter" style="float: left;"></div><div id="cboxTopRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxMiddleLeft" style="float: left;"></div><div id="cboxContent" style="float: left;"><div id="cboxTitle" style="float: left;"></div><div id="cboxCurrent" style="float: left;"></div><button type="button" id="cboxPrevious"></button><button type="button" id="cboxNext"></button><button id="cboxSlideshow"></button><div id="cboxLoadingOverlay" style="float: left;"></div><div id="cboxLoadingGraphic" style="float: left;"></div></div><div id="cboxMiddleRight" style="float: left;"></div></div><div style="clear: left;"><div id="cboxBottomLeft" style="float: left;"></div><div id="cboxBottomCenter" style="float: left;"></div><div id="cboxBottomRight" style="float: left;"></div></div></div><div style="position: absolute; width: 9999px; visibility: hidden; display: none;"></div></div>

</body>
</html>
