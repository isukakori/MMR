layui.use(['table', 'layer'], function () {
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        table = layui.table;

    //(a)机会数据列表展示
    var tableIns = table.render({
        elem: '#leaveList',
        url: ctx + '/leaveAc/queryAllDisagree?',
        cellMinWidth: 95,
        page: true,
        height: "full-125",
        limits: [10, 15, 20, 25],
        limit: 10,
        toolbar: "#toolbarDemo",
        id: "leaveListTable",
        cols: [[
            {type: "checkbox", fixed: "center"},
            {field: "hId", title: '编号', fixed: "true"},
            {field: 'stuId', title: '用户id', align: "center"},
            {field: 'stuName', title: '用户名', align: 'center'},
            {field: 'phone', title: '联系方式', align: 'center'},
            {field: 'type', title: '请假类型', align: 'center'},
            {field: 'reason', title: '请假原因', align: 'center'},
            {field: 'began', title: '请假时间', align: 'center'},
            {field: 'time', title: '请假时长（天）', align: 'center'},
            {field: 'end', title: '结束时间', align: 'center'},
            {
                field: 'state', title: '审核状态', align: 'center', templet: function (d) {
                    return formatterDevResult(d.state);
                }
            },
            {title: '操作', fixed: "right", align: "center", minWidth: 150, templet: "#op"}
        ]]
    });

    /**
     * (a.1) 只显示  0-审核中
     */
    function formatterDevResult(value) {
        if (value == 0) {
            return "<div style='color: deepskyblue'>审核中</div>";
        }
    }


    //(b)根据姓名模糊搜索
    $(".search_btn").on("click", function () {
        table.reload("leaveListTable", {
            page: {
                curr: 1
            },
            where: {
                stuName: $("input[name='stuName']").val(),// 请假人
            }
        })

    });


    //(c)点击操作
    table.on('tool(leaves)', function (obj) {
        var layEvent = obj.event;

        console.log(obj.data.hId)

        if (layEvent === "operate") {
            //通过函数
            openDetailsPage(obj.data.hId);
        }
    });

    //(c.1)查看详细的请假信息页面
    function openDetailsPage(hId) {
        var title = "请假详情";
        var url = ctx + "/leaveAc/toExamine_details?hId=" + hId;

        layui.layer.open({
            title: title,
            type: 2,
            area: ["700px", "500px"],
            maxmin: true,
            content: url
        })
    }

});
