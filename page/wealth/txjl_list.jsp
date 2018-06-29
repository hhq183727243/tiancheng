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
<body class="bgwh">
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="p15"> 
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
    headerVue.title = '兑换记录';

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