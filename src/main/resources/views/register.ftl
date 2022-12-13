<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <#include "common.ftl">
    <link rel="stylesheet" href="${ctx}/css/index.css" media="all">
</head>
<body>
<div class="layui-container">
    <div class="admin-login-background">
        <div class="layui-form login-form">
            <form class="layui-form" action="">
                <div class="layui-form-item logo-title">
                    <h1>用户注册</h1>
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-username" for="username"></label>
                    <input type="text" name="username" lay-verify="required|account" placeholder="用户名"
                           autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-password" for="password"></label>
                    <input type="password" name="password" lay-verify="required|password" placeholder="密码"
                           autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-password" for="confirmpassword"></label>
                    <input type="password" name="confirmpassword" lay-verify="required|password" placeholder="确认密码"
                           autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-username" for="truename"></label>
                    <input type="text" name="truename" lay-verify="required|account" placeholder="真实姓名"
                           autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-username" for="phone"></label>
                    <input type="text" name="phone" placeholder="手机号码" autocomplete="off" class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-username" for="email"></label>
                    <input type="text" name="email" placeholder="用户邮箱（选填）" autocomplete="off" class="layui-input">
                </div>

                <div class="layui-form-item">
                    <button class="layui-btn layui-btn-fluid" lay-submit="" lay-filter="register" onc lick="function f() {
                    }">注 册
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="${ctx}/js/register.js" charset="utf-8"></script>
</body>
</html>