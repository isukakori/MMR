<!DOCTYPE html>
<html>
<head>
    <title>成员管理</title>
    <#include "../common.ftl">
</head>
<body class="childrenBody">

<#if permissions?seq_contains("421") >
<form class="layui-form">

    <blockquote class="layui-elem-quote quoteBox">
        <form class="layui-form">
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <input type="text" name="userName" class="layui-input searchVal" placeholder="成员名"/>
                </div>
                <div class="layui-input-inline">
                    <input type="text" name="email" class="layui-input searchVal" placeholder="邮箱"/>
                </div>
                <div class="layui-input-inline">
                    <input type="text" name="phone" class="layui-input searchVal" placeholder="手机号"/>
                </div>
                <a class="layui-btn search_btn" data-type="reload">
                    <i class="layui-icon">&#xe615;</i>
                    搜索
                </a>
            </div>
        </form>
    </blockquote>
    </#if>
    <table id="userList" class="layui-table" lay-filter="users"></table>

    <script type="text/html" id="toolbarDemo">
        <#if permissions?seq_contains("422") >
            <div class="layui-btn-container">
                <a class="layui-btn layui-btn-normal addNews_btn" lay-event="add">
                    <i class="layui-icon">&#xe608;</i>
                    添加成员
                </a>
                <a class="layui-btn layui-btn-normal delNews_btn" lay-event="del">
                    <i class="layui-icon">&#xe608;</i>
                    删除成员
                </a>
            </div>
        </#if>
    </script>

    <!--操作-->
    <script id="userListBar" type="text/html">
        <#if permissions?seq_contains("423") >
            <a class="layui-btn layui-btn-xs" id="edit" lay-event="edit">编辑</a>
            <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
        </#if>
    </script>
</form>

<script type="text/javascript" src="${ctx}/public/js/user/stu.js"></script>
</body>
</html>