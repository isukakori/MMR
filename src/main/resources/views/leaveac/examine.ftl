<!DOCTYPE html>
<html>
<head>
    <title>审批假管理</title>
    <#include "../common.ftl">
</head>
<#if permissions??>
    <body class="childrenBody">
    <form class="layui-form">
        <blockquote class="layui-elem-quote quoteBox">
            <form class="layui-form">
                <#--隐藏域，设置用户ID-->
                <#--<input name="id" type="hidden" value="${(stu.id)!}"/>-->
                <div class="layui-inline">

                    <div class="layui-input-inline">
                        <input type="text" name="stuName" id="stuName"
                               class="layui-input searchVal" placeholder="姓名"/>
                    </div>

                    <#if permissions?seq_contains("3021") >
                        <a class="layui-btn search_btn" data-type="reload">
                            <i class="layui-icon">&#xe615;
                            </i> 搜索
                        </a>
                    </#if>

                </div>
            </form>
        </blockquote>

        <#--数据列表-->
        <table id="leaveList" class="layui-table" lay-filter="leaves"></table>

        <#--头部工具栏-->
        <script type="text/html" id="toolbarDemo"></script>

        <!--审批假操作-->
        <script id="op" type="text/html">
            <#if permissions?seq_contains("3022") >
                <a class="layui-btn layui-btn-xs layui-btn-checked" id="agree" lay-event="operate">操作</a>
            </#if>
        </script>

    </form>
    <script type="text/javascript" src="${ctx}/js/leaveac/examine.js"></script>


    </body>
</#if>
</html>