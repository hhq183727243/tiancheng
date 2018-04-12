
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
    	.larger{
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            color: #fff;
            line-height: 79px;
            background-color: rgba(51,51,51,.55);
            text-align: center;
        }
    </style>
</head>
<body>
    <%@include file="../common/header.jsp"%>

    <section id="App">
        <ul class="p10">
            <li>• 每月9号可以重新提交您的淘气值，及时更新有助于提高中奖率，特别是高价值商品哦~</li>
        </ul>

        <div class="weui-cells mt1">
            <div class="weui-cell">
                <div class="weui-cell__hd">请填写淘宝号为“<b>拾便者</b>”的淘气值</div>
            </div>
            <div class="weui-cell">
            	<div class="weui-cell__hd"><label class="weui-label">淘气值</label></div>
                <div class="weui-cell__bd">
                    <input class="weui-input" type="text" placeholder="请输入淘气值">
                </div>
            </div>
        </div>

        <div class="p15 bgwh bottom-line">
        	<h4>上传淘气值截图</h4>
        	<p class="mt5">获取方式：手机淘宝-我的的淘宝</p>
        	<div class="weui-uploader mt10">
                <div class="weui-uploader__bd">
                    <ul class="weui-uploader__files" id="uploaderFiles">
                        <li class="weui-uploader__file rel" style="background-image:url(image/other/taoqizhi.jpg)">
                            <a class="larger">查看大图</a>
                        </li>
                    </ul>
                    <div class="weui-uploader__input-box">
                        <input id="uploaderInput" class="weui-uploader__input" type="file" accept="image/*" multiple="">
                    </div>
                </div>
            </div>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn bgm" href="javascript:" @click="bindSubmit">提交</a>
        </div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '淘气值';

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