function func1() {
    var values = document.getElementsByClassName("Dx")[0].value;
    var reg = new RegExp("^[a-z0-9]+([._\\-]*[a-z0-9])*@([a-z0-9]+[-a-z0-9]*[a-z0-9]+.){1,63}[a-z0-9]+$");
    if(values==null || values==""){
        document.getElementsByClassName("Sa")[0].innerText = "请输入常用邮箱";
        return false;
    }else{
        if(!reg.test(values)){
            document.getElementsByClassName("Sa")[0].innerText = "请输入正确的邮箱";
            return false;
        }else{
            document.getElementsByClassName("Sa")[0].innerText = null;
            return true;
        }
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

function func4() {
    if(!func1()){
        func1();
    }

    if(!func2()){
        func2();
    }

    if(!document.getElementsByClassName("De")[0].checked){
        document.getElementsByClassName("Df")[0].innerText = "请接受elfshoe协议"
    }

    if(func1() && func2() && document.getElementsByClassName("De")[0].checked ){
        document.getElementsByClassName("Df")[0].innerText = "提交成功"
    }
}