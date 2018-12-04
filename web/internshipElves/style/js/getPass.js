var InterValObj; //timer变量，控制时间
var count=119;
var curCount;
var xhr=null;
//检查获得验证码按钮()
function getPassVerificationCode() {
    document.getElementsByClassName("getPassTelMsg")[0].innerText= "";
    var clientTelephone = document.getElementById("pc_tel").value;
    var phoneRegex = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;

    if(clientTelephone.length==0){
        document.getElementsByClassName("getPassTelMsg")[0].innerText="手机号码不能为空";
        return false;
    }else{
        if(!(phoneRegex.test(clientTelephone))) {
            document.getElementsByClassName("getPassTelMsg")[0].innerText = "手机号格式错误";
            return false;
        }else{
            if(document.getElementsByClassName("send")[0].style.cursor != "auto"){
                if(window.XMLHttpRequest){
                    xhr = new XMLHttpRequest();
                }else{
                    xhr = new ActiveXObject('Microsoft.XMLHTTP');
                }
                curCount=count;
                document.getElementById("send1").setAttribute("disabled","true");
                document.getElementsByClassName("send")[0].style.cursor="auto";
                document.getElementsByClassName("send")[0].innerText=curCount+"s重新发送";
                InterValObj=window.setInterval(SetRemainTime,1000);
                var url = "/register/checkTelCode/?clientTelephone="+clientTelephone;
                xhr.open("GET",url,true);
                xhr.send();
            }
        }
    }
}

//设置时间
function SetRemainTime() {
    if(curCount==1){
        window.clearInterval(InterValObj);
        document.getElementById("send1").removeAttribute("disabled");
        document.getElementsByClassName("send")[0].innerText="发送验证码";
        document.getElementsByClassName("send")[0].style.cursor="pointer";
    }else {
        --curCount;
        document.getElementsByClassName("send")[0].innerText=curCount+"s重新发送";
    }
}

//验证手机号码
function getPassTelValidate() {
    document.getElementsByClassName("getPassTelMsg")[0].innerText = "";
    var clientTelephone = document.getElementById("pc_tel").value;
    var phoneRegex = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;
    if(clientTelephone.length == 0){
        document.getElementsByClassName("getPassTelMsg")[0].innerText = "手机号码不能为空"
        return false;
    }else if(!phoneRegex.test(clientTelephone)){
        document.getElementsByClassName("getPassTelMsg")[0].innerText = "手机号格式错误";
        return false;
    }
    return true;
}

/**
 * 判断短信验证码是否为空
 */
function isIdentifyingCodeEmpty() {
    document.getElementsByClassName("getPassVeri")[0].innerText = "";
    var stuIdentifyingCode = document.getElementById("veri-code").value;
    if(stuIdentifyingCode.length == 0){
        document.getElementsByClassName("getPassVeri")[0].innerText = "请输入短信验证码";
        return false;
    }
    return true;
}

/**
 * 跳转到reg.jsp
 */
function getPass() {
    if(getPassTelValidate() && isIdentifyingCodeEmpty()){
        if(window.XMLHttpRequest){
            xhr = new XMLHttpRequest();
        }else{
            xhr = new ActiveXObject('Microsoft.XMLHTTP');
        }

        var getPassTel = document.getElementById("pc_tel").value;
        var getPassVeri = document.getElementById("veri-code").value;
        var formData = "getPassTel="+getPassTel+"&getPassVeri="+getPassVeri;

        var url = "/stuLogin/getPass";
        xhr.open("POST",url,true);
        xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded; charset=UTF-8");
        xhr.onreadystatechange = getPassResponse;
        xhr.send(formData);
    }
}

/**
 * 请求密码响应
 */
function getPassResponse() {
    if(xhr.readyState == 4 && xhr.status == 200){
        var result = JSON.parse(xhr.responseText);
        if(result == "0"){
            window.location = "/internshipElves/reg.jsp";
        }else if(result == "1"){
            document.getElementsByClassName("getPassTelMsg")[0].innerText = "手机号码未注册"
        }else if(result == "2"){
            document.getElementsByClassName("getPassVeri")[0].innerText = "短信验证码输入错误";
        }
    }
}

