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
        <ul class="p10">
            <li>• 花币兑换为必中资格，兑换后需在6小时内领取，超时自动放弃</li> 
            <li class="mt5">• 每天不定时上新，每人每天仅能兑换一件商品</li>
        </ul>
        <p><img width="100%" src="image/wealth/luck-bg.png" alt=""></p>

        <div class="rel bgwh bottom-line">
            <div class="weui-flex pro-type">
                <div class="pro-type__item" :class="{gm: currentIndex == 0}" @click="changeType(0)">综合排序</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 1}" @click="changeType(1)">
                    <span>价格排序</span><img class="vtb" width="18" :src="'image/wealth/' + priceSortType + '.png'" alt="">
                </div>
                <div class="pro-type__item" :class="{gm: currentIndex == 2}" @click="changeType(2)">
                    <span>剩余份数</span><img class="vtb" width="18" :src="'image/wealth/' + remainSortType + '.png'" alt="">
                </div>
            </div>
            <div class="active-line pct33" :style="styleObject"></div>
        </div>

        <div class="fix">
            <div class="list-zt__item product__item" v-for="item in 4">
                <div class="product-cover">
                    <img :src="'image/test/p' + (item) + '.png'"/>
                    <div class="txt">
                        <span>剩余22份</span>
                    </div>
                </div>
                <div class="ell mt5">LAVER防脱育发液</div>
                <div class="mt5">
                    <span class="circle">兑</span>
                    <span class="gm">50金币</span>
                    <del class="g9">免￥12</del>
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
    headerVue.title = '金币兑换';

    new Vue({
        el: '#App',
        data: {
            currentIndex: 0,
            sortType: 'dec'
        },
        computed: {
            priceSortType: function(){
                return this.currentIndex == 1 ? (this.sortType) : 'sort'
            },
            remainSortType: function(){
                return this.currentIndex == 2 ? (this.sortType) : 'sort'
            },
            styleObject: function(){
                return {
                    'transform': 'translate(' + (this.currentIndex * 100) + '%,0)'
                }
            }
        },
        methods: {
            changeType: function(index){
                if(this.currentIndex == index){
                    this.sortType = this.sortType == 'dec' ? 'asc' : 'dec';
                }else{
                    this.sortType = 'dec';
                    this.currentIndex = index;
                }
            }
        }
    });

})
</script>
</html>