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
        .weui-cell__hd img{ width: 1.7rem;height: 1.7rem; }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <p><img width="100%" src="image/wealth/get-coin-bg.png" alt=""></p>

        <div class="weui-cells">
            <a class="weui-cell weui-cell_access" href="page/wealth/newTask.jsp">
                <div class="weui-cell__hd"><img src="image/wealth/xinshou.png" alt=""></div>
                <div class="weui-cell__bd">
                    <h4>新手任务</h4>
                    <p class="g9">完成任务, 增加中奖率, 还能获得金币哟</p>
                </div>
                <div class="weui-cell__ft"></div>
            </a>
            <a class="weui-cell weui-cell_access" href="page/wealth/dailyTast.jsp">
                <div class="weui-cell__hd"><img src="image/wealth/meiri.png" alt=""></div>
                <div class="weui-cell__bd">
                    <h4>每日任务</h4>
                    <p class="g9">完成所有任务, 获得最高中奖率哦</p>
                </div>
                <div class="weui-cell__ft"></div>
            </a>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '金币赚取';

    new Vue({
        el: '#App',
        data: {

        }
    });

})
</script>
</html>