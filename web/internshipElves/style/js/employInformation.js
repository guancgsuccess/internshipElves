/**
 * Created by asus on 2018/10/10.
 */
function checksix(){
    var six = document.getElementById("six");
    if(six.innerText=="投个简历"){
        six.innerText="已投递";
        six.style.backgroundColor="grey";
    }else{
        six.innerText="投个简历";
        six.style.backgroundColor="#6aa2e4";
    }

}

function checkeight(){

    var six = document.getElementById("eight");
    if(six.innerText=="收藏"){
        six.innerText="已收藏";
        six.style.backgroundColor="grey";
    }else{
        six.innerText="收藏";
        six.style.backgroundColor="#6aa2e4";
    }
//   if(six.style.backgroundColor="#6aa2e4"){
//        six.innerText="已收藏";
//        six.style.backgroundColor="grey";
//    }
//    else{
//        six.innerText="收藏";
//        six.style.backgroundColor="#6aa2e4";
//}


}
