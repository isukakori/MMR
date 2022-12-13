layui.use(['table', 'layer'], function () {
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        table = layui.table;
    //计划项数据展示
    var tableIns = table.render({
        elem: '#cusDevPlanList',
        url: ctx + '/taskPlan/list?taskId=' + $("input[name='id']").val(),
        cellMinWidth: 95,
        page: true,
        height: "full-125",
        limits: [10, 15, 20, 25],
        limit: 10,
        toolbar: "#toolbarDemo",
        id: "cusDevPlanListTable",
        cols: [[
            {type: "checkbox", fixed: "center"},
            {field: "id", title: '编号', fixed: "true"},
            {field: 'planItem', title: '计划项', align: "center"},
            {
                field: 'isNote', title: '笔记情况', align: "center", templet: function (d) {
                    return formatterNote(d.isNote);
                }
            },
            {
                field: 'isVideo', title: '视频情况', align: "center", templet: function (d) {
                    return formatterVideo(d.isVideo);
                }
            },
            {
                field: 'isCode', title: '代码情况', align: "center", templet: function (d) {
                    return formatterCode(d.isCode);
                }
            },
            {field: 'noteFile', title: '附件', align: "center"},
            {title: '操作', fixed: "right", align: "center", minWidth: 150, templet: "#cusDevPlanListBar"}
        ]]
    });

    function formatterNote(isNote) {
        if (isNote == 0) {
            return "<div style='color:yellow '>未完成</div>";
        } else if (isNote == 1) {
            return "<div style='color: green'>已完成</div>";
        } else {
            return "<div style='color: red'>未知</div>";
        }
    }

    function formatterVideo(isVideo) {
        if (isVideo == 0) {
            return "<div style='color:yellow '>未完成</div>";
        } else if (isVideo == 1) {
            return "<div style='color: green'>已完成</div>";
        } else {
            return "<div style='color: red'>未知</div>";
        }
    }

    function formatterCode(isCode) {
        if (isCode == 0) {
            return "<div style='color:yellow '>未完成</div>";
        } else if (isCode == 1) {
            return "<div style='color: green'>已完成</div>";
        } else {
            return "<div style='color: red'>未知</div>";
        }
    }

    //头工具栏事件
    table.on('toolbar(cusDevPlans)', function (obj) {
        switch (obj.event) {
            case "add":
                openAddOrUpdateCusDevPlanDialog();
                break;
            case "success":
                updateSaleChanceDevResult($("input[name='id']").val(), 2);
                break;
            case "failed":
                updateSaleChanceDevResult($("input[name='id']").val(), 3);
                break;
        }
        ;
    });


    /**
     * 行监听
     */
    table.on("tool(cusDevPlans)", function (obj) {
        var layEvent = obj.event;
        if (layEvent === "edit") {
            openAddOrUpdateCusDevPlanDialog(obj.data.id);
        } else if (layEvent === "del") {
            layer.confirm('确定删除当前数据？', {icon: 3, title: "开发计划管理"}, function (index) {
                $.post(ctx + "/taskPlan/delete", {id: obj.data.id}, function (data) {
                    if (data.code == 200) {
                        layer.msg("操作成功！");
                        tableIns.reload();
                    } else {
                        layer.msg(data.msg, {icon: 5});
                    }
                });
            })
        }

    });


    // 打开添加计划项数据页面
    function openAddOrUpdateCusDevPlanDialog(id) {
        var url = ctx + "/taskPlan/addOrUpdatePage?sid=" + $("input[name='id']").val();
        var title = "计划项管理-添加计划项";
        if (id) {
            url = url + "&id=" + id;
            title = "计划项管理-更新计划项";
        }
        layui.layer.open({
            title: title,
            type: 2,
            area: ["700px", "400px"],
            maxmin: true,
            content: url
        });
    }


    function updateSaleChanceDevResult(sid, devResult) {
        layer.confirm('确定执行当前操作？', {icon: 3, title: "计划项维护"}, function (index) {
            $.post(ctx + "/taskPlan/updateTaskDevResult",
                {
                    id: sid,
                    devResult: devResult
                }, function (data) {
                    if (data.code == 200) {
                        layer.msg("操作成功！");
                        layer.closeAll("iframe");
                        //刷新父页面
                        parent.location.reload();
                    } else {
                        layer.msg(data.msg, {icon: 5});
                    }
                });
        })
    }


});
