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
        
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="coin-bg">
            <p class="codes">
                <img class="vt mr5" height="28" src="image/icon/coin.png">
                <span class="gm f24">100</span>
            </p>
            <div class="weui-flex mt20">
                <div class="weui-flex__item mr10">
                    <a class="weui-btn bgm" href="page/wealth/codexChange.jsp">金币兑换</a>
                </div>
                <div class="weui-flex__item ml10">
                    <a class="weui-btn bgwh g3" href="page/wealth/getCode.jsp">赚取金币</a>
                </div>
            </div>
        </div>

        <div class="weui-cells__title">金币明细</div>
        <div class="weui-cells">
            <div class="weui-cell">
                <div class="weui-cell__bd">
                    <p>添加地址赠送金币</p>
                    <p class="g9 mt5">2018-3-17 18:13:12</p>
                </div>
                <div class="weui-cell__ft"><span class="gm f16">+ 5</span></div>
            </div>
            <div class="weui-cell">
                <div class="weui-cell__bd">
                    <p>添加地址赠送金币</p>
                    <p class="g9 mt5">2018-3-17 18:13:12</p>
                </div>
                <div class="weui-cell__ft"><span class="gm f16">+ 5</span></div>
            </div>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '金币明细';

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