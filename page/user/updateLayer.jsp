<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%-- 修改姓名 --%>
<div class="layer" :class="{open: flag == '昵称'}">
    <div class="mask" @click="hideLayer()"></div>
    <div class="layer-inner">
        <div class="weui-cells__title">修改昵称</div>
        <div class="weui-cells">
            <div class="weui-cell">
                <div class="weui-cell__bd">
                    <input class="weui-input" type="text" placeholder="请输入您的昵称（中文，英文或数字）">
                </div>
            </div>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn bgm" href="javascript:" @click="bindSubmit">保存</a>
        </div>
    </div>
</div>

<%-- QQ --%>
<div class="layer" :class="{open: flag == 'qq'}">
    <div class="mask" @click="hideLayer()"></div>
    <div class="layer-inner">
        <div class="weui-cells__title">填写QQ号在中奖后方面联系您</div>
        <div class="weui-cells">
            <div class="weui-cell">
                <div class="weui-cell__bd">
                    <input class="weui-input" type="text" placeholder="请输入您的QQ">
                </div>
            </div>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn bgm" href="javascript:">保存</a>
        </div>
    </div>
</div>

<%-- 手机号绑定 --%>
<div class="layer" :class="{open: flag == '手机'}">
    <div class="mask" @click="hideLayer()"></div>
    <div class="layer-inner">
        <div class="weui-cells__title">手机号绑定</div>
        <div class="weui-cells">
            <div class="weui-cell">
                <div class="weui-cell__bd">
                    <input class="weui-input" type="text" placeholder="请输入您的手机号">
                </div>
            </div>
            <div class="weui-cell weui-cell_vcode">
                <div class="weui-cell__bd">
                    <input class="weui-input" type="tel" placeholder="六位数验证码">
                </div>
                <div class="weui-cell__ft">
                    <button class="weui-vcode-btn">获取验证码</button>
                </div>
            </div>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn bgm" href="javascript:">保存</a>
        </div>
    </div>
</div>

<%-- 密码修改 --%>
<div class="layer" :class="{open: flag == '密码'}">
    <div class="mask" @click="hideLayer()"></div>
    <div class="layer-inner">
        <div class="weui-cells__title">为了您的账号安全，建议定期更改密码</div>
        <div class="weui-cells">
            <div class="weui-cell">
                <div class="weui-cell__bd">
                    <input class="weui-input" type="password" placeholder="原密码">
                </div>
            </div>
            <div class="weui-cell">
                <div class="weui-cell__bd">
                    <input class="weui-input" type="password" placeholder="新密码">
                </div>
            </div>
            <div class="weui-cell">
                <div class="weui-cell__bd">
                    <input class="weui-input" type="password" placeholder="新密码">
                </div>
            </div>
        </div>

        <div class="weui-btn-area">
            <a class="weui-btn bgm" href="javascript:">保存</a>
        </div>
    </div>
</div>