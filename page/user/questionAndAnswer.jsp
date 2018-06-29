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
</head>
<body> 
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="weui-cells__title">问题分类</div>
        <div class="weui-grids bgwh">
            <a href="page/user/questionAndAnswer_list.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="image/icon/question/xinshou.png" alt="">
                </div>
                <p class="weui-grid__label">新手问题</p>
            </a>
            <a href="page/user/questionAndAnswer_list.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="image/icon/question/shenqing.png" alt="">
                </div>
                <p class="weui-grid__label">试用申请</p>
            </a>
            <a href="page/user/questionAndAnswer_list.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="image/icon/question/xiadan.png" alt="">
                </div>
                <p class="weui-grid__label">下单领奖</p>
            </a>
            <a href="page/user/questionAndAnswer_list.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="image/icon/question/shouhuo.png" alt="">
                </div>
                <p class="weui-grid__label">收货评价</p>
            </a>
            <a href="page/user/questionAndAnswer_list.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="image/icon/question/tixian.png" alt="">
                </div>
                <p class="weui-grid__label">兑换相关</p>
            </a>
            <a href="page/user/questionAndAnswer_list.jsp" class="weui-grid">
                <div class="weui-grid__icon">
                    <img src="image/icon/question/shiyong.png" alt="">
                </div>
                <p class="weui-grid__label">试用规则</p>
            </a>
        </div>

        <div class="weui-cells__title">常见问题</div>
        <div class="weui-cells">
            <a class="weui-cell weui-cell_access j-show-answer" href="javascript:;">
                <div class="weui-cell__bd">只要申请就一定会中奖吗</div>
                <div class="weui-cell__ft"></div>
            </a>
            <a class="weui-cell weui-cell_access j-show-answer" href="javascript:;">
                <div class="weui-cell__bd">金币有什么用</div>
                <div class="weui-cell__ft"></div>
            </a>
            <a class="weui-cell weui-cell_access j-show-answer" href="javascript:;">
                <div class="weui-cell__bd">垫付后一定会返款吗</div>
                <div class="weui-cell__ft"></div>
            </a>
        </div>
        
        <div style="height: 46px;"></div>
        <div class="fixed-buttom">
             <a href="javascript:;" class="weui-btn bgm">在线客服</a>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '使用帮助';

    $('.j-show-answer').click(function(){
        var title = $(this).find('.weui-cell__bd:first').text();

        weui.alert('<div class="f12 tl lh22">不是的哦！新人有一次必中机会，但是后续不保证每次申请都能中奖，申请越多，中奖率越高，如果中奖了，千万要记得去领奖</div>',function(){

        },{
            title: title,
            buttons: [{label: '我知道了'}]
        })
    })

})
</script>
</html>