<%--
  Created by IntelliJ IDEA.
  User: 卢文祥
  Date: 2018/9/19
  Time: 23:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>邮箱注册</title>
    <link href="/css/css_register1.css" rel="stylesheet">
    <script src = "/js/register1.js"></script>
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

            <a href="${pageContext.request.contextPath}/internshipElves/register2.jsp">邮箱注册</a>
        </div>

        <div class="register_left_r2">
            <form action="${pageContext.request.contextPath}/company/addByEmailAndPwd" method="post">
                <input type="text" placeholder="请输入常用邮箱地址" name="comEmail" class="Dx" onblur="func1()"/>
                <span class="Sa"></span>
                <input type="text" placeholder="请输入密码"class="Dx" name="comPwd" id = "Dx1" onblur="func2()" />
                <span class="Sb"></span>


                <button type="submit" class="Df"><span>注册</span></button>
            </form>
        </div>
    </div>

    <div class="slice"></div>

    <div id = "register_right">
        <div class="register_right_r1">
            <span>已有账号? 直接 <a href="${pageContext.request.contextPath}/internshipElves/comLogin.jsp">登录</a></span>
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
