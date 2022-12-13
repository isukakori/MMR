<!--
   客户构成分析页面
-->
<!DOCTYPE html>
<html>
<head>
    <title>图表展示</title>
    <#include "../common.ftl">
</head>
<body class="childrenBody">

<div class="layui-card">
    <#if permissions?seq_contains("411") >
        <div class="layui-card-header">图表展示</div>
        <div class="layui-card-body" id="main" style="width: 100%;min-height:500px"></div>
    </#if>
</div>
<script type="text/javascript" src="${ctx}/js/echarts/echarts.min.js"></script>
<script type="text/javascript" src="${ctx}/js/echarts/3.js"></script>

</body>
</html>