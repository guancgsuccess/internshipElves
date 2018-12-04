/**
 * 新职位
 */
var xhr = null;
function newJobs() {
    if(window.XMLHttpRequest){
        xhr = new XMLHttpRequest();
    }else{
        xhr = new ActiveXObject('Microsoft.XMLHTTP');
    }

    var url = "/homePage/newJobs";
    xhr.open("GET",url,true);
    xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
    xhr.onreadystatechange = newJobsResponse;
    xhr.send();
}

function newJobsResponse() {
    if(xhr.readyState == 4 && xhr.status == 200){
        var results = JSON.parse(xhr.responseText);
        var newJob = document.getElementById("newJob");
        newJob.innerHTML = "";
        for(var j = 0; j < results.length; j++){
            newJob.innerHTML +=  '<li class="clearfix"><div class="hot_pos_l" id="hot_pos_l">' +
                '<div class="mb10">' +
                '<a href="h/jobs/149389.html" target="_blank">' + results[j].comJobName + '</a>'+
                '&nbsp;' +
                '<span class="c9">' + "[" + results[j].comCity + "]" + '</span>' +
                '</div><span><em class="c7">' + "月薪：" + '</em>' + results[j].comSalaryLow + "k-" + results[j].comSalaryHigh + "k" + '</span>' +
                ' <span><em class="c7">' + "经验：" + '</em>' + results[j].comJobExp + '</span>' +
                '<span><em class="c7">' + "最低学历：" + '</em>' + results[j].comJobRequir + '</span>' +
                '</br><span><em class="c7">' + "职位诱惑：" + '</em>' + results[j].comJobTemp + '</span>' +
                '<br><span>' + strFormat(results[j].comJobTime) + '</span><a  class="wb">' + "分享到微博" + '</a>' + '</div>' + '<div class="hot_pos_r">' +
                '<div class="mb10"><a href="h/c/8250.html" target="_blank">' + results[j].comName + '</a>' + '</div>' +
                '<span><em class="c7">' + "领域：" + '</em>' + results[j].comField + '</span>' +
                '<span><em class="c7">' + "创始人：" + '</em>' + results[j].comFounderName + '</span>' + '</br>' +
                '<span><em class="c7">' + "阶段：" + '</em> ' + results[j].comDeplo + '</span>' +
                '<span><em class="c7">' + "规模：" + '</em>' + results[j].comScale + '</span>' +
                '<ul class="companyTags reset">' +
                '<li>' + "五险一金" + '</li>' +
                '<li>' + "带薪年假" + '</li>' +
                '<li>' + "午餐补助" + '</li>' +
                '</ul>' +
                '</div>' +
                '</li>';
        }
        newJob.innerHTML += '<a href="/internshipElves/list.jsp" class="btn fr" target="_blank">'+"查看更多"+'</a>'
    }
}