
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
        .weui-media-box_appmsg .weui-media-box__hd{ width: 110px;height: 110px; }
        .comment-step{
            margin-top: 10px;
            height: 40px;
            background-image: url(image/step.png);
            background-color: #fff;
            background-size: 100% 40px;
            background-repeat: no-repeat;
            background-position: center;
            text-align: center;
            line-height: 40px;
            color: #fff;
            margin-left: -15px;
            margin-right: -15px;
        }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="weui-panel weui-panel_access">
            <div class="weui-panel__hd"><img width="20" src="image/icon/store.png"> 酷*美*女*</div>
            <div class="weui-panel__bd">
                <div class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd rel">
                        <img class="weui-media-box__thumb" src="image/test/p1.jpg" alt="">
                    </div>
                    <div class="weui-media-box__bd g9">
                        <h4 class="weui-media-box__title g3">练字帖成人楷书</h4>
                        <p class="mt5">规格：随意拍</p>
                        <p class="mt5">颜色：随意拍</p>
                        <p class="mt5">价格：<span class="gm">￥89</span><span class="baoyou ml10">包邮</span></p>
                        <p class="mt5">数量：1件</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="p15 bgwh mt15 bottom-line top-line">
            <h4 class="tc">收货后预评价商品</h4>
            <p class="tc g9 mt10">请在预评价通过后再到淘宝评价</p>
            
            <div class="weui-flex comment-step">
                <div class="weui-flex__item">1.在甜橙拟定评价</div>
                <div class="weui-flex__item">2.等待商家审核通过</div>
                <div class="weui-flex__item tr">3.复制评价到淘宝</div>
            </div>
           
            <h4 class="mt20">填写文字预评价</h4>
            <p class="mt10 g9">请填写不少于20个字的好评内容！</p>
            <div class="mt10 bgf5 p5">
                <textarea class="weui-textarea bgf5" rows="5" placeholder="请填写评价20-128个字"></textarea>
            </div>
            
            <p class="mt10 gm">此任务不需要晒图，淘宝评价禁止上传图片</p>

            <p class="mt20 gm">温馨提示</p>
            <p class="mt5 g9 lh20">1、请按照好评要求进行评价，请勿直接前去淘宝评价，好评必须商家审核通过后才可以复制到淘宝天猫，否则将降低中奖率。</p>
            <p class="mt5 g9 lh20">2、收货好评之后，商家将在<span class="gm">48小时之内</span>确认评价，之后系统返款，请耐心等待，严禁到旺旺上催促商家审核评价，或提及“<span class="gm">甜橙</span>”“<span class="gm">免费</span>”“<span class="gm">试用</span>”等关键词，否则将导致账号被封！</p>
        </div>

        <div class="weui-btn-area pb20">
            <a class="weui-btn bgm" href="page/product/ypjrw.jsp">确认无误，申请提交</a>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '提交付款订单信息';

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