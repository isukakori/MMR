<!DOCTYPE html>
<html>
<head>
    <title>客户开发计划管理</title>
    <#include "../common.ftl">
</head>
<body class="childrenBody">
<form class="layui-form">
    <blockquote class="layui-elem-quote quoteBox">
        <form class="layui-form">
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <input type="text" name="taskName"
                           class="layui-input
					searchVal" placeholder="任务名称"/>
                </div>
                <div class="layui-input-inline">
                    <input type="text" name="createMan" class="layui-input
					searchVal" placeholder="创建人"/>
                </div>
                <div class="layui-input-inline">
                    <select name="devResult" id="devResult">
                        <option value="">执行状态</option>
                        <option value="0">未执行</option>
                        <option value="1">执行中</option>
                        <option value="2">执行成功</option>
                        <option value="3">执行失败</option>
                    </select>
                </div>
                <a class="layui-btn search_btn" data-type="reload"><i
                            class="layui-icon">&#xe615;</i> 搜索</a>
            </div>
        </form>
    </blockquote>
    <table id="saleChanceList" class="layui-table" lay-filter="saleChances"></table>


    <script type="text/html" id="toolbarDemo">
	</script>


    <!--操作-->
    <script id="op" type="text/html">
        {{# if (d.devResult=== 0 || d.devResult==1) { }}
        <a href="javascript:;" class="layui-btn layui-btn-warm layui-btn-xs" lay-event="dev">开发</a>
        {{# } else { }}
        <a href="javascript:;" class="layui-btn layui-btn-normal layui-btn-xs" lay-event="info">详情</a>
        {{# } }}
    </script>

</form>
<script type="text/javascript" src="${ctx}/js/student_plan/student_plan.js"></script>

</body>
</html>