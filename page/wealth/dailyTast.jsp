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
        .weui-cell__hd img{ width: 1.7rem;height: 1.7rem; }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="weui-cells__title">如不小心关闭页面可直接在我的试用-新手任务打开本页面~</div>
        <div class="weui-cells task-list">
            <div class="weui-cell" href="page/user/bangding.jsp">
                <div class="weui-cell__hd"><img src="image/wealth/taoqizhi.png" alt=""></div>
                <div class="weui-cell__bd">
                    <h4>每日挑战</h4>
                    <div class="g9">明早准时打卡可瓜分金额</div>
                </div>
                <div class="weui-cell__ft"><a class="btn">去完成</a></div>
            </div>
            
            <div class="weui-cell">
                <div class="weui-cell__hd"><img src="image/wealth/shenqing.png" alt=""></div>
                <div class="weui-cell__bd">
                    <h4>每日申请</h4>
                    <div class="g9">每天申请商品，提示中奖率</div>
                    <div class="weui-progress">
                        <div class="weui-progress__bar">
                            <div class="weui-progress__inner-bar js_progress" style="width: 50%;"></div>
                        </div>
                        <div class="ml5">50%</div>
                    </div>
                </div>
                <div class="weui-cell__ft"><a class="btn" href="page/index.jsp">去完成</a></div>
            </div>
            <div class="weui-cell">
                <div class="weui-cell__hd"><img src="image/wealth/yaoqing.png" alt=""></div>
                <div class="weui-cell__bd">
                    <h4>邀请好友</h4>
                    <div class="g9">邀请好友成功注册</div>
                </div>
                <div class="weui-cell__ft"><a class="btn" href="page/invitation/invitation_index.jsp">去完成</a></div>
            </div>

            <div class="weui-cell">
                <div class="weui-cell__hd"><img src="image/wealth/duihuan.png" alt=""></div>
                <div class="weui-cell__bd">
                    <h4>金币兑换</h4>
                    <div class="g9">金币兑换好物</div>
                </div>
                <div class="weui-cell__ft">
                    <span class="mr10 gm">+5金币</span><a class="btn finish" href="page/wealth/codexChange.jsp">已完成</a>
                </div>
            </div>

            <div class="weui-cell" href="page/user/bangding.jsp">
                <div class="weui-cell__hd"><img src="image/wealth/dazhuanpan.png" alt=""></div>
                <div class="weui-cell__bd">
                    <h4>幸运大转盘</h4>
                    <div class="g9">参与幸运大转盘, 金币翻10倍</div>
                </div>
                <div class="weui-cell__ft"><a class="btn">去完成</a></div>
            </div>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '每日任务';

    new Vue({
        el: '#App',
        data: {

        }
    });

})
</script>
</html>