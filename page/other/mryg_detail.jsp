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
        .good-info{
            padding: 10px 15px;
            background-color: #fff;
            box-sizing: border-box;
        }
        .weui-cell__hd img{ width: 16px; height: 16px; }
        .guize{ line-height: 28px;}
    </style>
</head>
<body> 
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="slider" id="bannerWrap">
            <ul>
                <li><a href=""><img src="image/test/g1.jpg"></a></li>
                <li><a href=""><img src="image/test/g1.jpg"></a></li>
                <li><a href=""><img src="image/test/g1.jpg"></a></li>
            </ul>
        </div>

        <div class="good-info bottom-line">
            <h4>凉鞋女夏高跟凉鞋</h4>
            <p class="mt10">
                <span>活动份数:试用5份</span>
                <span class="ml10">金币兑换:试用5份</span>
                <span class="r">25人申请</span>
            </p>
        </div>
        <div class="good-info bottom-line">
            <span class="circle">免</span>
            <span class="f16 gm">￥88.00</span>
            <span class="baoyou ml10">包邮</span>
        </div>

        <div class="good-info bottom-line weui-flex">
            <div>商品规格：</div>
            <div class="weui-flex__item">
                <div class="weui-flex">
                    <div class="weui-cell__hd"><img src="image/icon/guige.png" alt=""></div>
                    <div class="weui-cell__bd weui-cell_primary">规格随意拍</div>
                </div>
                <div class="weui-flex mt10">
                    <div class="weui-cell__hd"><img src="image/icon/yanse.png" alt=""></div>
                    <div class="weui-cell__bd weui-cell_primary">颜色随意拍</div>
                </div>
            </div>
        </div>

        <div class="good-info bottom-line weui-flex">
            <div>活动介绍：</div>
            <div class="weui-flex__item">
                <p><span class="baoyou mr10">中奖率</span>连续三天申请可提升中奖率</p>
                <p class="mt10"><span class="baoyou mr10">金币</span>每申请一次可获得0.2金币</p>
            </div>
        </div>

        <div class="rel bgwh mt15 top-line bottom-line">
            <div class="weui-flex pro-type">
                <div class="pro-type__item" :class="{gm: currentIndex == 0}" @click="changeType(0)">商品详细</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 1}" @click="changeType(1)">申请名单</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 2}" @click="changeType(2)">试用规则</div>
                <div class="pro-type__item" :class="{gm: currentIndex == 3}" @click="changeType(3)">猜你喜欢</div>
            </div>
            <div class="active-line" :style="styleObject"></div>
        </div>
        <div class="pt10">
            <%@include file="../product/goods_detail.jsp"%><%-- 商品图片 --%>
            
            <div v-show="currentIndex == 1">
                <div class="weui-panel">
                    <div class="weui-panel__hd">中奖名单(5人)</div>
                    <div class="weui-panel__bd">
                        <div class="weui-media-box">
                            暂时没有人中奖哦！
                        </div>
                    </div>
                </div>

                <div class="weui-panel">
                    <div class="weui-panel__hd">申请名单(648人)</div>
                    <div class="weui-panel__bd">
                        <div class="weui-media-box fix">
                            暂时没有人申请哦！
                        </div>
                    </div>
                </div>
            </div>

            <%@include file="../product/sygz.jsp"%><%-- 试用规则 --%>
            <%@include file="../product/cnxh.jsp"%><%-- 猜你喜欢 --%>
        </div>
        
        <div style="height: 47px"></div>
        <div class="fixed-buttom">
            <div class="weui-flex aic rel bgf5">
                <a class="btn-sm w70" href="page/index.jsp">
                    <img src="image/icon/home.png">
                    <p>首页</p>
                </a>
                <a class="weui-flex__item bge0">剩余{{countdown}}</a>
                <a class="weui-flex__item wh bgm" @click="bindUpdateStatus">{{entity.remind ? '取消提醒' : '设置提醒'}}</a>
            </div>
        </div>
    </section>
</body>
<script src="js/lib/jqueryMobileSlider.js" type="text/javascript"></script>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '商品详细';

    new Vue({
        el: '#App',
        data: {
            nowTime: new Date().getTime(),
            currentIndex: 0,
            entity: {
                remind: false
            }
        },
        computed: {
            countdown: function(){
                var startTime = new Date('2018-3-30 21:43:23'.replace(/-/g,'/')).getTime();
                var nowTime = this.nowTime;
                var cha = parseInt((startTime - nowTime)/1000);
                var h = 0,m = 0,s = cha;
                if(cha > 60){
                    s = cha%60;
                    var _m = Math.floor(cha/60);
                    m = _m;

                    if(_m > 60){
                        m = m%60;
                        h = Math.floor(_m/60);
                    }
                }

                return h + '时' + m + '分' + s + '秒';
            },
            styleObject: function(){
                return {
                    'transform': 'translate(' + (this.currentIndex * 100) + '%,0)'
                }
            }
        },
        methods: {
            //金币兑换
            bindUpdateStatus: function(){
                this.entity.remind = !this.entity.remind;
            },
            changeType: function(index){
                this.currentIndex = index;
            }
        },
        mounted: function(){
            this.$nextTick(function () {
                var that = this;

                //初始化banner动画
                $('#bannerWrap').mobileSlider({width:640,scale: 1});

                setInterval(function(){
                    that.nowTime = new Date().getTime();
                },1000);
            })
        }
    });

})
</script>
</html>