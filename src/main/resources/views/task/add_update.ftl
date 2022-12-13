<!DOCTYPE html>
<html>
<head>
    <#include "../common.ftl">
</head>
<body class="childrenBody">
<form class="layui-form" style="width:80%;">
    <input name="id" type="hidden" value="${(task.id)!}"/>
    <input name="man" type="hidden" id="assignManId" value="${(task.assignMan)!}"/>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">任务名称</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input"
                   lay-verify="required" name="taskName" id="taskName" value="${(task.taskName)!}"
                   placeholder="请输入任务名称">
        </div>
    </div>

    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">联系人</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input"
                   name="linkMan" lay-verify="required" value="${(task.linkMan)!}"
                   placeholder="请输入联系人">
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">联系电话</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input"
                   lay-verify="phone" name="linkPhone" value="${(task.linkPhone)!}" id="phone" placeholder="请输入联系电话">
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">概要</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input"
                   name="overview" value="${(task.overview)!}" id="phone" placeholder="请输入概要">
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">任务描述</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入机会描述信息" name="description"
                      class="layui-textarea">${(task.description)!}</textarea>
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">指派给</label>
        <div class="layui-input-block">
            <select name="assignMan" id="assignMan">
                <option value="">请选择</option>

            </select>
        </div>
    </div>
    <br/>
    <div class="layui-form-item layui-row layui-col-xs12">
        <div class="layui-input-block">
            <button class="layui-btn layui-btn-lg" lay-submit=""
                    lay-filter="addOrUpdateSaleChance">确认
            </button>
            <button class="layui-btn layui-btn-lg layui-btn-normal" id="closeBtn">取消</button>
        </div>
    </div>
</form>
<script type="text/javascript" src="${ctx}/js/task/add.update.js"></script>
</body>
</html>