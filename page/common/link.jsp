<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<link rel="shortcut icon" href="image/favicon.ico">
<link rel="stylesheet" href="css/lib/weui.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/public.css" type="text/css">
<script src="js/lib/jquery.min.js" type="text/javascript"></script>

<script>
	function initHtmlFontSize(){
		var windowWidth = document.documentElement.clientWidth || document.body.clientWidth;
		$('html').css('font-size',windowWidth/12.42 + 'px');
	}

	initHtmlFontSize();
	
	window.onload = function(){
		window.onresize = function(){
			initHtmlFontSize();
		}
	};
</script>