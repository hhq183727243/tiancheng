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
    <title>甜橙试用</title>
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
        <div class="p15 bgwh"> 
            <p class="g9">可兑换金额</p>
            <div class="weui-flex mt5">
                <div class="weui-flex__item">
                    <span class="gm f20">100.00</span>
                </div>
                <div class="weui-flex__item ml10 tr">
                    <a class="weui-btn weui-btn_mini bgm" href="page/wealth/tx.jsp">兑换</a>
                </div>
            </div>
        </div>

        <div class="weui-cells__title">金币明细</div>
        <div class="weui-cells weui-cell_access">
            <a class="weui-cell" href="page/wealth/txjl_list.jsp">
                <div class="weui-cell__bd">兑换记录</div>
                <div class="weui-cell__ft"></div>
            </a>
        </div>

        <div class="p15 bgwh mt15"> 
            <p class="tc">----------现场直播----------</p>

            <div class="p10 bgf5 mt10">   
                <div class="weui-flex mt5" v-for='item in 5'>
                    <span class="weui-flex__item">刘**</span>
                    <span class="weui-flex__item tc">兑换成功</span>
                    <span class="weui-flex__item tr gm">80.00元</span>
                </div>
            </div>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '兑换余额';

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