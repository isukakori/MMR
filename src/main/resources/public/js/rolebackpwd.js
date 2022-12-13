layui.use(['form', 'jquery', 'jquery_cookie'], function () {
    var form = layui.form,
        layer = layui.layer,
        $ = layui.jquery,
        $ = layui.jquery_cookie($);


    // layui 用户登录 表单提交
    form.on('submit(returnpwd)', function (data) {
        // 获取表单元素 用户名+密码
        data = data.field;
        // alert(123123);
        // console.log("123456")

        /**
         *  用户名 密码 非空校验
         */
        if (data.username == "undefined" || data.username == "" || data.username.trim() == "") {
            layer.msg("用户名不能为空!");
            return false;
        }
        if (data.truename == "undefined" || data.truename == "" || data.truename.trim() == "") {
            layer.msg("用户真实姓名不能为空!");
            return false;
        }
        if (data.phone == "undefined" || data.phone == "" || data.phone.trim() == "") {
            layer.msg("手机号码不能为空!");
            return false;
        }


        $.ajax({
            type: "post",
            url: ctx + "/user/returnpwd",
            data: {
                userName: data.username,
                trueName: data.truename,
                phone: data.phone,
            },
            dataType: "json",
            success: function (data) {
                if (data.code == 200) {
                    layer.msg(data.msg, {
                        icon: 6,
                        time: 5000
                    }, function () {
                        window.location.href = ctx + "/index";

                    })
                } else {
                    layer.msg(data.msg);
                }
            }
        });


        return false;


    })


});