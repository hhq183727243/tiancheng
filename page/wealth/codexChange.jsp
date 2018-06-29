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
        .nav-fixed{
            top: -75px;
        }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <p><img width="100%" src="image/banner/jbdh.png" alt=""></p>
        <ul class="p10 bgwh bottom-line">
            <li>金币兑换为必中资格，兑换后需在6小时内领取，超时自动放弃</li> 
            <li class="mt5">如有疑问，联系甜橙平台客服。</li>
        </ul>

        <aside :class="{active: showAside,'nav-fixed': isFixed}" >
            <div class="swiper-container bgf5" id="cateSwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide" v-for="(item,index) in categoryList">
                        <a class="category-list__item" :class="{active: categoryIndex == index}" @click="changeCategory(index)">{{item}}</a>
                    </div>
                </div>
            </div>

            <div class="rel bgwh bottom-line">
                <div class="weui-flex pro-type">
                    <div class="pro-type__item" :class="{gm: currentIndex == 0}" @click="changeType(0)">综合排序</div>
                    <div class="pro-type__item" :class="{gm: currentIndex == 1}" @click="changeType(1)">
                        <span>价格排序</span><img width="16" :src="'image/wealth/' + priceSortType + '.png'" alt="">
                    </div>
                    <div class="pro-type__item" :class="{gm: currentIndex == 2}" @click="changeType(2)">
                        <span>剩余份数</span><img width="16" :src="'image/wealth/' + remainSortType + '.png'" alt="">
                    </div>
                </div>
                <div class="active-line pct33" :style="styleObject"></div>
            </div>
        </aside>
        <div style="height: 75px;" v-show="isFixed"></div>

        <div class="fix">
            <div class="list-zt__item product__item" v-for="item in 8">
                <div class="p-item-inner pb5">
                    <div class="product-cover">
                        <img :src="'image/test/p' + (item) + '.jpg'"/>
                        <div class="txt">
                            <span>剩余22份</span>
                        </div>
                    </div>
                    <div class="ell m5">LAVER防脱育发液</div>
                    <div class="m5">
                        <span class="circle">兑</span>
                        <span class="gm">50金币</span>
                        <span class="g9">免￥12</span>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="../common/loading.jsp"%>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/swiper-3.4.2.min.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '金币兑换';

    new Vue({
        el: '#App',
        data: {
            scrollTop: 0,
            showAside: false,

            categoryIndex: 0,
            categoryList: ['精选','女装','男装','数码','配饰','日用','包箱','母婴','彩妆','美食'],

            currentIndex: 0,
            sortType: 'dec'
        },
        computed: {
            /*navFixedTop: function(){
                if(this.scrollTop > 215){
                    return {
                        top: '-34px'
                    }
                }else{
                     return {
                        top: (42 - this.scrollTop) + 'px'
                    }
                }
            },*/
            isFixed: function(){
                if(this.scrollTop > (173 + 75)){
                    return true;
                }else{
                    return false;
                }
            },
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
            changeCategory: function(index){
                this.categoryIndex = index;
            },

            changeType: function(index){
                if(this.currentIndex == index){
                    this.sortType = this.sortType == 'dec' ? 'asc' : 'dec';
                }else{
                    this.sortType = 'dec';
                    this.currentIndex = index;
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
                    
                    if(that.scrollTop > scrollTop && scrollTop > (173 + 75)){
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