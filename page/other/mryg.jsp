
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
    	.weui-media-box_appmsg .weui-media-box__hd{ width: 90px;height: 90px; }
        .btn-remind{
            z-index: 9;
            position: absolute;
            bottom: 12px;
            right: 15px;
        }
        .btn-remind .weui-btn{
            background-color: #ffc300;
            border:1px solid #ffc300;
        }
        .btn-remind .weui-btn:after{ content: none; }
        .btn-remind .weui-btn.active{
            background-color: #fff;
            color: #ffc300;
            border:1px solid #ffc300;
        }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <p><img width="100%" src="image/banner/mrsx.png" alt=""></p>
        <p class="lh32 pl15 bgwh bottom-line">请务必关注甜橙试用，将于开奖前5分钟提醒</p>

        <div class="weui-panel weui-panel_access">
            <div class="weui-panel__bd">
                <div class="rel" v-for="(item,index) in list">
                    <div class="btn-remind">   
                        <span class="weui-btn weui-btn_mini r" :class="{active: item.remind}" @click="bindUpdateStatus(item,index)">{{item.remind ? '取消提醒' : '设置提醒'}}</span>
                    </div>
                    <a class="weui-media-box weui-media-box_appmsg" href="page/other/mryg_detail.jsp">
                        <div class="weui-media-box__hd rel">
                            <img class="weui-media-box__thumb" src="image/test/p1.jpg" alt="">
                        </div>
                        <div class="weui-media-box__bd g9">
                            <h4 class="weui-media-box__title g3">练字帖成人楷书</h4>
                            <p class="weui-media-box__desc mt5">限量30份 免费送</p>
                            <p class="mt5 gm">52人已关注 | 明天09:00开抢</p>
                            <p class="mt5 fix">
                                <span class="circle">免</span>
                                <span class="price">￥128.00</span>
                            </p>
                        </div>
                    </a>
                </div>
            </div>
        </div>

        <%@include file="../common/loading.jsp"%>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '明日预告';

    new Vue({
        el: '#App',
        data: {
            list: [{remind: false},{remind: false},{remind: false}]
        },
        methods: {
            bindUpdateStatus: function(item,index){
                if(item.remind == undefined){
                    this.$set(item,'remind',true)
                }else{
                    item.remind = !item.remind;
                }
            }
        }
    });

})
</script>
</html>