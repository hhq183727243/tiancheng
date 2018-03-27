
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
    	.weui-media-box_appmsg .weui-media-box__hd{ width: 110px;height: 110px; }
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
        <div class="weui-panel weui-panel_access">
            <div class="weui-panel__hd"><img width="20" src="image/icon/store.png"> 酷*美*女*</div>
            <div class="weui-panel__bd">
                <div class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd rel">
                        <img class="weui-media-box__thumb" src="image/test/p1.jpg" alt="">
                    </div>
                    <div class="weui-media-box__bd g9">
                        <h4 class="weui-media-box__title g3">练字帖成人楷书</h4>
                        <p class="mt5">规格：随意拍</p>
                        <p class="mt5">颜色：随意拍</p>
                        <p class="mt5">价格：<span class="gm">￥89</span><span class="baoyou ml10">包邮</span></p>
                        <p class="mt5">数量：1件</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="p20 tc mt15 bgwh">
            <h4>----------开始申请试用----------</h4>
            <p class="mt10">完成以下任务，您将有机会获得试用资格!</p>
            
            <ul class="steps_tab fix mt20">
                <li :class="{current: stepIndex == 0}" @click="bindSwitchTab(0)">当前操作流程</li> 
                <li :class="{current: stepIndex == 1}" @click="bindSwitchTab(1)">显示全部流程</li>
            </ul>
        </div>

        <div class="p15 bgwh mt15" v-show="stepIndex == 0">
            <h4>第一步: 搜索关键词</h4>
            <p class="mt10">搜索关键词：<span class="gm">文艺范毛线背心毛衣</span></p>
            <p class="mt10">选择排序方式：综合排序</p>
            <p class="mt10">筛选商品所在地：全国</p>
            <p class="mt10">找不到商品？<span class="r tdl">换一组关键词</span></p>

            <p class="mt20">请根据以下提示找到试用商品</p>
            <div class="weui-flex aic bgf5 mt10">
                <div class="mr15">
                    <img width="70" src="image/test/p1.jpg" alt="">
                </div>
                <div class="weui-flex__item g9">
                    <p>商家店铺名称：<span class="gm">酷*美*女*</span></p>
                    <p class="mt5">价格：<span class="gm">￥89</span></p>
                </div>
            </div>

            <h4 class="mt20">第二步: 核对淘口令</h4>
            <p class="mt10">点击手机淘宝商品详情的【分享】按钮，选择【复制链接】</p>
            <div class="mt10 bgf5 p5">
                <textarea class="weui-textarea bgf5" rows="5" placeholder="分享您的商品链接, 粘贴至此处"></textarea>
            </div>
            <p class="mt10 tc"><button class="weui-btn weui-btn_mini bgm">点击核对</button></p>

            <h4 class="mt20">第三步: 将商品加入购物车</h4>
            <p class="mt10">请核对商品信息无误后浏览商品详情2-3分钟，并将商品加入购物车，以便您在之后的任务过程中更容易找到试用商品</p>
            <p class="mt10">
                <img width="100" height="100" src="image/goods/eg.jpg"/>
                <span class="tdl ml10">查看大图</span>
            </p>

            <h4 class="mt20">第四步: 关联淘宝会员名</h4>
            <p class="mt10">淘宝会员名会影响中奖后领取试用品，请认真填写淘宝会员名</p>
            <div class="mt10 bgf5 p10">
                <input type="text" class="weui-textarea bgf5" placeholder="分享您的商品链接, 粘贴至此处"/>
            </div>
            <div class="mt10 weui-flex">
                <span class="gm">注：</span>
                <div class="weui-flex__item">
                    <p>1.关联的淘宝会员名需超过3个月且信誉等级超过2心以上</p>
                    <p class="mt5">2.请关联申请试用所使用的淘宝会员名</p>
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
            <h4 class="tc">----------注意事项----------</h4>
            <p class="mt10">1.部分商品不同规格价格不同，请将指定规格加入购物车</p>
            <p class="mt10">2.请核实您购买的商品是否为¥35.00</p>
            <p class="mt10">3.当前商品为包邮试用</p>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn bgm" href="page/product/sysq_success.jsp" @click="submitForm">商品已加入购物车，提交申请</a>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '试用申请';

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