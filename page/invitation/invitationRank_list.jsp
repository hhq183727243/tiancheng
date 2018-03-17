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
        .weui-navbar__item{ color: #fff; }
        .weui-navbar__item:after{ border-right: 1px solid #ffa598; }
        .weui-navbar__item.weui-bar__item_on, .weui-navbar__item:active {
            background-color: #ff9a02;
        }
    </style>
</head>
<body>
    <section id="App" class="activity-voucher">
        <div class="weui-navbar bgm">
            <div class="weui-navbar__item">
                <a href="page/invitation/invitation_index.jsp">邀请有礼</a>
            </div>
            <div class="weui-navbar__item">
                <a href="page/invitation/invitationRecord_list.jsp">邀请记录</a>
            </div>
            <div class="weui-navbar__item weui-bar__item_on">
                <a href="page/invitation/invitationRank_list.jsp">大神排行榜</a>
            </div>
        </div>
        <div class="mt20">
            <div class="tc"><img class="w120" src="image/invitation/rank-title.png" alt=""></div>
            <div class="rank-list">
                <ul class="weui-cells">
                    <li class="weui-cell" v-for="item in 10">
                        <div class="weui-cell__hd">
                            <img class="icon-rank" v-if="item == 1" src="image/invitation/rank-1.png"/>
                            <img class="icon-rank" v-if="item == 2" src="image/invitation/rank-2.png"/>
                            <img class="icon-rank" v-if="item == 3" src="image/invitation/rank-3.png"/>
                            <span class="num" v-if="item > 3">{{item}}</span>
                        </div>
                        <div class="ml10 mr10"><img class="portrait" src="image/test/user1.jpg"/></div>
                        <div class="weui-cell__bd">
                            <h4>初***心</h4>
                            <p class="g9">已邀请1276人</p>
                        </div>
                        <div class="weui-cell__ft gm">获得12470元</div>
                    </li>
                </ul>

                <div class="weui-loadmore weui-loadmore_line" v-show="!hasMoreData">
                    <span class="weui-loadmore__tips">暂无相关数据</span>
                </div>
            </div>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    new Vue({
        el: '#App',
        data: {

        },
        methods: {

        }
    });

})
</script>
</html>