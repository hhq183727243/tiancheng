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
    <%@include file="../common/header.jsp"%>
    <section class="bgwh" id="App">
        <aside class="nav-fixed" :class="{active: showAside}" :style="navFixedTop">
            <div class="swiper-container" id="cateSwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide" v-for="(item,index) in categoryList">
                        <a class="category-list__item" :class="{active: categoryIndex == index}" @click="changeCategory(index)">{{item}}</a>
                    </div>
                </div>
            </div>
            <div class="rel bgf5">
                <div class="weui-flex pro-type">
                    <div class="pro-type__item" :class="{gm: currentIndex == 0}" @click="changeType(0)">全部</div>
                    <div class="pro-type__item" :class="{gm: currentIndex == 1}" @click="changeType(1)">高价值</div>
                    <div class="pro-type__item" :class="{gm: currentIndex == 2}" @click="changeType(2)">高中奖率</div>
                    <div class="pro-type__item" :class="{gm: currentIndex == 3}" @click="changeType(3)">拼团开奖</div>
                </div>
                <div class="active-line" :style="styleObject"></div>
            </div>
            <div class="rel bgwh bottom-line">
                <div class="weui-flex pro-type">
                    <div class="pro-type__item" :class="{gm: orderIndex == 0}" @click="changeOrder(0)">综合排序</div>
                    <div class="pro-type__item" :class="{gm: orderIndex == 1}" @click="changeOrder(1)">
                        <span>价格排序</span><img width="16" :src="'image/wealth/' + priceSortType + '.png'" alt="">
                    </div>
                    <div class="pro-type__item" :class="{gm: orderIndex == 2}" @click="changeOrder(2)">
                        <span>剩余份数</span><img width="16" :src="'image/wealth/' + remainSortType + '.png'" alt="">
                    </div>
                </div>
            </div>
        </aside>
        <div style="height: 112px;"></div>

        <div class="fix">
            <div class="list-zt__item product__item" v-for="item in 8">
                <div class="product-cover">
                    <img :src="'image/test/p' + (item) + '.jpg'"/>
                    <div class="txt">
                        <span>距开团仅差5人</span>
                    </div>
                </div>
                <p class="ell mt5">LAVER防脱育发液</p>
                <div class="fix mt5">
                    <span class="circle">免</span>
                    <del class="l">￥128.00</del>
                </div>
                <div class="apply-btn mt5"><a href="page/product/ptkj_detail.jsp">马上参团</a></div>
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
    headerVue.title = '拼团开奖';

    new Vue({
        el: '#App',
        data: {
            scrollTop: 0,
            showAside: false,
            categoryIndex: 0,
            categoryList: ['精选','女装','男装','数码','配饰','日用','包箱','母婴','彩妆','美食'],
            currentIndex: 3,
            orderIndex: 0,//排序
            sortType: 'dec'//排序方式
        },
        computed: {
            navFixedTop: function(){
                if(this.scrollTop > 112){
                    return {
                        top: '-70px'
                    }
                }else{
                     return {
                        top: (42 - this.scrollTop) + 'px'
                    }
                }
            },
            priceSortType: function(){
                return this.orderIndex == 1 ? (this.sortType) : 'sort'
            },
            remainSortType: function(){
                return this.orderIndex == 2 ? (this.sortType) : 'sort'
            },
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
            },
            changeOrder: function(index){
                if(this.orderIndex == index){
                    this.sortType = this.sortType == 'dec' ? 'asc' : 'dec';
                }else{
                    this.sortType = 'dec';
                    this.orderIndex = index;
                }
            }
        },
        mounted: function(){
            var that = this;

            this.$nextTick(function(){
                new Swiper('#cateSwiper', {
                    autoplay: false,
                    slidesPerView: 5
                });

                window.onscroll = function(){
                    var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
                    
                    if(that.scrollTop > scrollTop && scrollTop > 112){
                        that.showAside = true;
                    }else{
                        that.showAside = false;
                    }

                    that.scrollTop = scrollTop
                }
            });
        }
    });

})
</script>
</html>