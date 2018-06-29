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
    <!-- <header>
        <div class="tc f16 title">试用进展</div>
    </header>
    <div style="height: 42px;"></div> -->

    <section id="App">
        <div class="rel bgwh">
            <div class="weui-flex pro-type">
                <div class="pro-type__item" :class="{gm: currentIndex == 0}" @click="changeType(0)">全部</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 1}" @click="changeType(1)">待开奖</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 2}" @click="changeType(2)">待领奖</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 3}" @click="changeType(3)">待评价</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 4}" @click="changeType(4)">已完成</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 5}" @click="changeType(5)">追评任务</div>
            </div>
            <div class="active-line pct16" :style="styleObject"></div>
        </div>

        <ul class="p10">
            <li>• 部分产品限制试用规格，请务必注意</li> 
            <li class="mt5">• 活动未结束前，每天都有中奖机会</li>
        </ul>
        <div>
            <div class="weui-panel weui-panel_access follow-up-list">
                <div class="weui-panel__bd">
                    <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg" v-for="(item,index) in 4">
                        <div class="weui-media-box__hd rel">
                            <img class="weui-media-box__thumb" src="image/test/p1.jpg" alt="">
                        </div>
                        <div class="weui-media-box__bd">
                            <h4 class="weui-media-box__title">练字帖成人楷书</h4>
                            <p class="weui-media-box__desc mt5">限量30份 免费送</p>
                            <p class="mt5 gm">52人已关注 | 明天09:00开抢</p>
                            <p class="mt5 fix">
                                <span class="circle">免</span><span class="price g9">￥128.00</span>
                                <a class="weui-btn weui-btn_mini weui-btn_plain-primary r" href="page/product/ypjrw.jsp">去评价</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="../common/loading.jsp"%>
    </section>

    <%@include file="../common/mianNav.jsp"%>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
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