var InterValObj; //timer变量，控制时间
var count=119;
var curCount;
var xhr=null;
//检查获得验证码按钮()
function getVerificationCode() {
    var clientTelephone = document.getElementsByClassName("registerTelAndPwd")[0].value;
    var phoneRegex = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/;

    if(clientTelephone.length==0){
        document.getElementsByClassName("registerTelMsg")[0].innerText="手机号码不能为空"
    }else{
        if(!(phoneRegex.test(clientTelephone))) {
            document.getElementsByClassName("registerTelMsg")[0].innerText = "手机号格式错误";
        }else{
            if(window.XMLHttpRequest){
                xhr = new XMLHttpRequest();
            }else{
                xhr = new ActiveXObject('Microsoft.XMLHTTP');
            }
            curCount=count;
            document.getElementsByClassName("getIdentifyingCode")[0].disabled = true;
            document.getElementsByClassName("getIdentifyingCode")[0].style.cursor="auto";
            document.getElementById("code").innerText=curCount+"s重新发送";
            InterValObj=window.setInterval(SetRemainTime,1000);
            var url = "/register/checkTelCode/?clientTelephone="+clientTelephone;
            xhr.open("GET",url,true);
            xhr.send();
        }
    }
}

//设置时间
function SetRemainTime() {
    if(curCount==1){
        window.clearInterval(InterValObj);
        document.getElementsByClassName("getIdentifyingCode")[0].removeAttribute("disabled");
        document.getElementById("code").innerText="发送验证码";
        document.getElementsByClassName("getIdentifyingCode")[0].style.cursor="pointer";
    }else {
        --curCount;
        document.getElementById("code").innerText=curCount+"s重新发送";
    }
}
