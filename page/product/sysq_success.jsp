
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
<body class="bgwh">
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="weui-msg">
            <div class="weui-msg__icon-area"><i class="weui-icon-success weui-icon_msg"></i></div>
            <div class="weui-msg__text-area">
                <h2 class="weui-msg__title">您已成功提交申请 待开奖</h2>
                <p class="weui-msg__desc">预计在 <span class="gm">2018-03-21 17:00</span> 抽取中奖资格</p>
                <p class="weui-msg__desc">请务必关注微信通知</p>
            </div>
            <div class="weui-msg__opr-area">
                <p class="weui-btn-area">
                    <a href="page/index.jsp" class="weui-btn bgm">申请越多，中奖率越高</a>
                </p>
            </div>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '提交成功';

    new Vue({
        el: '#App',
        data: {
        	
        },
        methods: {
        	
        }
    });

})
</script>
</html>