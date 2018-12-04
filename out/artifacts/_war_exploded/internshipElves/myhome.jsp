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

    <%--</script><script type="text/javascript" async="" src="/js/conversion.js"></script><script src="/js/allmobilize.min.js" charset="utf-8" id="allmobilize"></script><style type="text/css"></style>--%>

    <!-- end 云适配 -->
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
    <title>公司详情</title>


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
<!-- 公司名称 -->
<body>
<div id="body">
    <div id="header">
        <div class="wrapper">
            <a class="logo" href="index.html">
                <img width="229" height="43" alt="实习精灵" src="${pageContext.request.contextPath}/images/logo.png">
            </a>
            <ul id="navheader" class="reset">
                <li><a href="${pageContext.request.contextPath}/internshipElves/index.jsp">首页</a></li>
                <li><a href="${pageContext.request.contextPath}/internshipElves/companyList.jsp" style="border-bottom: 3px solid #019875">公司</a></li>

                <li><a rel="nofollow" href="${pageContext.request.contextPath}/student/isLogin">我的简历</a></li>
                <li ><a href="${pageContext.request.contextPath}/personCenter/loginIn" rel="nofollow">个人中心</a></li>
            </ul>
            <dl class="collapsible_menu" onclick="sw_fo()">
                <dt >
                    <span><a href="${pageContext.request.contextPath}/stuLogin/logout" style="color:honeydew; margin-left: 40px">退出</a>&nbsp;</span>
                </dt>
            </dl>
            <div class="dn" id="noticeTip">
                <span class="bot"></span>
                <span class="top"></span>
                <a target="_blank" href="delivery.html"><strong>0</strong>条新投递反馈</a>
                <a class="closeNT" href="javascript:;"></a>
            </div>
        </div>
    </div><!-- end #header -->
    <div id="container">
        <!-- <script src="style/js/swfobject_modified.js" type="text/javascript"></script> -->
        <div class="clearfix">

            <div class="content_l">
                <div class="c_detail">
                    <div style="background-color:#fff;" class="c_logo">
                        <a title="上传公司LOGO" id="logoShow" class="inline cboxElement" href="#logoUploader">
                            <img width="190" height="190" alt="公司logo" src="/images/timg${c.comMessagePrepareA}">

                        </a>
                    </div>

                    <!--  			                <div class="c_logo" style="background-color:#fff;">
                            <div id="logoShow">
                                <img src="style/images/logo_default.png" width="190" height="190" alt="公司logo" />
                                <span>更换公司图片<br />190px*190px 小于5M</span>
                            </div>
                            <input onchange="img_check(this,'http://www.lagou.com/cd/saveProfileLogo.json',25927,'logo');" type="file" id="logo" name="logo" title="支持jpg、jpeg、gif、png格式，文件小于5M" />

                        </div>
                        <span class="error" id="logo_error" style="display:none;"></span>
                         -->

                    <div class="c_box companyName">
                        <h2 style="margin-top: 25px;" title="平潭协创进出口贸易有限公司">${c.comName}</h2>

                        <em class="unvalid"></em>
                        <span class="va dn">实习精灵未认证企业</span>
                        <a target="_blank" class="applyC" href="http://www.lagou.com/c/auth.html">申请认证</a>
                        <div class="clear"></div>

                        <h1 title="${c.comName}" class="fullname"></h1>



                        <div class="clear oneword"><img width="17" height="15" src="style/images/quote_l.png">&nbsp; <span>${c.comName}</span> &nbsp;<img width="17" height="15" src="style/images/quote_r.png"></div>
                        <h3 class="dn">已选择标签</h3>
                        <ul style="overflow:auto" id="hasLabels" class="reset clearfix">
                            <li><span>${c.comField}</span></li>
                            <li><span>年终分红</span></li>
                            <li><span>五险一金</span></li>
                            <li><span>弹性工作</span></li>
                            <li><span>岗位晋升</span></li>
                            <li><span>健康医疗</span></li>
                            <li><span>智能家居</span></li>
                            <li><span>文化艺术</span></li>
                            <li><span>在线旅游</span></li>
                            <li><span>分类信息</span></li>
                            <li><span>带薪假期</span></li>
                            <li><span>境外旅游</span></li>

                        </ul>
                        <div class="dn" id="addLabels">
                            <a id="changeLabels" class="change" href="javascript:void(0)">换一换</a>
                            <input type="hidden" value="1" id="labelPageNo">
                            <input type="submit" value="贴上" class="fr" id="add_label">
                            <input type="text" placeholder="添加自定义标签" name="label" id="label" class="label_form fr">
                            <div class="clear"></div>
                            <ul class="reset clearfix"> </ul>
                            <a id="saveLabels" class="btn_small" href="javascript:void(0)">保存</a>
                            <a id="cancelLabels" class="btn_cancel_s" href="javascript:void(0)">取消</a>
                        </div>
                    </div>
                    <a title="编辑基本信息" class="c_edit" id="editCompanyDetail" href="javascript:void(0);"></a>

                </div>

                <div class="c_breakline"></div>

                <div id="Product">

                    <div class="product_wrap">

                        <!--无产品 -->
                        <dl class="c_section dn">
                            <dt>
                                <h2><em></em>公司产品</h2>
                            </dt>
                            <dd>
                                <div class="addnew">
                                    酒香不怕巷子深已经过时啦！<br>
                                    把自己优秀的产品展示出来吸引人才围观吧！<br>
                                </div>
                            </dd>
                        </dl>

                        <!--产品编辑-->
                        <dl id="newProduct" class="newProduct dn">
                            <dt>
                                <h2><em></em>公司产品</h2>
                            </dt>
                            <dd>

                            </dd>
                        </dl>
                        <!--有产品-->
                        <dl class="c_product">
                            <dt>
                                <h2><em></em>公司产品</h2>
                            </dt>
                            <dd>
                                <img width="380" height="220" alt="发大发" src="${c.comMessagePrepareB}">
                                <div class="cp_intro" style="position: relative;bottom: 18px;right: 20px;" >
                                    <h3><a target="_blank" href="http://www.weimob.com"></a></h3>
                                    <img width="300" height="221" alt="发大发" src="${c.comMessagePrepareB}">
                                </div>
                                <a title="编辑公司产品" class="c_edit product_edit" href="javascript:void(0)"></a>
                                <a title="新增公司产品" class="c_add product_add" href="javascript:void(0)"></a>
                            </dd>
                        </dl>

                    </div>
                </div>   <!-- end #Product -->

                <div id="Profile">
                    <div class="profile_wrap">
                        <!--无介绍 -->
                        <dl class="c_section dn">
                            <dt>
                                <h2><em></em>公司介绍</h2>
                            </dt>
                            <dd>
                                <div class="addnew">
                                    详细公司的发展历程、让求职者更加了解你!<br>
                                    <a id="addIntro" href="javascript:void(0)">+添加公司介绍</a>
                                </div>
                            </dd>
                        </dl>
                        <!--编辑介绍-->
                        <dl class="c_section newIntro dn">
                            <dt>
                                <h2><em></em>公司介绍</h2>
                            </dt>
                            <dd>
                                <%--<form id="companyDesForm">--%>
                                    <%--<textarea placeholder="请分段详细描述公司简介、企业文化等" name="companyProfile" id="companyProfile">该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎该方法嘎嘎</textarea>--%>
                                    <%--<div class="word_count fr">你还可以输入 <span>1000</span> 字</div>--%>
                                    <%--<div class="clear"></div>--%>
                                    <%--<input type="submit" value="保存" id="submitProfile" class="btn_small">--%>
                                    <%--<a id="delProfile" class="btn_cancel_s" href="javascript:void(0)">取消</a>--%>
                                <%--</form>--%>
                            </dd>
                        </dl>

                        <!--有介绍-->
                        <dl class="c_section">
                            <dt>
                                <h2><em></em>公司介绍</h2>
                            </dt>
                            <dd>
                                <div class="c_intro">${c.comIntroduce}</div>
                                <a title="编辑公司介绍" id="editIntro" class="c_edit" href="javascript:void(0)"></a>
                            </dd>
                        </dl>
                    </div>

                </div><!-- end #Profile -->

                <!--[if IE 7]> <br /> <![endif]-->

                <!--无招聘职位-->
                <dl id="noJobs" class="c_section">
                    <dt>
                        <h2><em></em>招聘职位</h2>
                    </dt>
                    <dd>
                        <div class="addnew">
                            千里马常有而伯乐不常有，让伯乐和千里马尽快相遇吧……<br>
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
                    <div id="c_tags_show" class="c_tags solveWrap">
                        <table>
                            <tbody><tr>
                                <td width="45">地点</td>
                                <td>${c.comCity}</td>
                            </tr>
                            <tr>
                                <td>领域</td><!-- 支持多选 -->
                                <td title="移动互联网">${c.comField}</td>
                            </tr>
                            <tr>
                                <td>规模</td>
                                <td>${c.comScale}人</td>
                            </tr>
                            <tr>
                                <td>主页</td>
                                <td>
                                    <a rel="nofollow" title="http://www.weimob.com" target="_blank" href="http://www.weimob.com">${c.comInterAddr}</a>
                                </td>
                            </tr>
                            </tbody></table>
                        <a id="editTags" class="c_edit" href="javascript:void(0)"></a>
                    </div>
                    <div id="c_tags_edit" class="c_tags editTags dn">
                        <form id="tagForms">
                            <table>
                                <tbody><tr>
                                    <td>地点</td>
                                    <td>
                                        <input type="text" placeholder="请输入地点" value="上海" name="city" id="city">
                                    </td>
                                </tr>
                                <tr>
                                    <td>领域</td><!-- 支持多选 -->
                                    <td>
                                        <input type="hidden" value="移动互联网" id="industryField" name="industryField">
                                        <input type="button" style="background:none;cursor:default;border:none !important;" disable="disable" value="移动互联网" id="select_ind" class="select_tags">
                                        <!-- <div id="box_ind" class="selectBox dn">
                                            <ul class="reset">
                                                                                                                                                            <li class="current">移动互联网</li>
                                                                                                                                                </ul>
                                        </div>	 -->
                                    </td>
                                </tr>
                                <tr>
                                    <td>规模</td>
                                    <td>
                                        <input type="hidden" value="150-500人" id="companySize" name="companySize">
                                        <input type="button" value="150-500人" id="select_sca" class="select_tags">
                                        <div class="selectBox dn" id="box_sca" style="display: none;">
                                            <ul class="reset">
                                                <li>少于15人</li>
                                                <li>15-50人</li>
                                                <li>50-150人</li>
                                                <li class="current">150-500人</li>
                                                <li>500-2000人</li>
                                                <li>2000人以上</li>
                                            </ul>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>主页</td>
                                    <td>
                                        <input type="text" placeholder="请输入网址" value="http://www.weimob.com" name="companyUrl" id="companyUrl">
                                    </td>
                                </tr>
                                </tbody></table>
                            <input type="hidden" id="comCity" value="上海">
                            <input type="hidden" id="comInd" value="移动互联网">
                            <input type="hidden" id="comSize" value="150-500人">
                            <input type="hidden" id="comUrl" value="http://www.zmtpost.com">
                            <input type="submit" value="保存" id="submitFeatures" class="btn_small">
                            <a id="cancelFeatures" class="btn_cancel_s" href="javascript:void(0)">取消</a>
                            <div class="clear"></div>
                        </form>
                    </div>
                </div><!-- end #Tags -->

                <dl class="c_section c_stages">
                    <dt>
                        <h2><em></em>融资阶段</h2>
                        <a title="编辑融资阶段" class="c_edit" href="javascript:void(0)"></a>
                    </dt>
                    <dd>
                        <ul class="reset stageshow">
                            <li>目前阶段：<span class="c5">企业已经有了一个处于初级阶段的产品，而且拥有了一份很粗的经营计划，企业的生产、销售、服务已具备成功的把握，处于扩张期。</span></li>
                        </ul>
                        <form class="dn" id="stageform">
                            <div class="stageSelect">
                                <label>目前阶段</label>
                                <input type="hidden" value="天使轮" id="financeStage" name="financeStage">
                                <input type="button" value="天使轮" id="select_fin" class="select_tags_short fl">
                                <div class="selectBoxShort dn" id="box_fin" style="display: none;">
                                    <ul class="reset">

                                        <li>未融资</li>


                                        <li class="current">天使轮</li>


                                        <li>A轮</li>


                                        <li>B轮</li>


                                        <li>C轮</li>


                                        <li>D轮及以上</li>


                                        <li>上市公司</li>

                                    </ul>
                                </div>
                            </div>
                            <ul id="stagesList" class="reset">
                                <li>
                                    <label>融资阶段</label>
                                    <input type="hidden" class="select_invest_hidden" name="select_invest_hidden">
                                    <input type="button" value="融资阶段" class="select_tags_short select_invest">
                                    <div class="selectBoxShort dn" style="display: none;">
                                        <ul class="reset">
                                            <li>天使轮</li>
                                            <li>A轮</li>
                                            <li>B轮</li>
                                            <li>C轮</li>
                                            <li>D轮及以上</li>
                                            <li>上市公司</li>
                                        </ul>
                                    </div>
                                    <label>投资机构</label>
                                    <input type="text" placeholder="如真格基金" name="stageorg" value="">
                                </li>
                            </ul>
                            <input type="submit" value="保存" class="btn_small">
                            <a id="cancelStages" class="btn_cancel_s" href="javascript:void(0)">取消</a>
                            <div class="clear"></div>

                            <div class="dn" id="cloneInvest">
                                <label>融资阶段</label>
                                <input type="hidden" class="select_invest_hidden" name="select_invest_hidden">
                                <input type="button" value="发展阶段" class="select_tags_short select_invest">
                                <div class="selectBoxShort dn" style="display: none;">
                                    <ul class="reset">
                                        <li>天使轮</li>
                                        <li>A轮</li>
                                        <li>B轮</li>
                                        <li>C轮</li>
                                        <li>D轮及以上</li>
                                        <li>上市公司</li>
                                    </ul>
                                </div>
                                <label>投资机构</label>
                                <input type="text" placeholder="如真格基金" name="stageorg">
                            </div>
                        </form>
                    </dd>
                </dl><!-- end .c_stages -->


                <div id="Member">
                    <%--<!--有创始团队-->--%>
                    <%--<dl class="c_section c_member">--%>
                        <%--<dt>--%>
                            <%--<h2><em></em>创始团队</h2>--%>
                            <%--<a title="添加创始人" class="c_add" href="javascript:void(0)"></a>--%>
                        <%--</dt>--%>
                        <%--<dd>--%>

                            <div class="member_wrap">

                                <!-- 无创始人 -->
                                <div class="member_info addnew_right dn">
                                    展示公司的领导班子，<br>提升诱人指数！<br>
                                    <a class="member_edit" href="javascript:void(0)">+添加成员</a>
                                </div>



                                <%--<!-- 显示创始人 -->--%>
                                <div class="member_info">
                                    <a title="编辑创始人" class="c_edit member_edit" href="javascript:void(0)"></a>
                                    <div class="m_portrait">
                                        <div></div>
                                        <img width="120" height="120" alt="" src="/images/50.jpg">
                                    </div>
                                    <div class="m_name">
                                        <a target="_blank" class="weibo" href="http://weimob.weibo.com"></a>
                                    </div>
                                    <div class="m_position">ceo</div>
                                    <div class="m_intro" style="font-weight: 500;">孙泰英，男，1954年10月24日生于四川省广元市苍溪县，1989年起担任平潭协进出口贸易有限公司董事长，毕业于辽宁大学。</div>
                                </div>

                            </div><!-- end .member_wrap -->
                        </dd>
                    </dl>
                </div> <!-- end #Member -->


                <!--公司深度报道-->
                <div id="Reported">
                    <!--无报道-->
                    <dl class="c_section c_reported">
                        <dt>
                            <h2><em></em>公司深度报道</h2>
                            <a title="添加报道" class="c_add" href="javascript:void(0)"></a>
                        </dt>
                        <dd>
                            <!-- 编辑报道 -->
                            <ul class="reset"><li>
                                <a style="" class="article" title="随便写" target="_blank" href="http://www.baidu.com">随便写</a>
                                <a title="编辑报道" class="c_edit dn" href="javascript:;" style="display: inline;"></a>
                                <form class="reportForm dn">
                                    <input type="text" placeholder="请输入文章标题" value="" name="articleTitle" class="valid">
                                    <input type="text" placeholder="请输入文章链接" value="" name="articleUrl" class="valid"><span for="articleUrl" generated="true" class="error" style="display: none;">请输入有效的文章链接</span>
                                    <input type="submit" value="保存" class="btn_small">
                                    <a class="btn_cancel_s report_delete" href="javascript:;">删除</a>
                                    <input type="hidden" value="5235" class="article_id">
                                </form>
                            </li><li>
                                <a style="" class="article" title="随便写" target="_blank" href="http://www.baidu.com">随便写</a>
                                <a title="编辑报道" class="c_edit dn" href="javascript:;" style="display: inline;"></a>
                                <form class="reportForm dn">
                                    <input type="text" placeholder="请输入文章标题" value="" name="articleTitle" class="valid">
                                    <input type="text" placeholder="请输入文章链接" value="" name="articleUrl" class="valid">
                                    <input type="submit" value="保存" class="btn_small">
                                    <a class="btn_cancel_s report_delete" href="javascript:;">删除</a>
                                    <input type="hidden" value="5236" class="article_id">
                                </form>
                            </li></ul>

                            <!-- 无报道 -->
                            <div class="addnew_right reported_info dn">
                                展示外界对公司的深度报道，<br>便于求职者了解公司！<br>
                                <a class="report_edit" href="javascript:void(0)">+添加报道</a>
                            </div>

                            <ul class="newReport dn">
                                <li>
                                    <a style="display:none;" class="article" title="" target="_blank" ></a>
                                    <a title="编辑报道" class="c_edit dn" href="javascript:;"></a>
                                    <form class="reportForm">
                                        <input type="text" placeholder="请输入文章标题" value="" name="articleTitle">
                                        <input type="text" placeholder="请输入文章链接" value="" name="articleUrl">
                                        <input type="submit" value="保存" class="btn_small">
                                        <a class="btn_cancel_s report_cancel" href="javascript:;">取消</a>
                                        <input type="hidden" value="" class="article_id">
                                    </form>
                                </li>
                            </ul>
                        </dd>
                    </dl><!-- end .c_reported -->
                </div><!-- end #Reported -->

            </div>
        </div>

        <!-------------------------------------弹窗lightbox  ----------------------------------------->
        <div style="display:none;">
            <div style="width:650px;height:470px;" class="popup" id="logoUploader">
                <object width="650" height="470" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" id="FlashID">
                    <param value="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json" name="movie">
                    <param value="high" name="quality">
                    <param value="opaque" name="wmode">
                    <param value="111.0.0.0" name="swfversion">
                    <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
                    <param value="../../Scripts/expressInstall.swf" name="expressinstall">
                    <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
                    <!--[if !IE]>-->
                    <object width="650" height="470" data="../../flash/avatar.swf?url=http://www.lagou.com/cd/saveProfileLogo.json" type="application/x-shockwave-flash">
                        <!--<![endif]-->
                        <param value="high" name="quality">
                        <param value="opaque" name="wmode">
                        <param value="111.0.0.0" name="swfversion">
                        <param value="../../Scripts/expressInstall.swf" name="expressinstall">
                        <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
                        <div>
                            <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
                            <p><a href="http://www.adobe.com/go/getflashplayer"><img width="112" height="33" src="style/images/get_flash_player.gif" alt="获取 Adobe Flash Player"></a></p>
                        </div>
                        <!--[if !IE]>-->
                    </object>
                    <!--<![endif]-->
                </object>
            </div><!-- #logoUploader -->
        </div>
        <!------------------------------------- end ----------------------------------------->

        <script src="style/js/company.min.js" type="text/javascript"></script>
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
        <a rel="nofollow" target="_blank" href="about.html">联系我们</a>
        <a target="_blank" href="http://www.lagou.com/af/zhaopin.html">互联网公司导航</a>
        <a rel="nofollow" target="_blank" href="http://e.weibo.com/lagou720">微博</a>
        <a rel="nofollow" href="javascript:void(0)" class="footer_qr">拉勾微信<i></i></a>
        <div class="copyright">&copy;2013-2014 Lagou <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">京ICP备14023790号-2</a></div>
    </div>
</div>
</body>
</html>
