
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
        .steps_tab {
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            width: 80%;
            border: 1px solid #fcc103;
            border-radius: .2rem;
            margin-left: auto;
            margin-right: auto;
            color: #fcc103;
        }
        .steps_tab li {
            -webkit-box-flex: 0;
            -webkit-flex: 0 0 50%;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            height: 1rem;
            font-size: .46rem;
            line-height: 1rem;
            text-align: center;
        }
        .steps_tab .current {
            color: #fff;
            background-color: #fcc103;
        }

        .steps_show li .show_content {
            border-left: .04rem solid #e3e3e3;
            margin-left: .6rem;
            margin-top: .4rem;
            margin-bottom: .4rem;
            min-height: 1.3rem;
        }
        .steps_show .show_title{ line-height: 28px; }
        .steps_show img{ opacity: 0.8 }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="p20 tc bgwh">
            <h4>----------双收藏任务----------</h4>
            
            <ul class="steps_tab fix mt20">
                <li :class="{current: stepIndex == 0}" @click="bindSwitchTab(0)">当前操作流程</li> 
                <li :class="{current: stepIndex == 1}" @click="bindSwitchTab(1)">显示全部流程</li>
            </ul>
        </div>

        <div class="p15 bgwh mt15" v-show="stepIndex == 0">
            <h4>第一步: 通过购物车找到活动宝贝</h4>
            <p class="mt10 g9">打开淘宝，进入购物车，找到目标宝贝，并点击宝贝至详情页！</p>
           
            <h4 class="mt20">第二步: 收藏宝贝截图</h4>
            <p class="mt10 g9">在宝贝详情页点击<span class="gm">收藏宝贝</span>，并提供在<span class="gm">我的淘宝-收藏夹</span>的宝贝截图！</p>
            <div class="weui-uploader mt10">
                <div class="weui-uploader__bd">
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li class="weui-uploader__file" style="background-image:url(image/test/p1.jpg)"></li>
                    </ul>
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInput" class="weui-uploader__input" type="file" accept="image/*" multiple="">
                    </div>
                </div>
            </div>

            <h4 class="mt20">第三步: 关注店铺截图</h4>
            <p class="mt10 g9">在店铺首页点击关注，并提供在<span class="gm">我的淘宝-关注店铺</span>的截图</p>
            <div class="weui-uploader mt10">
                <div class="weui-uploader__bd">
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li class="weui-uploader__file" style="background-image:url(image/test/p1.jpg)"></li>
                    </ul>
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInput" class="weui-uploader__input" type="file" accept="image/*" multiple="">
                    </div>
                </div>
            </div>
        </div>

        <div class="p15 bgwh mt15" v-show="stepIndex == 1">
            <ul class="steps_show">
                <li v-for="(item,index) in step">
                    <div class="show_title clearfix">
                        <img width="30" :src="'image/goods/step_' + index + '.png'" alt=""/>
                        <span class="f16">{{item}}</span>
                    </div> 
                    <div class="show_content" v-if="index != 4"></div>
                </li>
            </ul>
        </div>
        
        <div class="p20 mt15 bgwh bottom-line top-line">
            <h4 class="tc">----------温馨提示----------</h4>
            <p class="mt10">1.部分商品不同规格价格不同</p>
            <p class="mt10">2.请核实您购买的商品是否为¥35.00</p>
            <p class="mt10">3.当前商品为包邮试用</p>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn bgm" href="page/product/sysq_success.jsp" @click="submitForm">收藏截图成功，提交申请</a>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '试用申请-双收藏';

    new Vue({
        el: '#App',
        data: {
            step: ['申请试用','中奖了,垫付购买','预评价','上传淘宝天猫评价截图','平台返款'],
        	stepIndex: 0
        },
        methods: {
            bindSwitchTab: function(index){
                this.stepIndex = index;
            },
        	submitForm: function(){
                weui.alert('请填写完整')
            }
        }
    });

})
</script>
</html>