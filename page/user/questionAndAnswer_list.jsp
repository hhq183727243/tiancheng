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
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <div class="weui-cells__title">提现相关</div>
        <div class="weui-cells">
            <a class="weui-cell weui-cell_access j-show-answer" href="javascript:;">
                <div class="weui-cell__bd">只要申请就一定会中奖吗</div>
                <div class="weui-cell__ft"></div>
            </a>
            <a class="weui-cell weui-cell_access j-show-answer" href="javascript:;">
                <div class="weui-cell__bd">金币有什么用</div>
                <div class="weui-cell__ft"></div>
            </a>
            <a class="weui-cell weui-cell_access j-show-answer" href="javascript:;">
                <div class="weui-cell__bd">垫付后一定会返款吗</div>
                <div class="weui-cell__ft"></div>
            </a>
        </div>
        
        <%@include file="../common/loading.jsp"%>
        
        <div style="height: 46px;"></div>
        <div class="fixed-buttom">
             <a href="javascript:;" class="weui-btn bgm">在线客服</a>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '使用帮助';
    
    $('.j-show-answer').click(function(){
        var title = $(this).find('.weui-cell__bd:first').text();

        weui.alert('<div class="f12 tl lh22">不是的哦！新人有一次必中机会，但是后续不保证每次申请都能中奖，申请越多，中奖率越高，如果中奖了，千万要记得去领奖</div>',function(){

        },{
            title: title,
            buttons: [{label: '我知道了'}]
        })
    })

})
</script>
</html>