
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
        .weui-media-box_appmsg .weui-media-box__hd{ width: 110px;height: 110px; }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <h4 class="gm f16 tc p10 bgwh bottom-line">恭喜中奖</h4>
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
            <h4>第一步: 请按照商家要求的规格拍下商品</h4>
            <div class="weui-flex mt10">
                <div><label class="weui-label">订单号</label></div>
                <div class="weui-flex__item"><input class="weui-input" type="text" placeholder="请输入订单号"></div>
            </div>
            <div class="weui-flex mt10">
                <div><label class="weui-label">实际付款金额</label></div>
                <div class="weui-flex__item"><input class="weui-input" type="text" placeholder="请输入实际付款金额"></div>
            </div>
           
            <h4 class="mt20">第二步: 上传订单详情截图</h4>
            <p class="mt10 g9">请在<span class="gm">【我的淘宝】-【已买到宝贝】</span>截图订单详情页！</p>
            <div class="weui-uploader mt10">
                <div class="weui-uploader__bd">
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li class="weui-uploader__file" style="background-image:url(image/test/p1.jpg)"></li>
                    </ul>
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInput" class="weui-uploader__input" type="file" accept="image/*" multiple="">
                    </div>
                </div>
            </div>
        </div>
        
        <div class="p20 mt15 bgwh bottom-line top-line">
            <h4 class="tc">----------温馨提示----------</h4>
            <p class="mt10">1.垫付金额将在收货好评后，返还到甜橙账号</p>
            <p class="mt10">2.拍下付款后，商家将在72小时内发货，请耐心等待</p>
            <p class="mt10">3.商品存在质量问题，请联系甜橙在线客服与商家协商解决，下单后严禁擅自淘宝退款/退货，一经发现永久封号处理。</p>
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