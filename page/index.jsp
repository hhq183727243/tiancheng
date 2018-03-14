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
 
    <link rel="stylesheet" href="css/lib/weui.min.css" type="text/css">
    <link rel="stylesheet" href="css/public.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <script src="js/lib/jquery.min.js" type="text/javascript"></script>
</head>
<body>
    <header>
        <div class="weui-search-bar bgm" id="searchBar">
            <form class="weui-search-bar__form">
                <div class="weui-search-bar__box">
                    <i class="weui-icon-search"></i>
                    <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索" required="">
                    <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
                </div>
                <label class="weui-search-bar__label" id="searchText">
                    <i class="weui-icon-search"></i>
                    <span>搜索商品</span>
                </label>
            </form>
            <a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">取消</a>
        </div>
    </header>

    <div class="slider" id="bannerWrap">
        <ul class="" id="bannerList">
            <li><a href=""><img src="image/test/banner_1.jpg"></a></li>
            <li><a href=""><img src="image/test/banner_2.jpg"></a></li>
            <li><a href=""><img src="image/test/banner_3.jpg"></a></li>
        </ul>
    </div>
    
    <section class="bgwh">
        <div class="bottom-line ell notice">【今日】试用X件，今日上新X件，可捡漏X件<span class="ml20">【明日】上新Y件</span></div>
    
        <div class="weui-flex bottom-line tc pt15 pb15">
            <div class="weui-flex__item">
                <div class="icon-text">试</div>
                <div class="mt5">试用大厅</div>
            </div>
            <div class="weui-flex__item">
                <div class="icon-text">务</div>
                <div class="mt5">每日任务</div>
            </div>
            <div class="weui-flex__item">
                <div class="icon-text">邀</div>
                <div class="mt5">邀请有礼</div>
            </div>
            <div class="weui-flex__item">
                <div class="icon-text">兑</div>
                <div class="mt5">金币兑换</div>
            </div>
            <div class="weui-flex__item">
                <div class="icon-text">挑</div>
                <div class="mt5">早起挑战</div>
            </div>
        </div>

        <div class="bottom-line p15">
            <div class="zjgg weui-flex">
                <div class="weui-cell_warn">中奖公告：</div>
                <div>
                    <p class="ell"><span class="weui-cell_warn">c***7</span>免费获得 <span class="weui-cell_warn">15.00</span>元纪梵希正品丝袜</p>
                </div>
            </div>
        </div>
    </section>

    <section class="bgwh mt10">
        <a class="db"><img class="vb" width="100%" src="image/home/newerdo.gif" alt=""/></a>

        <div class="weui-flex top-line bottom-line">
            <div class="weui-flex__item bre">
                <a class="box-1">
                    <p class="gm f16">今日上新</p>
                    <p class="g9">好货尝鲜</p>
                </a>
            </div>
            <div class="weui-flex__item">
                <a class="box-2 bottom-line">
                    <p class="gm f16">捡漏专区</p>
                    <p class="g9">21:00开始捡漏商品</p>
                </a>

                <a class="box-2 box-3">
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

    <section class="bgwh mt10">
        <div class="list-tit">
            <span class="gm f16">好物推荐</span>
            <a class="more">更多>></a>
        </div>
    
        <div class="rel" id="proTypeApp">
            <div class="weui-flex pro-type">
                <div class="pro-type__item" :class="{gm: currentIndex == 0}" @click="changeType(0)">猜你喜欢</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 1}" @click="changeType(1)">平台推荐</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 2}" @click="changeType(2)">高中奖率</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 3}" @click="changeType(3)">高价值</div>
            </div>
            <div class="active-line" :style="styleObject"></div>
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

    <%@include file="common/mianNav.jsp"%>
</body>
<script src="js/lib/jqueryMobileSlider.js" type="text/javascript"></script>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    //初始化banner动画
    $('#bannerWrap').mobileSlider({width:640,scale: 2});

    new Vue({
        el: '#proTypeApp',
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