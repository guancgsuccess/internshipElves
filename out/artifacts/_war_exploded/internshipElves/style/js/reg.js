/**
 * 判读输入密码的格式是否正确
 */
function regPwdMsg() {
    document.getElementsByClassName("pwdMsg")[0].innerText = "";
    var values = document.getElementById("passport").value;
    var reg1 = new RegExp(/^[0-9A-Za-z]+$/);
    var reg = new RegExp(/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/);
    if (values==null || values=="") {
        document.getElementsByClassName("pwdMsg")[0].innerText = "密码不能为空";
        return false;
    }else if(values.length < 8){
        document.getElementsByClassName("pwdMsg")[0].innerText = "密码长度不能小于8位";
        return false;
    }else if (!reg1.test(values)) {
        document.getElementsByClassName("pwdMsg")[0].innerText = "密码必须由字母和数字组成";
        return false;
    }else if (reg.test(values)) {
        document.getElementsByClassName("pwdMsg")[0].innerText = "";
        return true;
    } else {
        document.getElementsByClassName("pwdMsg")[0].innerText = "密码必须由字母和数字混合组成";
        return false;
    }
}

/**
 * 检查确认密码
 * @returns {boolean}
 */
function regConfirmPwdMsg() {
    document.getElementsByClassName("confirmPwdMsg")[0].innerText = "";
    var values = document.getElementById("passport2").value;
    var reg1 = new RegExp(/^[0-9A-Za-z]+$/);
    var reg = new RegExp(/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/);
    if (values==null || values=="") {
        document.getElementsByClassName("confirmPwdMsg")[0].innerText = "密码不能为空";
        return false;
    }else if(values.length < 8){
        document.getElementsByClassName("confirmPwdMsg")[0].innerText = "密码长度不能小于8位";
        return false;
    }else if (!reg1.test(values)) {
        document.getElementsByClassName("confirmPwdMsg")[0].innerText = "密码必须由字母和数字组成";
        return false;
    }else if (reg.test(values)) {
        document.getElementsByClassName("confirmPwdMsg")[0].innerText = "";
        return true;
    } else {
        document.getElementsByClassName("confirmPwdMsg")[0].innerText = "密码必须由字母和数字混合组成";
        return false;
    }
    if(values != document.getElementById("passport").value){
        document.getElementsByClassName("confirmPwdMsg")[0].innerText = "输入密码与确认密码不同";
        return false
    }else {
        return true;
    }
}

/**
 * 检查是否同意《实习精灵协议》
 */
function checkTip() {
    document.getElementsByClassName("pwdMsg")[0].innerText = "";
    if(document.getElementsByName("agree")[0].value == 1){
        return true;
    }else {
        document.getElementsByClassName("pwdMsg")[0].innerText = "请阅读并接受《实习精灵协议说明》";
        return false;
    }
}

/**
 * 重置密码提交
 */
var xhr = null;
function reg() {
    if (regPwdMsg() && regConfirmPwdMsg() && checkTip()) {
        if (window.XMLHttpRequest) {
            xhr = new XMLHttpRequest();
        } else {
            xhr = new ActiveXObject('Microsoft.XMLHTTP');
        }

        var passport = document.getElementById("passport").value;
        var url = "/stuLogin/reg";
        var formData = "passport="+passport;

        xhr.open("POST", url, true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded; charset=UTF-8");
        xhr.onreadystatechange = isRegSuccess;
        xhr.send(formData);
    }
}

/**
 * 判断是否重置成功
 */
function isRegSuccess() {
    alert(xhr.readyState+" "+xhr.status+" "+xhr.responseText);
    document.getElementsByClassName("pwdMsg")[0].innerText = "";
    if(xhr.readyState == 4 && xhr.status == 200){
        var results = JSON.parse(xhr.responseText);
        alert("results="+results);
        if(results == "2"){
            window.location = "/internshipElves/login.jsp";
        }else if(results == "1"){
            document.getElementsByClassName("pwdMsg")[0].innerText = "重置失败，请再次重置";
            return false;
        }else{
            document.getElementsByClassName("pwdMsg")[0].innerText = "没有执行上一步的手机号和短信验证码的验证";
            return false;
        }
    }
}