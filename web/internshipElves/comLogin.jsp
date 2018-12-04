<%--
  Created by IntelliJ IDEA.
  User: 卢文祥
  Date: 2018/9/19
  Time: 23:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <link href="/css/login1.css" rel="stylesheet">
    <script src="/js/login1.js"></script>
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
            <a href="${pageContext.request.contextPath}/comLogin.jsp">企业端登录</a>
        </div>

        <div class="register_left_r2">
            <form action="${pageContext.request.contextPath}/company/login" method="post">
                <input type="text" placeholder="请输入邮箱"class="Dx" name = "comName" onblur="func1()"/>
                <span class="Sa"></span>
                <input type="password" placeholder="请输入密码"class="Dx" id="Dx1" name="comPwd" onblur="func2()" />
                <span class = "Sb"></span>

                <button type="submit" class="Df"><span>登录</span></button>
            </form>

        </div>
    </div>

    <div class="slice"></div>

    <div id = "register_right">
        <div class="register_right_r1">
            <span>没有账号? 直接 <a href="${pageContext.request.contextPath}/internshipElves/register2.jsp">注册</a></span>
        </div>

        <div class="register_right_r2">
            <div class="register_right_r2_Ba">
                <span>已使用第三方账号登录</span>
            </div>
            <div class="register_right_r2_Bb">
                <ul>
                    <li><a href=""><img src="/images/4.jpg"/></a></li>
                    <li><a href=""><img src="/images/5.jpg"/></a></li>
                    <li><a href=""><img src="/images/6.jpg"/></a></li>
                </ul>
            </div>
        </div>
    </div>

</div>
</body>
</html>
