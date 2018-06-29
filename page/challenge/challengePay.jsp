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
       .amount-item{ 
            padding: 10px; 
            border: 1px solid #e5e5e5;
            border-radius: 10px;
            text-align: center;
        }
        .amount-item.active{
            border: 1px solid #fcc103;
            color: #fcc103;
        }

        .chooce-pay h4{
            padding: 10px 15px;
            margin-bottom: 0;
            background-color: #f5f5f5;
        }
    </style>
</head>
<body class="bgwh"> 
    <%@include file="../common/header.jsp"%>

    <section id="App">
       <div class="mt30 tc f16">
            <p>参与明天6:00 - 8:00</p>
            <p class="mt10">早起分钱挑战</p>
       </div>

       <div class="weui-flex">
            <div class="weui-flex__item p10">
                <div class="amount-item active">
                    <p><span class="f18">1</span>份</p>
                    <p class="mt5">小试牛刀</p>
                </div>
            </div>
            <div class="weui-flex__item p10">
                <div class="amount-item">
                    <p><span class="f18">2</span>份</p>
                    <p class="mt5">出手不凡</p>
                </div>
            </div>
        </div>

        <div class="weui-flex">
            <div class="weui-flex__item p10">
                <div class="amount-item">
                    <p><span class="f18">5</span>份</p>
                    <p class="mt5">锋芒毕露</p>
                </div>
            </div>
            <div class="weui-flex__item p10">
                <div class="amount-item">
                    <p><span class="f18">10</span>份</p>
                    <p class="mt5">心狠手辣</p>
                </div>
            </div>
        </div>

        <p class="p5 gm">提示：1份等于1元，购买份数越多，打卡成功后赚的越多</p>

        <div class="chooce-pay mt10">
            <h4 class="weui-cells__title">选择支付方式</h4>
            <div class="weui-cells weui-cells_checkbox">
                <label class="weui-cell weui-check__label" for="s12">
                    <div class="weui-cell__hd">
                        <input type="radio" class="weui-check" id="s12" checked>
                        <i class="weui-icon-checked"></i>
                    </div>
                    <div class="weui-cell__bd">微信</div>
                </label>
            </div>

            <div class="weui-btn-area">
                <a class="weui-btn bgm" href="javascript:">支付</a>
            </div>
       </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '早起挑战';

    new Vue({
        el: '#App',
        data: {

        },
        computed: {

        },
        methods: {
            
        }
    });

})
</script>
</html>