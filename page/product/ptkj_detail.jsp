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
                <span>今日剩余开奖次数12次</span>
                <span class="r">开奖时间点：每2人申请</span>
            </p>
            <p class="mt10">
                <span>25人申请</span>
                <span class="gm r">距开奖仅差一人申请</span>
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
                <p><span class="baoyou mr10">拼团</span>人满开团，中奖率高</p>
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
            <%@include file="goods_detail.jsp"%><%-- 商品图片 --%>
            <%@include file="application_list.jsp"%><%-- 申请名单 --%>
            <%@include file="sygz.jsp"%><%-- 试用规则 --%>
            <%@include file="cnxh.jsp"%><%-- 猜你喜欢 --%>
        </div>
        
        <div style="height: 47px"></div>
        <div class="fixed-buttom">
            <div class="weui-flex aic rel bgf5">
                <a class="btn-sm w70" href="page/index.jsp">
                    <img src="image/icon/home.png">
                    <p>首页</p>
                </a>
                <a class="btn-sm w70">
                    <img src="image/icon/follow.png">
                    <p>关注</p>
                </a>
                <a class="weui-flex__item wh bg50" @click="bindCodeExchange">2000金币兑换</a>
                <a class="weui-flex__item wh bgm" href="page/product/ptkj_apply_!.jsp">参团领取</a>
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
            //金币兑换
            bindCodeExchange: function(){
                weui.confirm('申请兑换后需要在6小时内完成并提交任务，即可直接领取试用，无需等待系统审核。若中途放弃或超时未领取，申请不通过且金币不返回。',{
                    title:'确认使用2000金币兑换商品',
                    buttons: [{
                        label: "取消",
                        type: "default",
                        onClick: function(){}
                    }, {
                        label: "确定兑换",
                        type: "primary",
                        onClick: function(){
                            weui.toast('兑换成功');
                        }
                    }]
                })
            },
            changeType: function(index){
                this.currentIndex = index;
            }
        },
        mounted: function(){
            this.$nextTick(function () {
                //初始化banner动画
                $('#bannerWrap').mobileSlider({width:640,scale: 1});
            })
        }
    });

})
</script>
</html>