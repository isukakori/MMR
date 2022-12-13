layui.use(['form', 'layer'], function () {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery;

    $.post(ctx + "/task/queryAllRoles", function (res) {
        for (var i = 0; i < res.length; i++) {
            if ($("input[name='man']").val() == res[i].id) {
                $("#assignMan").append("<option value=\"" + res[i].id + "\" selected='selected' >" + res[i].stuName + "</option>");
            } else {
                $("#assignMan").append("<option value=\"" + res[i].id + "\">" + res[i].stuName + "</option>");
            }
        }
        //重新渲染
        layui.form.render("select");
    });

    $("#closeBtn").click(function () {
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    });
    $.ajax({
        type: "get",
        url: ctx + "/user/queryAllSales",
        date: {},
        success: function (data) {
            if (data != null) {
                var assignManId = $("#assignManId").val();
                var opt = "";
                for (var i = 0; i < data.length; i++) {
                    if (assignManId == data[i].id) {

                        opt = "<option value='" + data[i].id + "' selected>" + data[i].uname + "</option>";
                    } else {
                        console.log(data[i].id)
                        opt = "<option value='" + data[i].id + "'>" + data[i].uname + "</option>";
                    }

                    $("#assignMan").append(opt);
                }
            }
            layui.form.render("select");
        }

    });
    form.on("submit(addOrUpdateSaleChance)", function (data) {
        var index = top.layer.msg('数据提交中，请稍候', {icon: 16, time: false, shade: 0.8});
        //弹出loading
        var url = ctx + "/task/add";
        if ($("input[name='id']").val()) {
            url = ctx + "/task/update";
        }
        $.post(url, data.field, function (res) {
            if (res.code == 200) {
                setTimeout(function () {
                    top.layer.close(index);
                    top.layer.msg("操作成功！");
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
});