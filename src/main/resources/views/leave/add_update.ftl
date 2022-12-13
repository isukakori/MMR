<!DOCTYPE html>
<html>
<head>
    <#include "../common.ftl">
</head>
<body class="childrenBody">
<form class="layui-form" style="width:80%;">

    <#--隐藏域-->
    <#--<input type="hidden" name="stuId" id="stuId" value="${(user.id)!}">
    <input type="hidden" name="began" id="began" value="${(user.trueName)!}">
    <input type="hidden" name="began" id="began" value="${(user.phone)!}">-->

    <input type="hidden" name="began" id="began" value="">
    <input type="hidden" name="end" id="end" value="">


    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">学生编号</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" name="stuId"
                   lay-verify="required" value="${(user.id)!}">
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">请假人</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" name="trueName"
                   lay-verify="required" value="${(user.trueName)!}">
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">联系方式</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" name="phone"
                   lay-verify="required" value="${(user.phone)!}">
        </div>
    </div>


    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">请假类型</label>
        <div class="layui-input-block">
            <select name="typeId" id="typeId">
                <option value="">请选择</option>
                <option value="1">事假</option>
                <option value="2">病假</option>
            </select>
        </div>
    </div>


    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">请假原因</label>
        <div class="layui-input-block">
            <textarea placeholder="请输入具体原因" name="reason" class="layui-textarea"></textarea>
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">请假时间范围</label>
        <div class="layui-input-block">
            <input type="text" autocomplete="off" id="rangeDate"
                   class="layui-input" placeholder="时间范围">
        </div>
    </div>


    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">请假天数</label>
        <div class="layui-input-block">
            <input type="text" name="time" id="time" lay-verify="required" class="layui-input"
                   value="">
        </div>
    </div>
    <br/>


    <#if permissions??>
        <div class="layui-form-item layui-row layui-col-xs12">
            <div class="layui-input-block">
                <#if permissions?seq_contains("3012-1") >
                    <button class="layui-btn layui-btn-lg" lay-submit lay-filter="confirm">确认</button>
                </#if>
                <#if permissions?seq_contains("3012-2") >
                    <button class="layui-btn layui-btn-lg layui-btn-normal" type="button" id="closeBtn">取消</button>
                </#if>
            </div>
        </div>
    </#if>
</form>
<script type="text/javascript" src="${ctx}/lib/layui-v2.5.5/layui.js"></script>
<script type="text/javascript" src="${ctx}/js/leave/add.update.js"></script>


</body>
</html>
