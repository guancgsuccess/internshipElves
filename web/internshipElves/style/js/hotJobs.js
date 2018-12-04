/**
 * 热门职位
 */
var xhr = null;
function hotJobs() {
    if(window.XMLHttpRequest){
        xhr = new XMLHttpRequest();
    }else{
        xhr = new ActiveXObject('Microsoft.XMLHTTP');
    }
    var url = "/homePage/hotJobs";
    xhr.open("GET",url,true);
    xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
    xhr.onreadystatechange = hotJobsResponse;
    xhr.send();
}

/**
 * 处理时间
 */
function strFormat(date1){
    var month=0;
    var day=0;
    var date=new Date(date1);
    if((date.getMonth()+1)>=10)
    {
        month=date.getMonth()+1;
    }else
    {
        month="0"+(date.getMonth()+1);
    }
    if(date.getDate()>=10)
    {
        day=date.getDate();
    }else {
        day="0"+date.getDate();
    }
    var setDate=date.getFullYear()+"-"+month+"-"+day;
    return setDate;

}


/**
 * 接收热门职位请求的响应
 * "0"表示成功，"1"表示请求失败
 */
function hotJobsResponse() {
   if(xhr.readyState == 4 && xhr.status == 200) {
       var results = JSON.parse(xhr.responseText);
       var hotJob1 = document.getElementById("hotPos");
       hotJob1.innerHTML = "";
       for (var i = 0; i < results.length; i++) {
           hotJob1.innerHTML += '<li class="clearfix"><div class="hot_pos_l" id="hot_pos_l">' +
               '<div class="mb10">' +
               '<a href="h/jobs/148393.html" target="_blank">' + results[i].comJobName + '</a>'+
               '&nbsp;' +
               '<span class="c9">' + "[" + results[i].comCity + "]" + '</span>' +
               '</div><span><em class="c7">' + "月薪：" + '</em>' + results[i].comSalaryLow + "k-" + results[i].comSalaryHigh + "k" + '</span>' +
               ' <span><em class="c7">' + "经验：" + '</em>' + results[i].comJobExp + '</span>' +
               '<span><em class="c7">' + "最低学历：" + '</em>' + results[i].comJobRequir + '</span>' +
               '</br><span><em class="c7">' + "职位诱惑：" + '</em>' + results[i].comJobTemp + '</span>' +
               '<br><span>' + strFormat(results[i].comJobTime) + '</span><a  class="wb">' + "分享到微博" + '</a>' + '</div>' + '<div class="hot_pos_r" id="hot_pos_r">' +
               '<div class="mb10 recompany"><a href="h/c/1537.html" target="_blank">' + results[i].comName + '</a>' + '</div>' +
               '<span><em class="c7">' + "领域：" + '</em>' + results[i].comField + '</span>' +
               '<span><em class="c7">' + "创始人：" + '</em>' + results[i].comFounderName + '</span>' + '</br>' +
               '<span><em class="c7">' + "阶段：" + '</em> ' + results[i].comDeplo + '</span>' +
               '<span><em class="c7">' + "规模：" + '</em>' + results[i].comScale + '</span>' +
               '<ul class="companyTags reset">' +
               '<li>' + "五险一金" + '</li>' +
               '<li>' + "带薪年假" + '</li>' +
               '<li>' + "午餐补助" + '</li>' +
               '</ul>' +
               '</div>' +
               '</li>';
       }
       hotJob1.innerHTML += '<a href="/internshipElves/list.jsp" class="btn fr" target="_blank">'+"查看更多"+'</a>'
   }
}