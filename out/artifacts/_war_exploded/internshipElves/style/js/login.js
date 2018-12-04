/**
 * 验证登录手机号码
 * @returns {boolean}
 */
function loginTelAndPwd() {
    document.getElementsByClassName("loginMessage")[0].innerText="";
    var values = document.getElementsByClassName("loginInfo")[0].value;
    if(values==null || values==""){
        document.getElementsByClassName("loginMsg")[0].innerText = "请输入手机号或邮箱";
        return false;
    }else{
        document.getElementsByClassName("loginMsg")[0].innerText = null;
        return true;
    }
}

/**
 * 验证登录密码
 * @returns {boolean}
 */
function loginPassword(){
    document.getElementsByClassName("loginMessage")[0].innerText="";
    var values = document.getElementById("loginPwd").value;
    var reg1 = new RegExp(/^[0-9A-Za-z]+$/);
    var reg = new RegExp(/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/);
    if (values==null || values=="") {
        document.getElementsByClassName("loginPwdMsg")[0].innerText = "密码不能为空";
        return false;
    }else if(values.length < 8){
        document.getElementsByClassName("loginPwdMsg")[0].innerText = "密码长度不能小于8位";
        return false;
    }else if (!reg1.test(values)) {
        document.getElementsByClassName("loginPwdMsg")[0].innerText = "密码必须由字母和数字组成";
        return false;
    }else if (reg.test(values)) {
        document.getElementsByClassName("loginPwdMsg")[0].innerText = "";
        return true;
    } else {
        document.getElementsByClassName("loginPwdMsg")[0].innerText = "密码必须由字母和数字混合组成";
        return false;
    }
}

/**
 * 验证图片验证码
 * @returns {boolean}
 */
function loginImg(){
    document.getElementsByClassName("loginMessage")[0].innerText = "";
    var values = document.getElementsByClassName("loginImgCode")[0].value;
    if(values == null || values == ""){
        document.getElementsByClassName("loginImgMsg")[0].innerText="请输入图片验证码";
        return false;
    }else{
        document.getElementsByClassName("loginImgMsg")[0].innerText = null;
        return true;
    }
}

/**
 * 验证登录手机号码，登录密码，登录验证码
 * @returns {boolean}
 */
function loginAll() {
    document.getElementsByClassName("loginMessage")[0].innerText = "";
    if(!loginTelAndPwd()){
        loginTelAndPwd();
    }
    if(!loginPassword()){
        loginPassword();
    }
    if(!loginImg()){
        loginImg();
    }
    if(loginTelAndPwd() &&loginPassword() && loginImg()){
        return true
    }else{
        return false;
    }
}

/**
 * 登录
 */
var xhr = null;
function login(){
    if(loginAll()){
        if(window.XMLHttpRequest){
            xhr = new XMLHttpRequest();
        }else{
            xhr = new ActiveXObject('Microsoft.XMLHTTP');
        }

        var stuPhoneMail = document.getElementById("loginTelAndEmail").value;
        var stuPwd = document.getElementById("loginPwd").value;
        var imgCode = document.getElementsByClassName("loginImgCode")[0].value;
        var formData = "stuPhoneMail="+stuPhoneMail+"&stuPwd="+stuPwd+"&imgCode="+imgCode;
        var url = "/stuLogin/login";
        xhr.open("POST",url,true);
        xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded; charset=UTF-8");
        xhr.onreadystatechange = loginResponse;
        xhr.send(formData);
    }
}

/**
 * 登录响应操作
 * window.location 对象用于获得当前页面的地址 (URL)，并把浏览器重定向到新的页面
 */
function loginResponse() {
    if(xhr.readyState == 4 && xhr.status == 200){
        document.getElementById("loginMsg").innerText = "";
        var result = JSON.parse(xhr.responseText);
        if(result == "0")
            document.getElementById("loginMsg").innerText = "手机号和邮箱的格式不正确";
        if(result == "1")
            document.getElementById("loginMsg").innerText = "表示用户验证码错误";
        if(result == "2")
            document.getElementById("loginMsg").innerText = "表示用户名和密码错误";
        if(result == "3")
            window.location = "/internshipElves/index.jsp";
    }
}
// function xx(){
//     if(xhr.readyState ==4 && xhr.status ==200){
//         alert( xhr.responseText);
//         console.log(xhr.responseText);
//         var stu =JSON.parse( xhr.responseText);
//         alert(stu.stuId + "," + stu.stuName);
//     }
//
// }














