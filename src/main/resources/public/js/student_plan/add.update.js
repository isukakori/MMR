layui.use(['form', 'layer'], function () {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery;

    form.on("submit(addOrUpdateCusDevPlan)", function (data) {
        var index = top.layer.msg("数据提交中，请稍后....", {
            icon: 16,
            time: false,
            shade: 0.8
        });

        var formData = data.field;

        var url = ctx + "/taskPlan/add";
        if ($("input[name='id']").val()) {
            url = ctx + "/taskPlan/update";
        }
        $.post(url, data.field, function (res) {
            if (res.code == 200) {
                setTimeout(function () {
                    top.layer.msg("操作成功！");
                    top.layer.close(index);

                    layer.closeAll("iframe");
                    //刷新父页面
                    parent.location.reload();
                }, 500);
            } else {
                layer.msg(
                    res.msg, {
                        icon: 5
                    }
                );
            }
        });
        return false;
    });
    $("#closeBtn").click(function () {
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    });


});