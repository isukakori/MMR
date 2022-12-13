<!DOCTYPE html>
<html>
<head>
    <#include "../common.ftl">
</head>
<body class="childrenBody">
<form class="layui-form" style="width:80%;">

    <#--用户信息的隐藏域-->
    <#--<input type="hidden" name="hId"  value="${(leave.hId)!}">
    <input type="hidden" name="stuId"  value="${(leave.stuId)!}">
    ">-->

    <input type="hidden" name="hId" id="hId" value="${(leave.hId)!}">

    <#--<input type="hidden" name="stuName"  value="${(leave.stuName)!}">-->

    <#--<input type="hidden" name="end" id="end" value="">-->


    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">学生编号</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input"
                   lay-verify="required" value="${(leave.stuId)!}">
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">请假人</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input"
                   lay-verify="required" value="${(leave.stuName)!}">
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">联系方式</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input"
                   lay-verify="required" value="${(leave.phone)!}">
        </div>
    </div>


    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">请假类型</label>
        <div class="layui-input-block">
            <#if (leave.typeId) == 1>
                <input type="text"
                       class="layui-input"
                       lay-verify="required"
                       value="事假">
            <#else>
                <input type="text"
                       class="layui-input"
                       lay-verify="required"
                       value="病假">
            </#if>
        </div>
    </div>


    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">请假原因</label>
        <div class="layui-input-block">
            <input type="text"
                   class="layui-input"
                   lay-verify="required"
                   value="${(leave.reason)!}">
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">请假开始时间</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input"
                   lay-verify="required"
                   name="began"
                   id="began"
                   value="${(leave.began)?string("yyyy-MM-dd")}">
        </div>
    </div>

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">请假结束时间</label>
        <div class="layui-input-block">
            <input type="text"
                   autocomplete="off"
                   id="rangeDate"
                   class="layui-input"
                   value="${(leave.end)?string("yyyy-MM-dd")}">
        </div>
    </div>


    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">请假天数</label>
        <div class="layui-input-block">
            <input type="text" autocomplete="off" id="rangeDate"
                   class="layui-input" value="${(leave.time)!}">
        </div>
    </div>


    <br/>


    <#if permissions??>
        <div class="layui-form-item layui-row layui-col-xs12">
            <div class="layui-input-block">
                <#if permissions?seq_contains("3022-1") >
                    <button class="layui-btn layui-btn-lg" lay-submit id="agree" type="button">批准</button>
                </#if>
                <#if permissions?seq_contains("3022-2") >
                    <button class="layui-btn layui-btn-lg layui-btn-danger" type="button" id="disagree">不批准</button>
                </#if>
            </div>
        </div>
    </#if>
</form>
<script type="text/javascript" src="${ctx}/lib/layui-v2.5.5/layui.js"></script>
<script type="text/javascript" src="${ctx}/js/leaveac/examine.details.js"></script>

</body>
</html>
