<!DOCTYPE html>
<html>
<head>
    <title>小组积分管理</title>
    <#include "../common.ftl">
</head>
<body class="childrenBody">
<form class="layui-form">
    <blockquote class="layui-elem-quote quoteBox">
        <form class="layui-form">
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <input type="text" name="stuName"
                           class="layui-input
							searchVal" placeholder="学生名称"/>
                </div>
                <div class="layui-input-inline">
                    <input type="text" name="stuId" class="layui-input
							searchVal" placeholder="学生编号"/>
                </div>
                <div class="layui-input-inline">
                    <select name="devResult" id="devResult">
                        <option value="">请选择积分状态</option>
                        <option value="0">未打分</option>
                        <option value="2">已打分</option>
                    </select>
                </div>
                <a class="layui-btn search_btn" data-type="reload">
                    <i class="layui-icon">&#xe615;</i> 搜索
                </a>
            </div>
        </form>
    </blockquote>

    <#if permissions?seq_contains("2012") >
        <table id="scoreList" class="layui-table" lay-filter="score">
        </table>
    </#if>

    <#--<script type="text/html" id="toolbarDemo">
    </script>-->
    <#-- 头部工具栏 -->
    <script type="text/html" id="toolbarDemo">
        <#if permissions?seq_contains("2011") >
            <div class="layui-btn-container">
                <a class="layui-btn layui-btn-normal addNews_btn" lay-event="add">
                    <i class="layui-icon">&#xe608;</i>
                    添加
                </a>
                <a class="layui-btn layui-btn-normal delNews_btn" lay-event="del">
                    <i class="layui-icon">&#xe608;</i>
                    删除
                </a>
            </div>
        </#if>
    </script>


    <!-- 行工具栏 -->
    <script id="scoreListBar" type="text/html">
        <#if permissions?seq_contains("2011") >
            <a class="layui-btn layui-btn-xs" id="edit" lay-event="edit">编辑</a>
        </#if>
        <#if permissions?seq_contains("2011") >
            <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
        </#if>
    </script>


</form>
<script type="text/javascript" src="${ctx}/js/score/score.js"></script>
</body>
</html>