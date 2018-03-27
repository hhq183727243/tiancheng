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
    <link rel="shortcut icon" href="image/favicon.ico">
 
    <%@include file="common/link.jsp"%>
</head>
<body>
    <header>
        <div class="weui-flex aic" id="searchBar">
            <div class="w50 tc"><img width="36" src="image/logo.jpg"></div>
            <div class="weui-flex__item search-box">
                <i class="weui-icon-search"></i>
                <input type="search" id="searchInput" placeholder="搜索商品"/>
            </div>
            <div class="w50 tc">
                <a href="page/product/product_list.jsp">
                    <img width="22" src="image/icon/fenlei.png"><p>分类</p></a>
            </div>
            <div class="w50 tc">
                <a href="page/other/dzp.jsp">
                    <img width="22" src="image/icon/zhuanpan.png"><p>大转盘</p></a>
            </div>
        </div>
    </header>
    <div style="height: 50px"></div>
    
    <article id="App">
        <div class="slider" id="bannerWrap">
            <ul class="" id="bannerList">
                <li><a href=""><img src="image/test/banner_1.jpg"></a></li>
                <li><a href=""><img src="image/test/banner_2.jpg"></a></li>
                <li><a href=""><img src="image/test/banner_3.jpg"></a></li>
            </ul>
        </div>
        
        <section class="bgwh">
            <div class="bottom-line ell notice">
                <marquee scrollamount="3">【今日】试用X件，今日上新X件，可捡漏X件<span class="ml20">【明日】上新Y件</span></marquee>
            </div>
        
            <div class="weui-flex tc pt15 pb15">
                <a class="weui-flex__item" href="page/product/product_list.jsp">
                    <div class="icon-text"><img width="100%" src="image/home/tab10.png"></div>
                    <div class="mt5">综合试用</div>
                </a>
                <a class="weui-flex__item" href="page/product/product_list.jsp">
                    <div class="icon-text"><img width="100%" src="image/home/tab4.png"></div>
                    <div class="mt5">高中奖率</div>
                </a>
                <a class="weui-flex__item" href="page/product/product_list.jsp">
                    <div class="icon-text"><img width="100%" src="image/home/tab5.png"></div>
                    <div class="mt5">高价值精品</div>
                </a>
                <a class="weui-flex__item" href="page/challenge/challenge_index.jsp">
                    <div class="icon-text"><img width="100%" src="image/home/tab1.png"></div>
                    <div class="mt5">拼团试用</div>
                </a>
            </div>
            <div class="weui-flex bottom-line tc pb15">
                <a class="weui-flex__item" href="page/wealth/codExchange.jsp">
                    <div class="icon-text"><img width="100%" src="image/home/tab9.png"></div>
                    <div class="mt5">金币兑换</div>
                </a>
                <a class="weui-flex__item" href="page/challenge/challenge_index.jsp">
                    <div class="icon-text"><img width="100%" src="image/home/tab3.png"></div>
                    <div class="mt5">早起挑战</div>
                </a>
                <a class="weui-flex__item" href="page/invitation/invitation_index.jsp">
                    <div class="icon-text"><img width="100%" src="image/home/tab8.png"></div>
                    <div class="mt5">邀请好友</div>
                </a>
                <a class="weui-flex__item" href="page/product/product_list.jsp">
                    <div class="icon-text"><img width="100%" src="image/home/tab2.png"></div>
                    <div class="mt5">每日试用</div>
                </a>
            </div>

            <div class="bottom-line p15">
                <div class="zjgg">
                    <div class="weui-cell_warn l">中奖公告：</div>
                    <div class="weui-flex__item" style="height: 18px;margin-left: 60px; overflow: hidden;"> 
                        <p class="ell ani-gd">
                            <span class="weui-cell_warn">{{winningEntity.name}}</span>免费获得 
                            <span class="weui-cell_warn">{{winningEntity.price}}</span>{{winningEntity.title}}
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <section class="bgwh mt10">
            <a class="db" href="page/other/xsbz.jsp"><img class="vb" width="100%" src="image/home/newerdo.gif" alt=""/></a>

            <div class="weui-flex top-line bottom-line">
                <div class="weui-flex__item bre">
                    <a class="box-1" href="page/product/product_list.jsp">
                        <p class="gm f16">今日上新</p>
                        <p class="g9">好货尝鲜</p>
                    </a>
                </div>
                <div class="weui-flex__item">
                    <a class="box-2 bottom-line" href="page/other/jlzq.jsp">
                        <p class="gm f16">捡漏专区</p>
                        <p class="g9">21:00开始捡漏商品</p>
                    </a>

                    <a class="box-2 box-3" href="page/other/mryg.jsp">
                        <p class="gm f16">明日预告</p>
                        <p class="g9">好货商品提前知晓</p>
                    </a>
                </div>
            </div>
        </section>
        
        <section class="bgwh mt10">
            <div class="list-tit">
                <span class="gm f16">精选专题</span>
                <a class="more">更多>></a>
            </div>
            <div class="list-zt fix">
                <div class="list-zt__item"><img src="image/test/zhuanti.jpg"></div>
                <div class="list-zt__item"><img src="image/test/zhuanti.jpg"></div>
                <div class="list-zt__item"><img src="image/test/zhuanti.jpg"></div>
                <div class="list-zt__item"><img src="image/test/zhuanti.jpg"></div>
                <div class="list-zt__item"><img src="image/test/zhuanti.jpg"></div>
                <div class="list-zt__item"><img src="image/test/zhuanti.jpg"></div>
            </div>
        </section>

        <section class="bgwh mt10" id="proTypeApp">
            <div class="list-tit">
                <span class="gm f16">好物推荐</span>
                <a class="more">更多>></a>
            </div>
        
            <div class="rel">
                <div class="weui-flex pro-type">
                    <div class="pro-type__item" :class="{gm: currentIndex == 0}" @click="changeType(0)">猜你喜欢</div>
                    <div class="pro-type__item" :class="{gm: currentIndex == 1}" @click="changeType(1)">平台推荐</div>
                    <div class="pro-type__item" :class="{gm: currentIndex == 2}" @click="changeType(2)">高中奖率</div>
                    <div class="pro-type__item" :class="{gm: currentIndex == 3}" @click="changeType(3)">高价值商品</div>
                </div>
                <div class="active-line" :style="styleObject"></div>
            </div>

            <div class="fix">
                <a class="list-zt__item product__item" href="page/product/product_detail.jsp" v-for="item in 8">
                    <div class="product-cover"><img :src="'image/test/p' + (item) + '.jpg'"/></div>
                    <p class="ell mt5">LAVER防脱育发液</p>
                    <div class="fix mt5">
                        <span class="circle">免</span>
                        <del class="l">￥128.00</del> 
                        <p class="r">限免<span class="gm">50</span>份</p>
                    </div>
                    <div class="apply-btn mt5">免费申请</div>
                </a>
            </div>
        </section>
    </article>
    <%@include file="common/mianNav.jsp"%>
</body>
<script src="js/lib/jqueryMobileSlider.js" type="text/javascript"></script>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    

    new Vue({
        el: '#App',
        data: {
            currentIndex: 0,
            winningIndex: 0,
            winningEntity: {},
            winningList: [
                {name: 'c***1',price: '15.00',title: '元纪梵希正品丝袜'},
                {name: 'c***2',price: '66.00',title: '元美容院专用玫瑰软膜粉'},
                {name: 'c***3',price: '77.00',title: '元牛奶珍珠面膜粉补水'}
            ]//中奖名单
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
            },
            //中奖跑马灯
            winningMarquee: function(){
                var that = this;

                that.winningEntity = that.winningList[0]

                setInterval(function(){
                    that.winningIndex++;
                    if(that.winningIndex == that.winningList.length){
                        that.winningIndex = 0;
                    }

                    that.winningEntity = that.winningList[that.winningIndex]
                },3000);
            }
        },
        mounted: function(){
            this.$nextTick(function () {
                //初始化banner动画
                $('#bannerWrap').mobileSlider({width:640,scale: 2});
                this.winningMarquee();
            })
        }
    });

})
</script>
</html>