/**
 * vue 组件
 * author hhq
 * date 2018-4-27 10:29:27
 */

//Vue 注册全局过滤器，全局方法 Vue.filter() 注册一个自定义过滤器,必须放在Vue实例化前面  
Vue.filter('dataFilter', function(value) {   
    if(!value){
    	return '';
    }
    return (new Date(value.replace(/-/g,'/'))).format('yyyy-MM-dd');  
}); 


//分页组件
Vue.component('page-cpt',{
	props : ['pages','current'],
	template : '<div class="text-center" v-if="pages > 0">' +
		'<ul class="pagination">' + 
			'<li :class="{disabled : current === 1}"><a @click="changePage(1)" :href="href">首页</a></li>' +
			'<li :class="{disabled : current === 1}"><a @click="changePage(current - 1)" :href="href">上一页</a></li>' +
			'<template v-for="n in pages > 10 ? 10 : pages">' +
			'<li v-if="current > 5 &&　current <= pages - 5"><a @click="changePage(n + current - 5)" :class="{current_page : current === n + current - 5}" :href="href">{{n + current - 5}}</a></li>' +
			'<li v-if="current > 5 &&　current > pages - 5"><a @click="changePage(n + pages - 10)" :class="{current_page : current === n + pages - 10}" :href="href">{{n + pages - 10}}</a></li>' +
			'<li v-if="current <= 5"><a @click="changePage(n)" :class="{current_page : current === n}" :href="href">{{n}}</a></li>' +
			'</template>'+

			'<li :class="{disabled : current === pages}"><a @click="changePage(current + 1)" :href="href">下一页</a></li>' +
			'<li :class="{disabled : current === pages}"><a @click="changePage(pages)" :href="href">末页</a></li>' +
			'<li class="disabled"><a :href="href">共{{current}}/{{pages}}页</a></li>' +
		'</ul>' +
	'</div>',
	
	methods : {
		//跳转页面
		changePage : function(cPage){
			if(cPage < 1 || cPage > this.pages){
				return;
			}
			
			//this.current = cPage;
			var a = this.$emit('switch',cPage);
		}
	},
	data : function(){
		return { 
			href : 'javascript:void(0);',
			//current : this.pageChosen
		};
	}
});

Vue.component('input-cpt',{
	props: {
		label: {required: true},
		value: {},
		type: { default: 'text'},
		//是否必填
		rq: {
			type: Boolean,
			default: false
		},
		max: { 
			type: Number,
			default: 100
		},
	},
	template: '<div class="profile-info-row">' +
		'<div class="profile-info-name"><span v-if="rq" class="required">*</span>{{label}}</div>' +
		'<div class="profile-info-value">' +
			'<textarea v-if="type == \'textarea\'" :maxLength="max" :value="value" v-on:input="updateValue($event.target.value)" :placeholder="\'请输入\' + label"></textarea>' +
			'<input v-else :type="type" :maxLength="max" ref="input" :value="value" v-on:input="updateValue($event.target.value)" :placeholder="\'请输入\' + label">' +
		'</div>' +
	'</div>',
	methods: {
		updateValue: function (value) {
	      	// 通过 input 事件带出数值
	      	this.$emit('input',value)
	    }
	}
});

Vue.component('select-cpt',{
	props: {
		label: {required: true},
		value: {},
		options: Array,
		//是否必选
		rq: {
			type: Boolean,
			default: false
		},
		isobj: { default: true}
	},
	template: '<div class="profile-info-row">' +
		'<div class="profile-info-name"><span v-if="rq" class="required">*</span>{{label}}</div>' +
		'<div class="profile-info-value">' +
			'<select :value="value" v-on:change="updateValue($event.target.value)">' +
				'<option disabled value="">{{"请选择" + label}}</option>' +
				'<option v-for="item in options" :value="isobj ? item.name : item">{{isobj ? item.name : item}}</option>' +
			'</select>' +
		'</div>' +
	'</div>',
	methods: {
		updateValue: function (value) {
	      	// 通过 input 事件带出数值
	      	this.$emit('input',value)
	    }
	}
});

Vue.component('loading-cpt',{
	props: ['hasnext','len'],
	template: '<div>' +
		'<div class="weui-loadmore" v-if="hasnext">' +
		    '<i class="weui-loading"></i>' +
		    '<span class="weui-loadmore__tips">正在加载更多</span>' +
		'</div>' +
		// '<div class="weui-loadmore weui-loadmore_line" v-if="hasnext">' +
		//     '<a class="weui-loadmore__tips" @click="loadMore">点击加载更多</a>' +
		// '</div>' +
		'<div class="weui-loadmore weui-loadmore_line" v-if="!hasnext && len != 0">' +
			'<span class="weui-loadmore__tips">没有更多数据</span>' +
		'</div>' +
		'<div class="weui-loadmore weui-loadmore_line" v-if="!hasnext && len == 0">' +
			'<span class="weui-loadmore__tips">暂无相关数据</span>' +
		'</div>' +
	'</div>'
})


//上传封面组件
Vue.component('upload-cover-cpt',{
	props: {
		picture: {},
		btnText: {
			default: '上传封面'
		}
	},
	template: '<div>' +
		'<span class="profile-picture">' +
			'<img width="180" class="editable img-responsive" :src="picture || defaultPicture">' +
		'</span>' +
		'<div><a class="btn btn-info btn-upload">{{btnText}}<input @change="handleFileChange" type="file" accept="image/gif,image/jpeg,image/png,image/jpg,image/bmp"/></a></div>' +
	'</div>',
	data: function(){
		return {
			defaultPicture: 'images/default.jpg'
		}
	},
	methods: {
		handleFileChange: function (value) {
	      	// 通过 input 事件带出数值
	      	this.$emit('upload',value);
	    }
	}
})

