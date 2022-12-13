<!DOCTYPE html>
<html>
<head>
    <#include "../common.ftl">
</head>
<body class="childrenBody">
<form class="layui-form" style="width:80%;">
    <input name="id" type="hidden" value="${(plan.id)!}"/>
    <input name="taskId" type="hidden" value="${task01.id}"/>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">计划项内容</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input userName"
                   lay-verify="required" name="planItem" id="planItem" value="${(plan.planItem)!}"
                   placeholder="请输入计划项内容">
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">计划时间</label>
        <div class="layui-input-block">
            <#if (plan.planDate)??>
                <input type="text" class="layui-input userName"
                       lay-verify="required" name="planDate" id="planDate"
                       value="${(plan.planDate)?string("yyyy-MM-dd")}" placeholder="请输入计划项时间">
            <#else>
                <input type="text" class="layui-input userName"
                       lay-verify="required" name="planDate" id="planDate" placeholder="请输入计划项时间">
            </#if>

        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">计划描述</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input userName"
                   lay-verify="required" name="description" id="description" value="${(plan.description)!}"
                   placeholder="请输入计划项内容">
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">笔记情况</label>
        <div class="layui-input-block">
            <select name="isNote" id="isNote">
                <option value="">请选择</option>
                <option value="0">未完成</option>
                <option value="1">已完成</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">视频情况</label>
        <div class="layui-input-block">
            <select name="isVideo" id="isVideo">
                <option value="">请选择</option>
                <option value="0">未完成</option>
                <option value="1">已完成</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">代码情况</label>
        <div class="layui-input-block">
            <select name="isCode" id="isCode">
                <option value="">请选择</option>
                <option value="0">未完成</option>
                <option value="1">已完成</option>
            </select>
        </div>
    </div>
    <br/>
    <div class="layui-form-item layui-row layui-col-xs12">
        <div class="layui-input-block">
            <button class="layui-btn layui-btn-lg" lay-submit=""
                    lay-filter="addOrUpdateCusDevPlan">确认
            </button>
            <button class="layui-btn layui-btn-lg layui-btn-normal" id="closeBtn">取消</button>
        </div>
    </div>
</form>
<script type="text/javascript" src="${ctx}/js/student_plan/add.update.js"></script>
</body>
</html>