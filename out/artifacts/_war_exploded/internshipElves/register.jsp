<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>手机注册</title>
    <link href="/css/css_register.css" rel="stylesheet"/>
    <script src="/js/register.js"></script>
    <script src="/js/getVerificationCode.js"></script>
</head>
<body>
<div id = "nav">
    <div class="nav_img">
        <a href=""><img src="/images/logo.png"></a>
    </div>
</div>

<div id = "register">
    <div id = "register_left">
        <div class="register_left_r1">
            <a href="${pageContext.request.contextPath}/internshipElves/register.jsp">学生注册</a>
        </div>

        <div class="register_left_r2">
            <form>
                <span class="registerMessage" id="registerMsg"></span>
                <input type="text" placeholder="请输入常用手机号码" class="registerTelAndPwd" id="registerId" name="stuPhone" onblur="registerTel()"/>
                <span class="registerTelMsg"></span>
                <input type="password" placeholder="请输入密码" class="registerTelAndPwd" id = "registerPwd" name="stuPwd" onblur="registerPassword()"/>
                <span class="registerPwdMsg"></span>
                <input type="text" placeholder="请输入短信验证码" class="identifyingCode" id="registerIdentifyingCode"/>
                <button type="button" class="getIdentifyingCode" onclick="getVerificationCode()"><span id="code">获取短信验证码</span></button>
                <span class="registerIdentifyingCodeMsg"></span>
                <div class="agreement">
                    <div class="agreement_one" onblur="stuCheckBox()"><input type="checkbox" class="agreement_agree"><label> 我已阅读并同意</label></div>
                    <div class="agreement_check"><a href=""><pre>《实习精灵用户协议》</pre></a></div>
                    <span class="agreementMsg"></span>
                </div>
                <button type="button" class="register" onclick="register()"><span>注册</span></button>
            </form>
        </div>
    </div>

    <div class="slice"></div>
    <div id = "register_right">
        <div class="register_right_r1">
            <span>已有账号? 直接 <a href="${pageContext.request.contextPath}/internshipElves/login.jsp">登录</a></span>
        </div>

        <div class="register_right_r2">
            <div class="register_right_r2_Ba">
                <span>已使用第三方账号登录</span>
            </div>
            <div class="register_right_r2_Bb">
                <ul>
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/4.jpg"/></a></li>
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/5.jpg"/></a></li>
                    <li><a href=""><img src="${pageContext.request.contextPath}/images/6.jpg"/></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
