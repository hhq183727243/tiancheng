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
    	.weui-media-box_appmsg .weui-media-box__hd{ width: 90px;height: 90px; }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <p><img width="100%" src="image/other/xinshoubizhong.png" alt=""></p>

        <div class="weui-panel weui-panel_access follow-up-list">
            <div class="weui-panel__bd">
                <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg" v-for="(item,index) in 5">
                    <div class="weui-media-box__hd rel">
                        <img class="weui-media-box__thumb" src="image/test/p1.jpg" alt="">
                    </div>
                    <div class="weui-media-box__bd g9">
                        <h4 class="weui-media-box__title g3">练字帖成人楷书</h4>
                        <p class="mt5">限量30份 免费送</p>
                        <p class="mt5">试用<span class="gm">10</span>份<span class="r">共189人参与</span></p>
                        <p class="mt5 fix">
                            <span class="circle">免</span>
                            <span class="price g9">￥128.00</span>
                            <span class="weui-btn weui-btn_mini weui-btn_plain-primary r" @click.stop="bindToSnapUp(item,index)">马上抢</span>
                        </p>
                    </div>
                </a>
            </div>
        </div>

        <%@include file="../common/loading.jsp"%>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '100%必中';

    new Vue({
        el: '#App',
        data: {
        },
        methods: {
            bindToSnapUp: function(){

            }
        }
    });

})
</script>
</html>