<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<header class="bottom-line" id="headerApp">
    <div class="weui-flex aic container">
        <div class="w30 ml10" @click="returnBack">
            <img width="30" src="image/icon/return.png" alt="">
        </div>
        <div class="weui-flex__item tc f16">{{title}}</div>
        <div class="w30 mr10"></div>
    </div>
</header>
<div style="height: 42px;"></div>

<script>
var headerVue = null;

$(function(){
    headerVue = new Vue({
        el: '#headerApp',
        data: {
        	title: '甜橙试用'
        },
        computed: {

        },
        methods: {
            returnBack: function(){
                if(document.referrer != ''){
                    history.go('-1')
                }else{
                    location.href = 'page/index.jsp';
                }
            }
        }
    });

})
</script>