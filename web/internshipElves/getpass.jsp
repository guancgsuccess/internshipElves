<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>找回密码</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="Keywords" content="网站关键词">
    <meta name="Description" content="网站介绍">
    <link rel="stylesheet" href="/css/base.css">
    <link rel="stylesheet" href="/css/iconfont.css">
    <link rel="stylesheet" href="/css/reg.css">
</head>
<body>
<div id="ajax-hook"></div>
<div class="wrap">
    <div class="wpn">
        <div class="form-data find_password">
            <h4>找回密码</h4>
            <p class="right_now">已有账号，<a href="${pageContext.request.contextPath}/internshipElves/login.jsp">马上登录</a></p>
            <p class="p-input pos">
                <label for="pc_tel">手机号</label>
                <input type="text" id="pc_tel" onblur="getPassTelValidate()">
                <span class="getPassTelMsg" style="position: absolute;color: #ea5d5f;font-size: 12px;right: 0;top: 22px;"></span>
            </p>
            <p class="p-input pos">
                <label for="veri-code">输入验证码</label>
                <input type="number" id="veri-code" onblur="isIdentifyingCodeEmpty()">
                <a href="javascript:getPassVerificationCode()" class="send" id="send1">发送验证码</a>
                <span class="getPassVeri" style="color: #ea5d5f;font-size: 14px;top: -5px;right: 0;position: absolute;"></span>
            </p>
            <button class="lang-btn next" onclick="getPass()">下一步</button>
        </div>
    </div>
</div>
<script src="/js/jquery.js"></script>
<script src="/js/agree.js"></script>
<script src="/js/getPass.js"></script>
</body>
</html>
