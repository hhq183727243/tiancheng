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
        .weui-cell__hd img{ width: 1.7rem;height: 1.7rem; }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="weui-cells__title">如不小心关闭页面可直接在我的试用-新手任务打开本页面~</div>
        <div class="weui-cells task-list">
            <div class="weui-cell" href="page/user/bangding.jsp">
                <div class="weui-cell__hd"><img src="image/wealth/bangding.png" alt=""></div>
                <div class="weui-cell__bd weui-flex">
                    <h4 class="weui-flex__item">绑定手机号</h4>
                    <div class="w70 gm">+5金币</div>
                </div>
                <div class="weui-cell__ft"><a class="btn" href="page/user/userInfo.jsp">立即绑定</a></div>
            </div>
            
            <div class="weui-cell" href="page/user/bangding.jsp">
                <div class="weui-cell__hd"><img src="image/wealth/dizhi.png" alt=""></div>
                <div class="weui-cell__bd weui-flex">
                    <h4 class="weui-flex__item">填写收货地址</h4>
                    <div class="w70 gm">+5金币</div>
                </div>
                <div class="weui-cell__ft"><a class="btn" href="page/user/address.jsp">立即填写</a></div>
            </div>
            <div class="weui-cell">
                <div class="weui-cell__hd"><img src="image/wealth/taobao.png" alt=""></div>
                <div class="weui-cell__bd weui-flex">
                    <h4 class="weui-flex__item">绑定淘宝账号</h4>
                    <div class="w70 gm">+10金币</div>
                </div>
                <div class="weui-cell__ft"><a class="btn" href="page/wealth/bindTaobao.jsp">立即绑定</a></div>
            </div>

            <div class="weui-cell">
                <div class="weui-cell__hd"><img src="image/wealth/bangding.png" alt=""></div>
                <div class="weui-cell__bd weui-flex">
                    <h4 class="weui-flex__item">完成一次申请</h4>
                    <div class="w70 gm">+5金币</div>
                </div>
                <div class="weui-cell__ft"><a><img width="50" src="image/wealth/yilingqu.png" alt=""></a></div>
            </div>

            <div class="weui-cell" href="page/user/bangding.jsp">
                <div class="weui-cell__hd"><img src="image/wealth/taoqizhi.png" alt=""></div>
                <div class="weui-cell__bd">
                    <h4>填写淘气值</h4>
                    <div>填写淘气值，提升中奖几率</div>
                </div>
                <div class="weui-cell__ft"><a class="btn">立即填写</a></div>
            </div>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '新手任务';

    new Vue({
        el: '#App',
        data: {

        }
    });

})
</script>
</html>