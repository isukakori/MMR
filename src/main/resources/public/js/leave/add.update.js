layui.use(['form', 'laydate', 'layer'], function () {
    var form = layui.form,
        layer = parent.layer === undefined ? layui.layer : top.layer,
        $ = layui.jquery;

    /**
     * (a)关闭弹出层
     */
    $("#closeBtn").click(function () {
        // 先得到当前iframe层的索引
        var index = parent.layer.getFrameIndex(window.name);
        // 再执⾏关闭
        parent.layer.close(index);
    });

    /**
     * (b)提交按钮监听
     */

    form.on('submit(confirm)', function (data) {

        var index = top.layer.msg("数据提交中,请稍后...", {icon: 16, time: false, shade: 0.8});
        console.log(data);
        console.log(data.field);
        //跳转到添加接口
        var url = ctx + "/leave/add";

        //发送ajax请求
        $.post(url, data.field, function (res) {
            console.log(res)
            if (res.code == 200) {
                top.layer.msg("操作成功");
                //关闭加载层
                top.layer.close(index);
                //关闭弹出层
                layer.closeAll("iframe");
                // 刷新父页面（让添加数据显示）
                parent.location.reload();
            } else {
                layer.msg(res.msg);
            }
        });
        return false;
    });

    /**
     * (c)请假时间范围
     * @type {string|*}
     */
    var laydate = layui.laydate;


    //日期范围
    laydate.render({
        elem: '#rangeDate'
        //设置开始日期、结束日期的 input 选择器
        , range: true
        , trigger: 'click'
        , done: function (value) {
            // console.log(endDate - date);
            //起始时间
            let first = value.substr(0, 10);
            let f1 = new Date(first);
            //终止时间
            let last = value.substr(13, 13);
            let l1 = new Date(last);
            var day = l1.getTime() - f1.getTime();
            var time = parseInt(day / (1000 * 60 * 60 * 24));


            console.log(f1);
            console.log(l1);

            //给请假时长赋值！！！
            let input = $("#time");
            input.val(time);

            //给开始结束时间的隐藏域赋值
            let began = $("#began");
            began.val(f1);

            let end = $("#end");
            end.val(l1);
        }
    });

});


