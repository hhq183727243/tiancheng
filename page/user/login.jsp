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
    <%@include file="../common/link.jsp"%>

    <link rel="stylesheet" href="css/user.css">
</head>
<body>
    <header>
        <div class="tc f16 title">登录</div>
    </header>
    <div style="height: 42px;"></div>
    
    <section>
        <form class="login-form">
            <div class="field__item">
                <i class="icon-user"></i> 
                <input type="text" placeholder="手机号码">
            </div>

            <div class="field__item">
                <i class="icon-user"></i> 
                <input type="password" placeholder="密码 (6-18位字符)">
            </div>

            <p class="fix mt20">
                <a class="l gm" href="page/user/register.jsp">立即注册</a>
                <a class="r g9" href="page/user/findpsd.jsp">忘记密码</a>
            </p>

            <button id="loginBtn" class="weui-btn bgm mt30" type="button">登录</button>
        </form>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/swiper-3.4.2.min.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){

    $('#loginBtn').click(function(){
        weui.topTips('请输入手机号码')
    });

})
</script>
</html>