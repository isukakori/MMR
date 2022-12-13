<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>小组管理系统-登陆页面</title>
    <#include "common.ftl">
    <link rel="stylesheet" href="${ctx}/css/index.css" media="all">
</head>
<body>
<div class="layui-container">
    <div class="admin-login-background">
        <div class="layui-form login-form">
            <form class="layui-form" action="">
                <div class="layui-form-item logo-title">
                    <h1>用户登录</h1>
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-username" for="username"></label>
                    <input type="text" name="username" placeholder="用户名" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-password" for="password"></label>
                    <input type="password" name="password" placeholder="密码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-vercode" for="randomcode"></label>
                    <input type="text" name="randomcode" placeholder="请输入验证码" autocomplete="off" class="layui-input"
                           id="randomcode">
                    <canvas id="canvas" width="100" height="30"></canvas>
                </div>

                <div class="layui-form-item">
                    <input type="checkbox" name="rememberMe" id="rememberMe" value="true" lay-skin="primary"
                           title="记住密码">
                </div>
                <div class="layui-form-item">
                    <button class="layui-btn layui-btn-fluid" lay-submit="" lay-filter="login" onclick="function f() {
                    }">登 录
                    </button>
                </div>
                <div class="layui-form-item">
                    <a href="user/toRegister" class="layui-btn layui-btn-fluid">注 册</a>
                </div>
                <div class="layui-form-item">
                    <a href="user/rolebackpwd" class="layui-layout-admin ">忘记密码？</a>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="${ctx}/js/index.js" charset="utf-8"></script>
</body>
</html>