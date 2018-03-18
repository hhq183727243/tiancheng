<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>hello world</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
    
    <link rel="stylesheet" href="css/lib/swiper-3.4.2.min.css" type="text/css">
    <%@include file="../common/link.jsp"%>
    <style>
       .challenge{
            padding-bottom: 30px;
            background: -webkit-linear-gradient(top,#103951,#4faea8) no-repeat;
       }

       .challenge .portrait{ 
            width: 30px;
            height: 30px; 
            margin-left: -7px;
        }
        .challenge .yaoqing{
            height: 30px;
            line-height: 30px;
            padding-left: 20px;
            padding-right: 10px;
            border-top-left-radius: 15px;
            border-bottom-left-radius: 15px;
            background-color: #fcc103;
        }
        .challenge .zk{
            height: 30px;
            line-height: 30px;
            padding-right: 20px;
            padding-left: 10px;
            border-top-right-radius: 15px;
            border-bottom-right-radius: 15px;
            background-color: #fcc103;
        }
        .star{ 
            position: relative;
            z-index: 1;
            margin: -10px auto 0;
            height: 18px;
            line-height: 17px;
            border-radius: 9px;
            color: #fff;
            width: 50px;
            padding: 0 5px;
        }
        .bgc1{ background-color: #ff2f7d; }
        .bgc2{ background-color: #006ea2; }
        .bgc3{ background-color: #007319; }
    </style>
</head>
<body> 
    <header class="bottom-line">
        <div class="weui-flex aic container">
            <div class="w50"></div>
            <div class="weui-flex__item tc f16 title">早起挑战</div>
            <div class="mr10"><a href="page/challenge/challengeRecord.jsp">我的战绩</a></div>
        </div>
    </header>
    <div style="height: 42px;"></div>

    <section id="App">
        <div class="challenge tc wh pt30">
            <p class="mt20">明早准时打卡可瓜分金额（元）</p>
            <p class="f40">113,300</p>
            <p class="mt20 w180 auto">
                <a href="page/challenge/challengePay.jsp" class="weui-btn weui-btn_warn">我要挑战</a>
            </p>
            <div class="mt20">
                <img class="portrait" src="image/test/user1.jpg">
                <img class="portrait" src="image/test/user1.jpg">
                <img class="portrait" src="image/test/user1.jpg">
                <img class="portrait" src="image/test/user1.jpg">
                <span class="dib lh32">...，<span class="gm">122,333</span>人参与</span>
            </div>
            <div class="fix mt20">
                <a class="l zk">今日战况</a>
                <a class="r yaoqing">邀请好友</a>
            </div>
            <div class="mt10">
                <span>成功<span class="gm">3,000</span></span>
                <span>失败 567</span>
            </div>
        </div>
        
        <div class="weui-flex mt20 tc">
            <div class="weui-flex__item">
                <img class="portrait" src="image/test/user1.jpg">
                <p class="star bgc1">手气之星</p>
                <p class="mt5">刘*华</p>
                <p class="gm mt5">344.09元</p>
            </div>
            <div class="weui-flex__item">
                <img class="portrait" src="image/test/user1.jpg">
                <p class="star bgc2">早起之星</p>
                <p class="mt5">刘*华</p>
                <p class="gm mt5">06:00:00打卡</p>
            </div>
            <div class="weui-flex__item">
                <img class="portrait" src="image/test/user1.jpg">
                <p class="star bgc3">毅力之星</p>
                <p class="mt5">刘*华</p>
                <p class="gm mt5">连续123次</p>
            </div>
        </div>
    </section>

    <%@include file="../common/mianNav.jsp"%>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    new Vue({
        el: '#App',
        data: {

        },
        computed: {

        },
        methods: {
            
        }
    });

})
</script>
</html>