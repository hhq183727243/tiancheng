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
    <header class="bottom-line">
        <div class="weui-flex aic container">
            <div class="w30 ml10" id="returnBtn">
                <img width="30" src="image/icon/return.png" alt="">
            </div>
            <div class="weui-flex__item tc f16">个人资料</div>
            <div class="w30 mr10"></div>
        </div>
    </header>
    <div style="height: 42px;"></div>

    <section id="App">
        <div class="weui-cells__title">个人资料</div>
        <div class="weui-cells">
            <a class="weui-cell weui-cell_access" href="javascript:;">
                <div class="weui-cell__bd">
                    <p><img class="portrait" src="image/test/p1.png"></p>
                </div>
                <div class="weui-cell__ft">修改</div>
            </a>
            <a class="weui-cell weui-cell_access" href="javascript:;" @click="showLayer('昵称')">
                <div class="weui-cell__bd">昵称</div>
                <div class="weui-cell__ft">刘德华</div>
            </a>
            <a class="weui-cell weui-cell_access" href="javascript:;" @click="showLayer('qq')">
                <div class="weui-cell__bd">联系QQ</div>
                <div class="weui-cell__ft">未设置</div>
            </a>
            <a class="weui-cell weui-cell_access" href="javascript:;">
                <div class="weui-cell__bd">收货地址</div>
                <div class="weui-cell__ft">未设置</div>
            </a>
            <a class="weui-cell weui-cell_access" href="javascript:;">
                <div class="weui-cell__bd">我的淘气值</div>
                <div class="weui-cell__ft">未设置</div>
            </a>
            <a class="weui-cell weui-cell_access" href="javascript:;">
                <div class="weui-cell__bd">我的必中券</div>
                <div class="weui-cell__ft"></div>
            </a>
        </div>

        <div class="weui-cells__title">账号安全</div>
        <div class="weui-cells">
            <a class="weui-cell weui-cell_access" href="javascript:;" @click="showLayer('手机')">
                <div class="weui-cell__bd">手机号</div>
                <div class="weui-cell__ft">待绑定</div>
            </a>
            <a class="weui-cell weui-cell_access" href="javascript:;" @click="showLayer('密码')">
                <div class="weui-cell__bd">密码</div>
                <div class="weui-cell__ft">为设置</div>
            </a>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn weui-btn_warn" href="javascript:">退出登录</a>
        </div>

        <%@include file="updateLayer.jsp"%>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    new Vue({
        el: '#App',
        data: {
            flag: ''
        },
        methods: {
            showLayer: function(name){
                this.flag = name;
            },
            hideLayer: function(name){
                this.flag = '';
            },
            bindSubmit: function(){
                this.flag = '';
                setTimeout(function(){
                   weui.toast('修改成功！'); 
                },300);
            }
        }
    });

})
</script>
</html>