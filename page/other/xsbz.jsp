
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
        <p><img width="100%" src="image/other/xinshoubizhong.png" alt=""></p>

        <div class="rel bgwh bottom-line">
            <div class="weui-flex pro-type">
                <div class="pro-type__item" :class="{gm: currentOrder == 0}" @click="changeOrder(0)">综合排序</div>
                <div class="pro-type__item" :class="{gm: currentOrder == 1}" @click="changeOrder(1)">
                    <span>价格排序</span><img width="16" :src="'image/wealth/' + priceSortType + '.png'" alt="">
                </div>
                <div class="pro-type__item" :class="{gm: currentOrder == 2}" @click="changeOrder(2)">
                    <span>剩余份数</span><img width="16" :src="'image/wealth/' + remainSortType + '.png'" alt="">
                </div>
            </div>
            <div class="active-line pct33" :style="styleObject"></div>
        </div>

        <div class="fix">
            <div class="list-zt__item product__item" v-for="item in 4">
                <div class="product-cover">
                    <img :src="'image/test/p' + (item) + '.png'"/>
                    <div class="txt">
                        <span>新人必中</span>
                    </div>
                </div>
                <div class="ell mt5">LAVER防脱育发液</div>
                <div class="mt5">
                    <span class="circle">免</span>
                    <del class="g9">￥12</del>
                </div>
                <div class="apply-btn mt10">免费试用</div>
            </div>
        </div>

        <%@include file="../common/loading.jsp"%>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '新手必中';

    new Vue({
        el: '#App',
        data: {
            currentOrder: 0,//分类下标
            sortType: 'dec'//排序方式
        },
        computed: {
            priceSortType: function(){
                return this.currentOrder == 1 ? (this.sortType) : 'sort'
            },
            remainSortType: function(){
                return this.currentOrder == 2 ? (this.sortType) : 'sort'
            },
            styleObject: function(){
                return {
                    'transform': 'translate(' + (this.currentOrder * 100) + '%,0)'
                }
            }
        },
        methods: {
            changeOrder: function(index){
                if(this.currentOrder == index){
                    this.sortType = this.sortType == 'dec' ? 'asc' : 'dec';
                }else{
                    this.sortType = 'dec';
                    this.currentOrder = index;
                }
            }
        }
    });

})
</script>
</html>