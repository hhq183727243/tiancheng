
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
        <div class="weui-cells__title">如不小心关闭页面可直接在我的试用-新手任务打开本页面~</div>
        <div class="weui-form-preview mb10" v-for="(item,index) in list">
			<div class="address">
				<p>刘德华，13898232228<a class="r gm" @click="updateItem(item)">编辑</a></p>
				<p class="mt5">福建 厦门市 思明区 火炬高新区软件园一期创新大厦B区202室</p>
			</div>
		</div>

		<div class="weui-btn-area">
			<button type="button" class="weui-btn bgm" @click="addItem">新增</button>
		</div>

		<%-- 编辑添加弹窗 --%>
		<div class="layer" :class="{open: openLayer == true}">
		    <div class="mask" @click="hideLayer()"></div>
		    <div class="layer-inner">
		        <div class="weui-cells__title">{{isAdd ? '添加地址' : '编辑地址'}}</div>
		        <div class="weui-cells">
		            <div class="weui-cell">
		            	<div class="weui-cell__hd"><label class="weui-label">姓名</label></div>
		                <div class="weui-cell__bd">
		                    <input class="weui-input" type="text" placeholder="姓名">
		                </div>
		            </div>
		            <div class="weui-cell">
		            	<div class="weui-cell__hd"><label class="weui-label">电话号码</label></div>
		                <div class="weui-cell__bd">
		                    <input class="weui-input" type="text" placeholder="电话号码">
		                </div>
		            </div>
		            <div class="weui-cell">
		                <div class="weui-cell__hd"><label class="weui-label">地区</label></div>
		                <div class="weui-cell__bd">
		                    <div class="weui-input" @click="chooseContry">{{region[0] + region[1] + region[2]}}</div>
		                </div>
		            </div>
		            <div class="weui-cell">
		            	<div class="weui-cell__hd"><label class="weui-label">详细地址</label></div>
		                <div class="weui-cell__bd">
		                    <input class="weui-input" type="text" placeholder="详细地址">
		                </div>
		            </div>
		        </div>

		        <div class="weui-btn-area">
		            <a class="weui-btn bgm" href="javascript:" @click="bindSubmit">保存</a>
		        </div>
		    </div>
		</div>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    headerVue.title = '收货地址';

    new Vue({
        el: '#App',
        data: {
        	isAdd: false,
        	openLayer: false,
        	list: [1,2,3],
        	region: ['省','市','县/区']
        },
        methods: {
        	hideLayer: function(name){
                this.openLayer = false;
            },
        	updateItem: function(item){
        		this.isAdd = false;
        		this.openLayer = true;
        	},
        	addItem: function(){
        		this.isAdd = true;
        		this.openLayer = true;
        	},
        	chooseContry: function(){
        		var that = this;
        		weui.picker([
            		{
	        			label: '福建省',
	        			value: '福建省',
	        			children: [
	        				{
	        					label: '福州市',
	        					value: '福州市',
	        					children: [
	        						{label: '闽侯县',value: '闽侯县'},
	        						{label: '晋安区',value: '晋安区'}
	        					]
	        				},
	        				{
	        					label: '厦门市',
	        					value: '厦门市',
	        					children: [
	        						{label: '湖里区',value: '湖里区'},
	        						{label: '思明区',value: '思明区'}
	        					]
	        				},
	        			]
        			}
        		],{
        			defaultValue: ['福建省', '厦门市','湖里区'],
        			onConfirm: function (result) {
			        	console.log(result);
			        	that.region = result;
			    	}
				})
        	},
        	bindSubmit: function(){

        	}
        }
    });

})
</script>
</html>