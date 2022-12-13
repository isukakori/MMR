layui.use(['table', 'layer'], function () {
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        table = layui.table;

    //(a)请假数据列表展示
    var tableIns = table.render({
        elem: '#leaveList',
        url: ctx + '/leave/list?',
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
     * (a.1)审核状态判断函数
     * 0-审核中
     * 1-审核未通过
     * 2-审核通过
     * 3-未销假
     * 4-已销假
     */
    function formatterDevResult(value) {
        if (value == 0) {
            return "<div style='color: deepskyblue'>审核中</div>";
        } else if (value == 1) {
            return "<div style='color: red;'>审核未通过</div>";
        } else if (value == 2) {
            return "<div style='color: #00B83F'>审核通过</div>";
        } else if (value == 3) {
            return "<div style='color: red'>未销假</div>";
        } else if (value == 4) {
            return "<div style='color: #00B83F'>已销假</div>"
        } else {
            return "<div style='color: #af0000'>未知</div>"
        }
    }


    //(b)多条件搜索
    $(".search_btn").on("click", function () {
        table.reload("leaveListTable", {
            page: {
                curr: 1
            },
            where: {
                state: $("#devResult").val()  //审核状态
            }
        })
        console.log($("#devResult").val())
    });


    //(c)绑定申请请假按钮
    $(".add_btn").on("click", function () {
        changeOrAddLeavePage();
    })


    // (c.1)打开申请请假页面函数
    function changeOrAddLeavePage() {
        var title = "添加";
        var url = ctx + "/leave/changeOrAddLeavePage";

        layui.layer.open({
            title: title,
            type: 2,
            area: ["700px", "500px"],
            maxmin: true,
            content: url
        })
    }

    // (d)删除请假申请、销假
    table.on('tool(leaves)', function (obj) {
        //console.log(obj)
        var layEvent = obj.event;
        //单条记录删除
        if (layEvent === "del") {
            layer.confirm("确认删除请假申请?", {icon: 3}, function (index) {
                $.post(ctx + "/leave/delete", {ids: obj.data.hId, state: obj.data.state}, function (resultInfo) {
                    if (resultInfo.code == 200) {
                        layer.msg("删除成功");
                        //重新加载表格
                        tableIns.reload();
                    } else {
                        layer.msg(resultInfo.msg);
                    }
                })
            })
        } else if (layEvent === "inf") {
            layer.confirm("确认销假?", {icon: 3}, function (index) {
                $.post(ctx + "/leave/update", {id: obj.data.hId}, function (resultInfo) {
                    if (resultInfo.code == 200) {
                        layer.msg("销假成功");
                        //重新加载表格
                        tableIns.reload();
                    } else {
                        layer.msg(resultInfo.msg);
                    }
                })
            })
        }
    });

});
