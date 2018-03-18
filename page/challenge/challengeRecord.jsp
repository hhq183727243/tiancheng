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
    </style>
</head>
<body> 
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="challenge tc wh pt30">
            <div class="weui-flex">
                <div class="weui-flex__item">
                    <p>1.00</p>
                    <p class="mt5">投入(元)</p>
                </div>
                <div class="weui-flex__item">
                    <p>1.00</p>
                    <p class="mt5">收入(元)</p>
                </div>
                <div class="weui-flex__item">
                    <p>190</p>
                    <p class="mt5">参与(天)</p>
                </div>
                <div class="weui-flex__item">
                    <p>14</p>
                    <p class="mt5">成功(天)</p>
                </div>
            </div>
        </div>

        <div class="weui-cells__title">每日明细</div>
        <div class="weui-cells">
            <div class="weui-cell">
                <div class="weui-cell__bd">01-15</div>
                <div class="weui-cell__ft">
                    <span>收入1.09</span>
                    <span class="gm">挑战成功</span>
                </div>
            </div>

            <div class="weui-cell">
                <div class="weui-cell__bd">01-15</div>
                <div class="weui-cell__ft">
                    <span>投入1.00</span>
                    <span class="g9">早起失败</span>
                </div>
            </div>
        </div>
    </section>

    <%@include file="../common/mianNav.jsp"%>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '我的战绩';

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