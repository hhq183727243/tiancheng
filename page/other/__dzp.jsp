
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
    <link rel="stylesheet" href="css/dzp.css" type="text/css">
    <%@include file="../common/link.jsp"%>
    <style>
        body{
            background-image: url(image/other/lott_bg.jpg);
            background-size: 100% auto;
            background-repeat: no-repeat;
            background-position: 0 0;
            background-color: #ffca06;
        }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="zp-box">
            <div class="dp-box">
                <img src="image/other/dipan.png" class="g-lottery-img">
            </div>
            <div class="zhizhen" @click="start">
                <img src="image/other/zhizhen.png">
                <span class="cishu-text">点击抽奖</span>
            </div>
        </div>

        <div class="jl">
            <p><span>剩余金币：100个</span> | <span @click="bindShowGuize">查看规则</span></p>
        </div>

        <div class="gdbox mt10">
            <strong>中奖用户</strong>
            <div class="p10 tc">
                <div class="weui-flex tit">
                    <div class="weui-flex__item">手机号</div>
                    <div class="weui-flex__item">获得奖励</div>
                </div>

                <div class="weui-flex lh24" v-for="item in winnerRecord">
                    <div class="weui-flex__item">155****3004</div>
                    <div class="weui-flex__item">抽中 50花币</div>
                </div>
            </div>
        </div>

        <div style="height: 40px"></div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/jquery.rotate.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '大转盘';

    new Vue({
        el: '#App',
        data: {
            isture: 0,
            winnerRecord: [1,2,3,4,5]
        },
        methods: {
            clickfunc: function() {
                var data = [1, 2, 3, 4, 5, 6, 7, 8, ]; //抽奖
                //data为随机出来的结果，根据概率后的结果
                data = data[Math.floor(Math.random() * data.length)]; //1~8的随机数
               
                switch (data) {
                    case 1:
                        this.rotateFunc(1, 25, '双季丰0.1%加息红包');
                        break;
                    case 2:
                        this.rotateFunc(2, 70, '双季丰满减红包10元');
                        break;
                    case 3:
                        this.rotateFunc(3, 115, '1元现金红包');
                        break;
                    case 4:
                        this.rotateFunc(4, 160, '财金币20枚');
                        break;
                    case 5:
                        this.rotateFunc(5, 203, '20元现金红包');
                        break;
                    case 6:
                        this.rotateFunc(6, 245, '双季丰0.5%加息红包');
                        break;
                    case 7:
                        this.rotateFunc(7, 290, '双季丰满减红包50元');
                        break;
                    case 8:
                        this.rotateFunc(8, 340, '5元现金红包');
                        break;
                }
            },
            rotateFunc: function(awards, angle, text) {
                var that = this;
                var $btn = $('.g-lottery-img');

                this.isture = true;
                $btn.stopRotate();
                $btn.rotate({
                    angle: 0, //旋转的角度数
                    duration: 4000, //旋转时间
                    animateTo: angle + 1440, //给定的角度,让它根据得出来的结果加上1440度旋转
                    callback: function() {
                        that.isture = false; // 标志为 执行完毕
                        weui.alert(text)
                    }
                });
            },
            start: function(){
                if (this.isture) return; // 如果在执行就退出
                this.isture = true; // 标志为 在执行
                
                this.clickfunc();
            },
        	bindShowGuize: function(){
                var html = '<section class="tl">' +
                    '<h4 data-v-188d65c2="">1、大转盘活动规则简介</h4>' +
                    '<p >大转盘活动期间，用户可通过花费10金币获得1次抽奖机会，每人每天抽奖次数无限制</p>' +
                    '<h4 >2、关于奖品</h4> ' +
                    '<p>获得不同数量的金币奖励，金币会直接进入用户的金币账户</p>' +
                    '<h4>3、面向用户</h4>' + 
                    '<p>本次活动面向甜橙试用所有金币持有用户</p>' + 
                    '<h4>4、中奖资格的排除</h4>' + 
                    '<p>活动过程中如发现有碍于其他用户公平参与本活动或者违反本活动目的之行为（包括但不限于作弊领取、机器刷奖、恶意套现等），甜橙将取消有此行为的用户参加本次活动的资格或其因活动所获赠品或因此享有的利益。</p>' +
                '</section>'

                weui.alert(html,function(){

                },{
                    title: '抽奖规则',
                    buttons: [{label: '我知道了'}]
                })
            }
        }
    });

});
</script>
</html>