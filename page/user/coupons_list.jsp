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
        <div class="rel bgwh bottom-line">
            <div class="weui-flex pro-type">
                <div class="pro-type__item" :class="{gm: currentIndex == 0}" @click="changeType(0)">未使用</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 1}" @click="changeType(1)">已使用</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 2}" @click="changeType(2)">已过期</div>
            </div>
            <div class="active-line pct33" :style="styleObject"></div>
        </div>
        
        <div class="weui-cells__title lh18 tr">
            <a class="gm"><img width="18" src="image/icon/shuoming.png"> 使用说明</a>
        </div>

        <div class="coupons-list">
            <div  class="coupons-list__item weui-flex aic" v-for="item in 5">
                <div class="weui-flex__item">
                    <p class="gm">￥<span class="f20">30</span>必中券</p>
                    <p class="g9">有效期：2018-3-17 前有效</p>
                </div>
                <div class="ml15">
                    <a class="gm" v-if="currentIndex == 0">去使用</a>
                    <span class="usered" v-if="currentIndex == 1">已使用</span>
                    <span class="usered" v-if="currentIndex == 2"><del class="price">已过期</del></span>
                </div>
            </div>
        </div>

        <%@include file="../common/loading.jsp"%>

    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '必中券';

    new Vue({
        el: '#App',
        data: {
            currentIndex: 0
        },
        computed: {
            styleObject: function(){
                return {
                    'transform': 'translate(' + (this.currentIndex * 100) + '%,0)'
                }
            }
        },
        methods: {
            changeType: function(index){
                this.currentIndex = index;
            }
        }
    });

})
</script>
</html>