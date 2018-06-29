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
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <%@include file="../common/link.jsp"%>
	<link rel="stylesheet" type="text/css" href="css/styleCJ.css"/>

</head>
<body>
	<%@include file="../common/header.jsp"%>

	<section :class="dengClass" id="deng">
		<div class="luck" id="luck">
			<table>
				<tr>
					<td class="luck-unit luck-unit-0"><img src="image/img/1.png"></td>
					<td class="luck-unit luck-unit-1"><img src="image/img/2.png"></td>
					<td class="luck-unit luck-unit-2"><img src="image/img/4.png"></td>
					<td class="luck-unit luck-unit-3"><img src="image/img/3.png"></td>
				</tr>
				<tr>
					<td class="luck-unit luck-unit-11"><img src="image/img/6.png"></td>
					<td rowspan="2" colspan="2" class="tc">
						<a href="javascript:void(0);" class="cj-btn" id="btn">20金币</br>1次</a>
						<a href="javascript:void(0);" class="cj-btn" id="btn2">80金币</br>5次</a>
					</td>
					<td class="luck-unit luck-unit-4"><img src="image/img/5.png"></td>
				</tr>
				<tr>
					<td class="luck-unit luck-unit-10"><img src="image/img/1.png"></td>
					<td class="luck-unit luck-unit-5"><img src="image/img/6.png"></td>
				</tr>
				<tr>
					<td class="luck-unit luck-unit-9"><img src="image/img/3.png"></td>
					<td class="luck-unit luck-unit-8"><img src="image/img/4.png"></td>
					<td class="luck-unit luck-unit-7"><img src="image/img/8.png"></td>
					<td class="luck-unit luck-unit-6"><img src="image/img/7.png"></td>
				</tr>
			</table>
		</div>

		<div class="jl">
            <p><span>剩余金币：100个</span> | <span @click="bindShowGuize">查看规则</span></p>
        </div>

        <div class="gdbox mt10">
            <strong>中奖用户</strong>
            <div class="p10 tc">
                <div class="weui-flex tit">
                    <div class="weui-flex__item">手机号</div>
                    <div class="weui-flex__item">获得奖励</div>
                </div>

                <div class="weui-flex lh24" v-for="item in winnerRecord">
                    <div class="weui-flex__item">155****3004</div>
                    <div class="weui-flex__item">抽中 50花币</div>
                </div>
            </div>
        </div>

        <div style="height: 40px"></div>
	</section>
</body>
<script src="js/lib/vue.js" type="text/javascript"></script>
<script src="js/lib/weui.min.js" type="text/javascript"></script>
<script>
$(function(){
	headerVue.title = '大转盘';

	new Vue({
        el: '#deng',
        data: {
        	tempNum: 0,
            winnerRecord: [1,2,3,4,5]
        },
        computed: {
        	dengClass: function(){
        		return this.tempNum%2 == 0 ? 'shanDeng' : 'shanDeng shanDeng2'
        	}
        },
        methods: {
        	bindShowGuize: function(){
                var html = '<section class="tl">' +
                    '<h4 data-v-188d65c2="">1、大转盘活动规则简介</h4>' +
                    '<p >大转盘活动期间，用户可通过花费10金币获得1次抽奖机会，每人每天抽奖次数无限制</p>' +
                    '<h4 >2、关于奖品</h4> ' +
                    '<p>获得不同数量的金币奖励，金币会直接进入用户的金币账户</p>' +
                    '<h4>3、面向用户</h4>' + 
                    '<p>本次活动面向甜橙试用所有金币持有用户</p>' + 
                    '<h4>4、中奖资格的排除</h4>' + 
                    '<p>活动过程中如发现有碍于其他用户公平参与本活动或者违反本活动目的之行为（包括但不限于作弊领取、机器刷奖、恶意套现等），甜橙将取消有此行为的用户参加本次活动的资格或其因活动所获赠品或因此享有的利益。</p>' +
                '</section>'

                weui.alert(html,function(){

                },{
                    title: '抽奖规则',
                    buttons: [{label: '我知道了'}]
                })
            }
        },
        mounted: function(){
        	this.$nextTick(function () {
        		var that = this;
                luck.init('luck');

				$("#btn").click(function(){
					if(click) {
						return false;
					}else{
						luck.speed=100;
						roll();
						click = true;
						return false;
					}
				});

				setInterval(function(){ 
					that.tempNum++;
				},500)
            })
        }
    });

	var click = false;

	var luck={
		index:-1,	//当前转动到哪个位置，起点位置
		count:0,	//总共有多少个位置
		timer:0,	//setTimeout的ID，用clearTimeout清除
		speed:20,	//初始转动速度
		times:0,	//转动次数
		cycle:50,	//转动基本次数：即至少需要转动多少次再进入抽奖环节
		prize:-1,	//中奖位置
		init: function(id){
			if($("#"+id).find(".luck-unit").length > 0) {
				$luck = $("#"+id);
				$units = $luck.find(".luck-unit");
				this.obj = $luck;
				this.count = $units.length;

				$luck.find(".luck-unit-"+this.index).addClass("active");
			};
		},

		
		roll:function(){
			var index = this.index;
			var count = this.count;
			var luck = this.obj;
			$(luck).find(".luck-unit-"+index).removeClass("active");
			
			index += 1;
			if (index>count-1) {
				index = 0;
			}

			$(luck).find(".luck-unit-"+index).addClass("active");
			this.index=index;
			return false;
		},
		stop: function(index){
			this.prize=index;
			return false;
		},
		showResult: function(prize){
			var src = this.obj.find(".luck-unit-" + prize).find('img').attr('src');

			var html = '<section class="tc">' +
				'<img src="' + src + '" width="120"/>' +
			'</section>'

            weui.alert(html,function(){

            },{
                title: '抽奖结果',
                buttons: [{label: '我知道了'}]
            })
		},
	};


	function roll(){
		luck.times += 1;
		luck.roll();

		//判断是否停止转动，当转到指定位置时且转的次数大于指定次数时，则停止
		if (luck.times > luck.cycle + 10 && luck.prize == luck.index) {
			clearTimeout(luck.timer);
			luck.showResult(luck.prize);

			luck.prize = -1;
			luck.times = 0;
			click = false;
		}else{
			if (luck.times < luck.cycle) {
				//转的次数不够时，转圈速度递增
				luck.speed -= 10;
			}else if(luck.times == luck.cycle) {
				//转圈次数够了，则通过随机函数产生抽中奖品
				var index = Math.random()*(luck.count)|0;

				luck.prize = index;		
			}else{
				if (luck.times > luck.cycle + 10 
					&& ((luck.prize == 0 && luck.index == 7) || luck.prize == luck.index + 1)) {
					luck.speed += 110;
				}else{
					luck.speed += 20;
				}
			}

			//速度最快控制，周期最低40
			if (luck.speed < 40) {
				luck.speed = 40;
			};

			luck.timer = setTimeout(roll,luck.speed);
		}
		return false;
	}
});
</script>
</html>