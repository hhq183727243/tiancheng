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
        .cash-item{
            margin: 10px;
            background-color: #fff;
            padding: 10px;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <ul class="p10">
            <li>• 为了保障试客和商家交易金额的准确性，平台预留3天的资金核查周期，资金被确认后方可提现。</li> 
            <li class="mt5">• 每天不定时上新，每人每天仅能兑换一件商品</li>
        </ul>
        <div class="rel bgwh">
            <div class="weui-flex pro-type">
                <div class="pro-type__item" :class="{gm: currentIndex == 0}" @click="changeType(0)">确认中(10)</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 1}" @click="changeType(1)">已返款(20)</div>
            </div>
            <div class="active-line pct50" :style="styleObject"></div>
        </div>
        <div>
            <div class="cash-item ell" v-for="item in 10">2018-3-27 22:59:20，提现<span class="gm">￥200</span>元正在处理中...</div>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '确认中金额';

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