layui.use(['form', 'layer'], function () {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery;

    /**
     * (a)同意审批
     */
    $("#agree").click(function () {
        var hId = $("#hId").val();
        //console.log(hId);

        var index = parent.layer.getFrameIndex(window.name);

        //发送ajax请求
        $.ajax({
            type: "post",
            url: ctx + "/leaveAc/agree",
            data: {
                hId: hId
            },
            success: function (resultInfo) {
                console.log(resultInfo)
                if (resultInfo.code == 200) {
                    top.layer.msg("操作成功");
                    // console.log(123);
                    //关闭加载层
                    top.layer.close(index);
                    //关闭弹出层
                    layer.closeAll("iframe");
                    // 刷新父页面（让添加数据显示）
                    parent.location.reload();
                } else {

                    layer.msg(resultInfo.msg);
                }
            }
        });

        return false;
    });


    /**
     * (b)不同意审批
     */
    $("#disagree").click(function () {
        var hId = $("#hId").val();

        var index = parent.layer.getFrameIndex(window.name);
        //发送ajax请求
        $.post(ctx + "/leaveAc/disagree?hId=" + hId, function (resultInfo) {

            if (resultInfo.code == 200) {
                top.layer.msg("操作成功");
                //关闭加载层
                top.layer.close(index);
                //关闭弹出层
                layer.closeAll("iframe");
                // 刷新父页面（让添加数据显示）
                parent.location.reload();
            } else {
                layer.msg(resultInfo.msg);
            }

        });

        return false;

    });
});


