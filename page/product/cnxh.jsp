<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%-- 猜你喜欢 --%>

<div class="bgwh fix" v-show="currentIndex == 3">
	<a class="list-zt__item product__item" v-for="item in 4" href="page/product/product_detail.jsp">
        <div class="product-cover">
            <img :src="'image/test/p' + (item) + '.png'"/>
            <div class="txt">
                <span>44人已申请</span>
            </div>
        </div>
        
        <div class="mt5">
            <div class="ell">LAVER防脱育发液</div> 
            <p class="f12 mt5"><del>免￥12</del><span class="r gm">限免8份</span></p>
        </div>
    </a>
</div>