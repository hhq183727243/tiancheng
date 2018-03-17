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
        .weui-btn_mini{ padding: 0 10px; line-height: 1.8; }
        .weui-media-box_appmsg .weui-media-box__hd{ width: 90px;height: 90px; }
    </style>
</head>
<body> 
    <header class="bottom-line">
        <div class="weui-flex aic container">
            <div class="w30 ml10" id="returnBtn">
                <img width="30" src="image/icon/return.png" alt="">
            </div>
            <div class="weui-flex__item tc f16">我的足迹</div>
            <div class="w30 mr10"></div>
        </div>
    </header>
    <div style="height: 42px;"></div>

    <section id="App">
        <div class="weui-cells__title lh18">我的足迹
            <span class="gm r" @click="bindManagement" v-show="!management"><img width="18" src="image/icon/set_hover.png"> 管理</span>
            
            <span class="gm r" v-show="management">
                <span @click="bindCancelMore" >批量删除记录</span>
                <span class="ml10" @click="management = false">完成</span>
            </span>
        </div>
        <div class="weui-panel weui-panel_access follow-up-list" v-for="(item,index) in list" @click="bindChooseItme(item)">
            <div class="weui-panel__hd">2018-3-17</div>
            <div class="weui-panel__bd">
                <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd rel">
                        <img class="weui-media-box__thumb" src="image/test/p1.png" alt="">
                        <i v-if="management" class="icon-check weui-icon-success" :class="{checked: item.checked}"></i>
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">练字帖成人楷书</h4>
                        <p class="weui-media-box__desc mt5">限量30份 免费送</p>
                        <p class="mt5 lh24 fix">
                            <del class="gm">免￥80</del>
                            <span class="weui-btn weui-btn_mini weui-btn_plain-primary r"  @click.stop="deleteItem(item,index)">删除</span>
                        </p>
                    </div>
                </a>
            </div>
        </div>

        <%@include file="../common/loading.jsp"%>
    </section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>

<script>
$(function(){
    new Vue({
        el: '#App',
        data: {
            management: false,
            list: [{checked: false},{checked: false},{checked: false}]
        },
        computed: {
            //已选择数
            checkedNum: function(){
                var num = 0;

                this.list.forEach(function(item,index){
                    if(item.checked){
                       num++; 
                    }
                });

                return num;
            }
        },
        methods: {
            bindManagement: function(){
                this.management = true;
            },
            bindChooseItme: function(item){
                if(item.checked == undefined){
                    this.$set(item,'checked',true)
                }else{
                    item.checked = !item.checked;
                }
            },

            //批量取消关注
            bindCancelMore: function(){
                var that = this;
                
                if(this.checkedNum == 0){
                    weui.alert('请选择要删除的记录');
                }else{
                    weui.confirm('共选择' + this.checkedNum + '条记录，确认删除？',function(){
                        weui.toast('操作成功');
                        that.management = false;
                    })
                }
            },
            deleteItem: function(item,index){
                var that = this;

                weui.confirm('确认删除？',function(){
                    that.list.splice(index,1);
                    weui.toast('操作成功');
                })
            }
        }
    });

})
</script>
</html>