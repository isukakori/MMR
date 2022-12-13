<!DOCTYPE html>
<html>
<head>
    <title>学生任务计划填写管理</title>
    <#include "../common.ftl">
</head>
<body class="childrenBody">
<div class="layui-col-md12">
    <div class="layui-card">
        <div class="layui-card-body">
            <form class="layui-form">
                <input name="id" type="hidden" value="${(task01.id)!}"/>
                <div class="layui-form-item layui-row">
                    <div class="layui-col-xs6">
                        <label class="layui-form-label">任务名称</label>
                        <div class="layui-input-block">
                            <input type="text" class="layui-input"
                                   name="customerName" id="customerName" value="${(task01.taskName)!}"
                                   readonly="readonly">
                        </div>
                    </div>

                </div>

                <div class="layui-form-item layui-row">
                    <div class="layui-col-xs6">
                        <label class="layui-form-label">联系人</label>
                        <div class="layui-input-block">
                            <input type="text" class="layui-input"
                                   name="linkMan" lay-verify="required" value="${(task01.linkMan)!}"
                                   readonly="readonly">
                        </div>
                    </div>
                    <div class="layui-col-xs6">
                        <label class="layui-form-label">联系电话</label>
                        <div class="layui-input-block">
                            <input type="text" class="layui-input"
                                   lay-verify="phone" name="linkPhone" value="${(task01.linkPhone)!}" id="phone"
                                   readonly="readonly">
                        </div>
                    </div>
                </div>

                <div class="layui-form-item layui-row">
                    <div class="layui-col-xs6">
                        <label class="layui-form-label">概要</label>
                        <div class="layui-input-block">
                            <input type="text" class="layui-input"
                                   name="overview" value="${(task01.overview)!}" id="phone" readonly="readonly">
                        </div>
                    </div>

                </div>
            </form>
        </div>
    </div>
</div>

<div class="layui-col-md12">
    <table id="cusDevPlanList" class="layui-table" lay-filter="cusDevPlans"></table>
</div>

<#if task01.devResult==0 || task01.devResult==1>
    <script type="text/html" id="toolbarDemo">
        <div class="layui-btn-container">
            <a class="layui-btn layui-btn-normal addNews_btn" lay-event="add">
                <i class="layui-icon">&#xe608;</i>
                添加计划项
            </a>
            <a class="layui-btn layui-btn-normal addNews_btn" lay-event="success">
                <i class="layui-icon">&#xe608;</i>
                完成填写
            </a>
            <a class="layui-btn layui-btn-normal addNews_btn" lay-event="failed">
                <i class="layui-icon">&#xe608;</i>
                填写失败
            </a>
        </div>
    </script>

    <!--操作-->
    <script id="cusDevPlanListBar" type="text/html">
        <a class="layui-btn layui-btn-xs" id="edit" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
    </script>
</#if>

<script type="text/javascript" src="${ctx}/js/student_plan/task_plan_data.js"></script>
</body>
</html>