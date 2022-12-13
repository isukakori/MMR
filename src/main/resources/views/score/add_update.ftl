<!DOCTYPE html>
<html>
<head>
    <#include "../common.ftl">
</head>
<body class="childrenBody">
<form class="layui-form" style="width:80%;">

    <input type="hidden" name="id" value="${(score.id)!}">

    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">组员名称</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" lay-verify="required" name="stuName" id="stuName"
                   value="${(score.stuName)!}" placeholder="请输入组员名称">
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">上午积分</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" name="monScore" lay-verify="required" value="${(score.monScore)!}"
                   placeholder="请输入上午积分">
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">下午积分</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" name="aftScore" lay-verify="required" value="${(score.aftScore)!}"
                   placeholder="请输入下午积分">
        </div>
    </div>
    <#--    <div class="layui-form-item layui-row layui-col-xs12">-->
    <#--        <label class="layui-form-label">积分总计</label>-->
    <#--        <div class="layui-input-block">-->
    <#--            <input type="text" class="layui-input"  name="total" lay-verify="required" value="${(score.total)!}" placeholder="请输入总积分">-->
    <#--        </div>-->
    <#--    </div>-->
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">打分人</label>
        <div class="layui-input-block">
            <input type="text" class="layui-input" name="scorer" lay-verify="required" value="${(score.scorer)!}"
                   placeholder="请输入打分人">
        </div>
    </div>
    <div class="layui-form-item layui-row layui-col-xs12">
        <label class="layui-form-label">打分状态</label>
        <div class="layui-input-block">
            <select name="devResult" id="devResult">
                <option value="">请选择打分状态</option>
                <option value="0">未打分</option>
                <option value="2">已打分</option>
            </select>
        </div>
    </div>

    <br/>
    <div class="layui-form-item layui-row layui-col-xs12">
        <div class="layui-input-block">
            <button class="layui-btn layui-btn-lg" lay-submit="" lay-filter="addOrUpdateScore">确认</button>
            <button class="layui-btn layui-btn-lg layui-btn-normal" id="closeBtn">取消</button>
        </div>
    </div>
</form>
<script type="text/javascript" src="${ctx}/js/score/add.update.js"></script>

</body>
</html>