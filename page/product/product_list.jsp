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
</head>
<body>
    <header class="bottom-line">
        <div class="weui-flex aic container">
            <div class="w30 ml10">
                <img width="30" src="image/icon/return.png" alt="">
            </div>
            <div class="weui-flex__item tc f16">商品列表</div>
            <div class="w30 mr10"></div>
        </div>
    </header>
    <div style="height: 42px;"></div>
    <section class="bgwh" id="App">
        <div class="swiper-container" id="cateSwiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide" v-for="(item,index) in categoryList">
                    <a class="category-list__item" :class="{active: categoryIndex == index}" @click="changeCategory(index)">{{item}}</a>
                </div>
            </div>
        </div>
        <div class="rel bgf5">
            <div class="weui-flex pro-type">
                <div class="pro-type__item" :class="{gm: currentIndex == 0}" @click="changeType(0)">猜你喜欢</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 1}" @click="changeType(1)">平台推荐</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 2}" @click="changeType(2)">高中奖率</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 3}" @click="changeType(3)">高价值</div>
            </div>
            <div class="active-line" :style="styleObject"></div>
        </div>

        <div class="fix">
            <div class="list-zt__item product__item" v-for="item in 4">
                <div class="product-cover">
                    <img :src="'image/test/p' + (item) + '.png'"/>
                    <div class="txt">
                        <span>44人已申请</span>
                        <span class="mt10">限免8份</span>
                    </div>
                </div>
                
                <div class="weui-flex aic mt5">
                    <div class="weui-flex__item ell">LAVER防脱育发液</div> 
                    <p class="f12 gm">免￥12</p>
                </div>
                <div class="apply-btn mt5">免费申请</div>
            </div>
        </div>
    </section>

    <%@include file="../common/mianNav.jsp"%>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/swiper-3.4.2.min.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    new Vue({
        el: '#App',
        data: {
            categoryIndex: 0,
            categoryList: ['精选','男装','女装','包箱','运动','配饰','数码','洗护','母婴'],
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
            changeCategory: function(index){
                this.categoryIndex = index;
            },
            changeType: function(index){
                this.currentIndex = index;
            }
        },
        mounted: function(){
            var that = this;

            this.$nextTick(function(){
                new Swiper('#cateSwiper', {
                    autoplay: false,
                    slidesPerView: 5
                });
            })
        }
    });

})
</script>
</html>