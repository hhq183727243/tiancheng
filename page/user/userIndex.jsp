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
</head>
<body>
    <section id="App">
        <div class="user-top weui-flex aic">
            <div><img class="portrait" src="image/test/p1.png"/></div>
            <div class="ml20 wh f16">刘德华</div>
            <div class="weui-flex__item tr">
                <a class="icon-set"><img width="26" src="image/icon/set.png" alt=""></a>
            </div>
        </div>
        <div class="weui-flex pt10 pb10 bottom-line bgwh tc">
            <div class="weui-flex__item bre">
                <p>0.00</p>
                <p class="mt5">金币余额</p>
            </div>
            <div class="weui-flex__item bre">
                <p>0.00</p>
                <p class="mt5">可提现余额</p>
            </div>
            <div class="weui-flex__item">
                <p>0.00</p>
                <p class="mt5">确认中余额</p>
            </div>
        </div>

        <div class="weui-cells">
            <a class="weui-cell weui-cell_access" href="javascript:;">
                <div class="weui-cell__hd"><img src="image/icon/order.png" alt=""></div>
                <div class="weui-cell__bd">我的订单</div>
                <div class="weui-cell__ft">查看全部订单</div>
            </a>
            <div class="weui-flex pt10 pb10 tc top-line">
                <a class="weui-flex__item">
                    <p><img height="24" src="image/icon/kaijiang.png" alt=""></p>
                    <p class="mt5">待开奖</p>
                </a>
                <a class="weui-flex__item">
                    <p><img height="24" src="image/icon/liwu.png" alt=""></p>
                    <p class="mt5">待领奖</p>
                </a>
                <a class="weui-flex__item">
                    <p><img height="24" src="image/icon/pingjia.png" alt=""></p>
                    <p class="mt5">待评价</p>
                </a>
                <a class="weui-flex__item">
                    <p><img height="24" src="image/icon/wancheng.png" alt=""></p>
                    <p class="mt5">已完成</p>
                </a>
                <a class="weui-flex__item">
                    <p><img height="24" src="image/icon/renwu.png" alt=""></p>
                    <p class="mt5">追评任务</p>
                </a>
            </div>
        </div>

        <div class="weui-cells">
            <a class="weui-cell weui-cell_access" href="javascript:;">
                <div class="weui-cell__hd"><img src="image/icon/order.png" alt=""></div>
                <div class="weui-cell__bd">我的订单</div>
                <div class="weui-cell__ft">查看全部订单</div>
            </a>
        </div>
    </section>

    <%@include file="../common/mianNav.jsp"%>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
   

})
</script>
</html>