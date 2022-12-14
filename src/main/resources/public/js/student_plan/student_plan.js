layui.use(['table', 'layer'], function () {
    var layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery,
        table = layui.table;
    //用户列表展示
    var tableIns = table.render({
        elem: '#saleChanceList',
        url: ctx + '/task/list',
        cellMinWidth: 95,
        page: true,
        height: "full-125",
        limits: [10, 15, 20, 25],
        limit: 10,
        toolbar: "#toolbarDemo",
        id: "saleChanceListTable",
        cols: [[
            {type: "checkbox", fixed: "center"},
            {field: "id", title: '编号', fixed: "true"},
            {field: 'taskName', title: '任务名称', align: 'center'},
            {field: 'overview', title: '概要', align: 'center'},
            {field: 'linkMan', title: '联系人', align: 'center'},
            {field: 'linkPhone', title: '联系电话', align: 'center'},
            {field: 'description', title: '描述', align: 'center'},
            {field: 'createMan', title: '创建人', align: 'center'},
            {field: 'createDate', title: '创建时间', align: 'center'},
            {field: 'uname', title: '指派人', align: 'center'},
            {field: 'assignTime', title: '分配时间', align: 'center'},
            {
                field: 'state', title: '分配状态', align: 'center', templet: function (d) {
                    return formatterState(d.state);
                }
            },
            {
                field: 'devResult', title: '执行状态', align: 'center', templet: function (d) {
                    return formatterDevResult(d.devResult);
                }
            },
            {title: '操作', fixed: "right", align: "center", minWidth: 150, templet: "#op"}
        ]]
    });

    function formatterState(state) {
        if (state == 0) {
            return "<div style='color:yellow '>未分配</div>";
        } else if (state == 1) {
            return "<div style='color: green'>已分配</div>";
        } else {
            return "<div style='color: red'>未知</div>";
        }
    }

    function formatterDevResult(value) {
        /**
         * 0-未开发
         * 1-开发中
         * 2-开发成功
         * 3-开发失败
         */
        if (value == 0) {
            return "<div style='color: yellow'>未执行</div>";
        } else if (value == 1) {
            return "<div style='color: #00FF00;'>正在执行</div>";
        } else if (value == 2) {
            return "<div style='color: #00B83F'>执行成功</div>";
        } else if (value == 3) {
            return "<div style='color: red'>执行失败</div>";
        } else {
            return "<div style='color: #af0000'>未知</div>"
        }
    }


    // 多条件搜索
    $(".search_btn").on("click", function () {
        table.reload("saleChanceListTable", {
            page: {
                curr: 1 //重新从第 1 页开始
            },
            where: {
                taskName: $("input[name='taskName']").val(),  //客户名
                createMan: $("input[name='createMan']").val(), //创建人
                devResult: $("#devResult").val()  //开发状态
            }
        })
    });


    /**
     * 行监听
     */
    table.on("tool(saleChances)", function (obj) {
        var layEvent = obj.event;
        if (layEvent === "dev") {
            openCusDevPlanDialog("计划项数据维护", obj.data.id);
        } else if (layEvent === "info") {
            openCusDevPlanDialog("计划项数据详情", obj.data.id);
        }

    });


    // 打开开发计划对话框
    function openCusDevPlanDialog(title, sid) {
        layui.layer.open({
            title: title,
            type: 2,
            area: ["750px", "550px"],
            maxmin: true,
            content: ctx + "/taskPlan/toTaskPlanDataPage?id=" + sid
        });
    }


});
