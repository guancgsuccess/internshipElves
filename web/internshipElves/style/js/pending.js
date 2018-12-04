/**
 * 待处理简历页面
 */
var xhr = null;
function pending() {
    if(window.XMLHttpRequest){
        xhr = new XMLHttpRequest();
    }else {
        xhr = new ActiveXObject('Microsoft.XMLHTTP');
    }

    var url = "/comResume/pending";

    xhr.open("GET",url,true);
    xhr.setRequestHeader("Content-Type", "application/json;charset=utf-8");
    xhr.onreadystatechange = pendingResponse;
    xhr.send();
}

/**
 *  处理简历页面的响应
 */
function pendingResponse() {
    if(xhr.readyState == 4 && xhr.status == 200){
        var results = JSON.parse(xhr.responseText);
        var pending = document.getElementsByClassName("reset resumeLists")[0];
        pending.innerHTML = "";
        if(results != null){
            for(var i = 0; i < results.length; i++){
                pending.innerHTML += '<li data-id="1686182" class="onlineResume"><label class="checkbox"><input type="checkbox">' +
                    '<i></i>' + '</label>' +
                    '<div class="resumeShow">' +
                    '<a title="预览在线简历" target="_blank" class="resumeImg" href="resumeView.html?deliverId=1686182">'+
                    '<img src="/images/default_headpic.png">' +
                    '</a>' +
                    '<div class="resumeIntro">' +
                    '<h3 class="unread">' +
                    '<a target="_blank" title="预览简历" href="resumeView.html?deliverId=1686182">' +results[i].stuName+"的简历" +
                    '</a>' +
                    '<em></em>' +
                    '</h3>' +
                    '<span class="fr">'+"投递时间："+  +'</span>' +
                    '<div>' +
                    'jason / 男 / 大专 / 3年 / 广州 \t\t\t\t\t\t\t\t' +
                    '<br>' +
                    '高级产品经理 · 上海辉硕科技有限公司 | 本科 · 北京大学' +
                    '</div>' +
                    '<div class="jdpublisher">' +
                    '<span>' +
                    "应聘职位："+'<a title="随便写" target="_blank" href="http://www.lagou.com/jobs/149594.html">'+"随便写"+'</a>' +
                    '</span>' +
                    '</div>' +
                    '</div>' +
                    '<div class="links">' +
                    '<a data-deliverid="1686182" data-name="jason" data-positionid="149594" data-email="888888888@qq.com" class="resume_notice" href="javascript:void(0)">'+"通知面试"+'</a>' +
                    '<a data-deliverid="1686182" class="resume_refuse" href="javascript:void(0)">不合适</a>' +
                    '</a>' +
                    '</div>' +
                    '</div>' +
                    '<div class="contactInfo">' +
                    '<span class="c9">电话：</span>18650216666   &nbsp;&nbsp;&nbsp;' +
                    '<span class="c9">邮箱：</span><a href="mailto:888888888@qq.com">888888888@qq.com</a>' +
                    '</div>' +
                    '</li>'
        }
    }
}