function func1() {
    var values = document.getElementsByClassName("Dx")[0].value;
    if(values==null || values==""){
        document.getElementsByClassName("Sa")[0].innerText = "请输入手机号或邮箱";
        return false;
    }else{
        document.getElementsByClassName("Sa")[0].innerText = null;
        return true;
    }
}

function func2(){
    var values = document.getElementById("Dx1").value;
    var reg1 = new RegExp(/^[0-9A-Za-z]+$/);
    var reg = new RegExp(/[A-Za-z].*[0-9]|[0-9].*[A-Za-z]/);
    if (values==null || values=="") {
        document.getElementsByClassName("Sb")[0].innerText = "密码不能为空";
        return false;
    }else if(values.length < 8){
        document.getElementsByClassName("Sb")[0].innerText = "密码长度不能小于8位";
        return false;
    }else if (!reg1.test(values)) {
        document.getElementsByClassName("Sb")[0].innerText = "密码必须由字母和数字组成";
        return false;
    }else if (reg.test(values)) {
        document.getElementsByClassName("Sb")[0].innerText = null;
        return true;
    } else {
        document.getElementsByClassName("Sb")[0].innerText = "密码必须由字母和数字混合组成";
        return false;
    }
}