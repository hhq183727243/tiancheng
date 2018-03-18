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
</head>
<body>
    <section id="App">
        <div class="user-top wh">
            <div class="fix lh22">
                <a class="l" href="page/user/userInfo.jsp"><img width="22" src="image/icon/set.png" alt=""> 设置</a>
                <a class="r"><img width="22" src="image/icon/kefu.png" alt=""> 咨询甜橙</a>
            </div>
            <div class="weui-flex mt10 aic">
                <div><img class="portrait" src="image/test/p1.png"/></div>
                <div class="ml20 f16">刘德华</div>
                <div class="weui-flex__item tr lh22">
                    <a href="page/wealth/newTask.jsp"><img width="22" src="image/icon/renwu.png" alt=""> 新手任务</a>
                </div>
            </div>
        </div>
        <div class="weui-flex pt10 pb10 bottom-line bgwh tc">
            <a class="weui-flex__item bre" href="page/wealth/coinDetail.jsp">
                <p>0.00</p>
                <p class="mt5">金币余额</p>
            </a>
            <a class="weui-flex__item bre" href="page/wealth/cashshow.jsp">
                <p>0.00</p>
                <p class="mt5">可提现余额</p>
            </a>
            <a class="weui-flex__item" href="page/wealth/cashback.jsp">
                <p>0.00</p>
                <p class="mt5">确认中余额</p>
            </a>
        </div>

        <div class="weui-cells">
            <a class="weui-cell weui-cell_access" href="javascript:;">
                <div class="weui-cell__hd"><img src="image/icon/order.png" alt=""></div>
                <div class="weui-cell__bd">我的订单</div>
                <div class="weui-cell__ft">查看全部订单</div>
            </a>
            <div class="weui-flex pt10 pb10 tc top-line">
                <a class="weui-flex__item">
                    <p><img height="24" src="image/icon/kaijiang.png" alt=""></p>
                    <p class="mt5">待开奖</p>
                </a>
                <a class="weui-flex__item">
                    <p><img height="24" src="image/icon/liwu.png" alt=""></p>
                    <p class="mt5">待领奖</p>
                </a>
                <a class="weui-flex__item">
                    <p><img height="24" src="image/icon/pingjia.png" alt=""></p>
                    <p class="mt5">待评价</p>
                </a>
                <a class="weui-flex__item">
                    <p><img height="24" src="image/icon/wancheng.png" alt=""></p>
                    <p class="mt5">已完成</p>
                </a>
                <a class="weui-flex__item">
                    <p><img height="24" src="image/icon/renwu.png" alt=""></p>
                    <p class="mt5">追评任务</p>
                </a>
            </div>
        </div>

        <div class="weui-cells">
            <a class="weui-cell weui-cell_access" href="page/user/followUp_list.jsp">
                <div class="weui-cell__hd"><img src="image/icon/guanzhu.png" alt=""></div>
                <div class="weui-cell__bd">我的关注</div>
                <div class="weui-cell__ft"></div>
            </a>
            <a class="weui-cell weui-cell_access" href="page/user/historyRecord_list.jsp">
                <div class="weui-cell__hd"><img src="image/icon/zuji.png" alt=""></div>
                <div class="weui-cell__bd">我的足迹</div>
                <div class="weui-cell__ft"></div>
            </a>
            <a class="weui-cell weui-cell_access" href="page/user/coupons_list.jsp">
                <div class="weui-cell__hd"><img src="image/icon/youhuiquan.png" alt=""></div>
                <div class="weui-cell__bd">我的必中券</div>
                <div class="weui-cell__ft"></div>
            </a>
            <a class="weui-cell weui-cell_access" href="page/invitation/invitation_index.jsp">
                <div class="weui-cell__hd"><img src="image/icon/fankui.png" alt=""></div>
                <div class="weui-cell__bd">好友邀请</div>
                <div class="weui-cell__ft"></div>
            </a>
            <a class="weui-cell weui-cell_access" href="page/user/questionAndAnswer.jsp">
                <div class="weui-cell__hd"><img src="image/icon/bangzhu.png" alt=""></div>
                <div class="weui-cell__bd">帮助与客服</div>
                <div class="weui-cell__ft"></div>
            </a>
        </div>
    </section>

    <%@include file="../common/mianNav.jsp"%>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
   

})
</script>
</html>