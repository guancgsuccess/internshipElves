<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
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
        <div class="form-data pos">
            <form>
                <p class="p-input pos" id="pwd">
                    <label for="passport">输入密码</label>
                    <%--<input type="password" style="display: none"/>--%>
                    <input type="password" id="passport" onblur="regPwdMsg()">
                    <span class="pwdMsg" style="position: absolute;color: #ea5d5f;font-size: 12px;right: 0;top: 22px;"></span>
                </p>

                <p class="p-input pos" id="confirmpwd">
                    <label for="passport2">确认密码</label>
                    <%--<input type="password" style="position:absolute;top:-998px"/>--%>
                    <input type="password" id="passport2" onblur="regConfirmPwdMsg()">
                    <span class="confirmPwdMsg" style="position: absolute; color: #ea5d5f; font-size: 12px;right: 0;top: 22px;"></span>
                </p>
            </form>

            <div class="reg_checkboxline pos">
                <span class="z"><i class="icon-ok-sign boxcol" nullmsg="请同意!"></i></span>
                <input type="hidden" name="agree" value="1">
                <div class="Validform_checktip"></div>
                <p>我已阅读并接受 <a href="#" target="_brack">《实习精灵协议说明》</a></p>
            </div>

            <button class="lang-btn" onclick="reg()">重置密码</button>
            <div class="bottom-info">已有账号，<a href="${pageContext.request.contextPath}/internshipElves/login.jsp">马上登录</a></div>
            <div class="third-party">
                <a href="#" class="log-qq icon-qq-round"></a>
                <a href="#" class="log-qq icon-weixin"></a>
                <a href="#" class="log-qq icon-sina1"></a>
            </div>
        </div>
    </div>
</div>
<script src="/js/jquery.js"></script>
<script src="/js/agree.js"></script>
<script src="/js/reg.js"></script>
</body>
</html>
