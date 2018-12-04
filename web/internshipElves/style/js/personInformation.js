/**
 * Created by asus on 2018/10/9.
 */
function checkname(){
    var name = document.getElementById("textName").value;
    if(name ==""){
        document.getElementById("spanName").innerText="姓名不能为空";
    }
}

function checkname1(){
    var name = document.getElementById("textName1").value;
    if(name ==""){
        document.getElementById("spanName1").innerText="电话号码不能为空";
    }
}
function checkemail(){
    var name = document.getElementById("email").value;
    if(name ==""){
        document.getElementById("spanEmail").innerText="邮箱不能为空";
    }
}


function checkschoolname(){
    var name = document.getElementById("name").value;
    if(name ==""){
        document.getElementById("span1").innerText="学校名称不能为空";
    }
}

function checkschool(){
    var name = document.getElementById("school").value;
    if(name ==""){
        document.getElementById("span2").innerText="学位学历不能为空";
    }
}


function checkprofessional(){
    var name = document.getElementById("professional").value;
    if(name ==""){
        document.getElementById("span3").innerText="所学专业不能为空";
    }
}


function checkcompanyname(){
    var name = document.getElementById("companyName").value;
    if(name ==""){
        document.getElementById("spancompanyname").innerText="公司名称不能为空";
    }
}

// function checkwork(){
//     var name = document.getElementById("work").value;
//     if(name ==""){
//         document.getElementById("spanwork").innerText="所属行业不能为空";
//     }
// }

function checkjob(){
    var name = document.getElementById("job").value;
    if(name ==""){
        document.getElementById("spanjob").innerText="职位名称不能为空";
    }
}
function checkcategory(){
    var name = document.getElementById("category").value;
    if(name ==""){
        document.getElementById("spancategory").innerText="职位类别不能为空";
    }
}

function  checkplace(){
    var name = document.getElementById("place").value;
    if(name ==""){
        document.getElementById("spanplace").innerText="期望地点不能为空";
    }
}

function  checkindustry(){
    var name = document.getElementById("indutry").value;
    if(name ==""){
        document.getElementById("spanindustry").innerText="期望行业不能为空";
    }
}


function  checkcategory1(){
    var name = document.getElementById("category1").value;
    if(name ==""){
        document.getElementById("spancategory1").innerText="期望职类不能为空";
    }
}


function  checksalary(){
    var name = document.getElementById("salary").value;
    if(name ==""){
        document.getElementById("span4").innerText="期望月薪不能为空";
    }
}

function pointchicken(){
    document.getElementById("one").style.display="none";
    document.getElementById("nine").style.display="block";

}



function pointchicken3(){
    document.getElementById("nine").style.display="none";
    document.getElementById("six").style.display="block";

}
function pointchicken4(){
    document.getElementById("nine").style.display="none";
    document.getElementById("one").style.display="block";

}

function pointchicken5(){
   document.getElementById("six").style.display="none";
   document.getElementById("nine").style.display="block";

}

