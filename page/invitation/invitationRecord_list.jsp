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
            <div class="weui-navbar__item weui-bar__item_on">
                <a href="page/invitation/invitationRecord_list.jsp">邀请记录</a>
            </div>
            <div class="weui-navbar__item">
                <a href="page/invitation/invitationRank_list.jsp">大神排行榜</a>
            </div>
        </div>
        <div class="mt20">
            <div class="tc"><img class="w120" src="image/invitation/record.png" alt=""></div>
            <div class="rank-list">
                <ul class="weui-cells">
                    <li class="weui-cell" v-for="item in 5">
                        <div class="mr10"><img class="portrait" src="image/test/user1.jpg"/></div>
                        <div class="weui-cell__bd">
                            <h4>初***心</h4>
                        </div>
                        <div class="weui-cell__ft">2018年2月10日16:53:28</div>
                    </li>
                </ul>

                <%@include file="../common/loading.jsp"%>
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