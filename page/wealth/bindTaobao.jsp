
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
    	.address{  
			padding: 10px 15px;
		    line-height:1.4; 
			box-sizing: border-box;
		}
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <ul class="p10">
            <li>• 绑定的淘宝账户需满足 注册超过三个月，且信誉等级在2心以上</li> 
            <li class="mt5">• 商家将根据您绑定的淘宝号确定中奖信息，请正确填写</li>
            <li class="mt5">• 卖家号不能注册为甜橙试用试客</li>
        </ul>

        <div class="weui-cells mt1">
            <div class="weui-cell">
            	<div class="weui-cell__hd"><label class="weui-label">淘宝会员名</label></div>
                <div class="weui-cell__bd">
                    <input class="weui-input" type="text" placeholder="审核通过后将无法修改">
                </div>
            </div>
        </div>

        <div class="p15 bgwh bottom-line">
        	<p>如何查看淘宝会员名</p>
        	<p class="mt5">获取方式: 手机淘宝-我的淘宝-点击头像</p>
        	<p class="mt10"><img src="image/wealth/huiyuanming.png" alt=""></p>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn bgm" href="javascript:" @click="bindSubmit">提交</a>
        </div>

        <ul class="p10">
            <li><h4>温馨小贴士</h4></li> 
            <li class="mt5">绑定淘宝注意事项</li> 
            <li class="mt5">• 淘宝会员名不要出现多字、少字、错别字；</li> 
            <li class="mt5">• 包含英文字母的淘宝会员名注意区分大小写；</li>
            <li class="mt5">• 请正确输入标点符号及其它字符；</li>
            <li class="mt5">• 请不要填写成淘宝昵称或手机号；</li>
        </ul>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '绑定淘宝账号';

    new Vue({
        el: '#App',
        data: {
        	isAdd: false,
        	openLayer: false,
        	list: [1,2,3],
        	region: ['省','市','县/区']
        },
        methods: {
        	
        }
    });

})
</script>
</html>