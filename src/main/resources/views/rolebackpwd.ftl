<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>找回密码</title>
    <#include "common.ftl">
    <link rel="stylesheet" href="${ctx}/css/index.css" media="all">
</head>
<body>
<div class="layui-container">
    <div class="admin-login-background">
        <div class="layui-form login-form">
            <form class="layui-form" action="">
                <div class="layui-form-item logo-title">
                    <h1>用户找回密码</h1>
                </div>
                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-username" for="username"></label>
                    <input type="text" name="username" lay-verify="required|account" placeholder="请输入用户名"
                           autocomplete="off" class="layui-input">
                </div>

                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-username" for="truename"></label>
                    <input type="text" name="truename" lay-verify="required|account" placeholder="请输入真实姓名"
                           autocomplete="off" class="layui-input">
                </div>

                <div class="layui-form-item">
                    <label class="layui-icon layui-icon-username" for="phone"></label>
                    <input type="text" name="phone" lay-verify="required|account" placeholder="请输入手机号码"
                           autocomplete="off" class="layui-input">
                </div>

                <div class="layui-form-item">
                    <button class="layui-btn layui-btn-fluid" lay-submit="" lay-filter="returnpwd" onclick="function f() {
                    }">确认找回
                    </button>
                </div>

            </form>
        </div>
    </div>
</div>
<script src="${ctx}/js/rolebackpwd.js" charset="utf-8"></script>
</body>
</html>