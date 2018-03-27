<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- 申请名单 --%>

<div v-show="currentIndex == 1">
	<div class="weui-panel">
        <div class="weui-panel__hd">中奖名单(5人)</div>
        <div class="weui-panel__bd">
        	<div class="weui-media-box fix">
            	<div class="l mr10 mb10" v-for="item in 5">
	                <img class="portrait" src="image/test/user1.jpg">
	                <p class="mt5 tc">刘*华</p>
	            </div>
            </div>
        </div>
    </div>

    <div class="weui-panel">
        <div class="weui-panel__hd">申请名单(648人)</div>
        <div class="weui-panel__bd">
        	<div class="weui-media-box fix">
            	<div class="l mr10 mb10" v-for="item in 15">
	                <img class="portrait" src="image/test/user1.jpg">
	                <p class="mt5 tc">刘*华</p>
	            </div>
            </div>
        </div>
    </div>
</div>