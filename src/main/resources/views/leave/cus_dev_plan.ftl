<!DOCTYPE html>
<html>
<head>
    <title>客户开发计划管理</title>
    <#include "../common.ftl">
</head>
<#if permissions??>
    <body class="childrenBody">
    <form class="layui-form">
        <blockquote class="layui-elem-quote quoteBox">
            <form class="layui-form">
                <#--隐藏域，设置用户ID-->
                <#--<input name="id" type="hidden" value="${(user.id)!}"/>-->

                <div class="layui-inline">
                    <div class="layui-input-inline">
                        <select name="devResult" id="devResult">
                            <option value="">审核状态</option>
                            <option value="0">审核中</option>
                            <option value="1">审核未通过</option>
                            <option value="2">审核通过</option>
                            <option value="3">未销假</option>
                            <option value="4">已销假</option>
                        </select>
                    </div>
                    <#if permissions?seq_contains("3011") >
                        <a class="layui-btn search_btn" data-type="reload">
                            <i class="layui-icon">&#xe615;
                            </i> 搜索
                        </a>
                    </#if>
                    <#if permissions?seq_contains("3012") >
                        <a class="layui-btn layui-btn-normal add_btn" lay-event="add">
                            <i class="layui-icon">&#xe608;</i>
                            申请请假
                        </a>
                    </#if>
                </div>
            </form>
        </blockquote>

        <#--数据表格-->
        <table id="leaveList" class="layui-table" lay-filter="leaves"></table>

        <script type="text/html" id="toolbarDemo">
	</script>

        <!--操作-->
        <#if permissions?seq_contains("3013") >
            <script id="op" type="text/html">
                {{# if (d.state=== 3 ) { }}
                <a class="layui-btn layui-btn-xs layui-btn-checked" id="inf" lay-event="inf">销假</a>
                {{# } else { }}
                <a class="layui-btn layui-btn-xs layui-btn-danger" id="del" lay-event="del">删除</a>
                {{# } }}
            </script>
        </#if>

    </form>
    <script type="text/javascript" src="${ctx}/js/leave/add.update.js"></script>
    <script type="text/javascript" src="${ctx}/js/leave/cus.dev.plan.js"></script>


    </body>
</#if>
</html>