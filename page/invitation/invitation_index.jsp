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
        .weui-navbar__item{ color: #fff; }
        .weui-navbar__item:after{ border-right: 1px solid #ffa598; }
        .weui-navbar__item.weui-bar__item_on, .weui-navbar__item:active {
            background-color: #ff9a02;
        }
        .activity-voucher .tasks {
            position: relative;
            z-index: 1;
            top: -.6rem;
            background-color: #fff;
            border: .08rem solid #ff9a23;
            border-radius: .3rem;
            border-top: none;
            width: 11.46rem;
            height: auto;
            padding-top: .6rem;
            margin: 0 auto;
        }
        .coupons-list__item.disable{ background-color: #f8f8f8; border-left: 8px solid #ccc; }
        .coupons-list__item.disable .gm{ color: #999; }
        .coupons-list__item .right{ width: 85px; }
        .coupons-list__item .btn{
            padding: 2px 6px;
            border-radius: 3px;
            background: #ff5004;
            color: #fff;
        }
    </style>
</head>
<body> 
    <!-- <header class="bottom-line">
        <div class="weui-flex aic container">
            <div class="w30 ml10" id="returnBtn">
                <img width="30" src="image/icon/return.png" alt="">
            </div>
            <div class="weui-flex__item tc f16">邀请好友</div>
            <div class="w30 mr10"></div>
        </div>
    </header>
    <div style="height: 42px;"></div> -->

    <section id="App" class="activity-voucher">
        <div class="weui-navbar bgm">
            <div class="weui-navbar__item weui-bar__item_on">
                <a href="page/invitation/invitation_index.jsp">邀请有礼</a>
            </div>
            <div class="weui-navbar__item">
                <a href="page/invitation/invitationRecord_list.jsp">邀请记录</a>
            </div>
            <div class="weui-navbar__item">
                <a href="page/invitation/invitationRank_list.jsp">大神排行榜</a>
            </div>
        </div>
        <div>
            <img width="100%" src="image/invitation/bg.png" alt="">
            <img width="100%" src="image/invitation/bg2.jpg" alt="">
            <div class="tasks">
                <div  class="coupons-list__item weui-flex aic">
                    <div class="weui-flex__item">
                        <p class="gm">￥<span class="f20">30</span>必中券</p>
                        <p class="g9">邀请5位好友即可获得</p>
                    </div>
                    <div class="ml15 right tc">
                        <p><a class="btn">马上邀请</a></p>
                        <p class="g9 mt5">还差5人</p>
                    </div>
                </div>

                <div  class="coupons-list__item weui-flex aic disable" v-for="item in 4">
                    <div class="weui-flex__item">
                        <p class="gm">￥<span class="f20">30</span>必中券</p>
                        <p class="g9">邀请5位好友即可获得</p>
                    </div>
                    <div class="ml15 right tc">
                        <p class="g9">完成上一项任务</p>
                        <p class="g9 mt5">即可开启</p>
                    </div>
                </div>
            </div>
        </div>
        
        <div style="height: 47px"></div>
        <div class="fixed-buttom">
            <div class="weui-navbar bgm">
                <div class="weui-navbar__item weui-bar__item_on">
                    <a href="page/user/coupons_list.jsp">我的必中券</a>
                </div>
                <div class="weui-navbar__item">
                    <a >立即邀请</a>
                </div>
            </div>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
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