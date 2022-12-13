layui.use(['form', 'jquery', 'jquery_cookie'], function () {
    var form = layui.form,
        layer = layui.layer,
        $ = layui.jquery,
        $ = layui.jquery_cookie($);


    // layui 用户登录 表单提交
    form.on('submit(login)', function (data) {
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

        if (data.password == "undefined" || data.password == "" || data.password.trim() == "") {
            layer.msg("用户密码不能为空!");
            return false;
        }
        if (data.randomcode == "undefined" || data.randomcode == "" || data.randomcode.trim() == "") {
            layer.msg("验证码不能为空");
            return false;
        }

        if (data.randomcode !== show_num.join("")) {
            layer.msg("验证码输入错误");
            console.log(show_num.join(""));
            console.log(data.randomcode);

            return false;


        }


        $.ajax({
            type: "post",
            url: ctx + "/user/login",
            data: {
                userName: data.username,
                userPwd: data.password
            },
            dataType: "json",
            success: function (data) {
                if (data.code == 200) {
                    layer.msg("用户登录成功", function () {
                        var result = data.result;
                        $.cookie("userIdStr", result.userIdStr);
                        $.cookie("userName", result.userName);
                        $.cookie("trueName", result.trueName);
                        if ($("input[type='checkbox']").is(":checked")) {
                            $.cookie("userIdStr", result.userIdStr, {expires: 7});
                            $.cookie("userName", result.userName, {expires: 7});
                            $.cookie("trueName", result.trueName, {expires: 7});
                        }
                        // console.log("main跳转")
                        window.location.href = ctx + "/main";

                    })
                } else {
                    layer.msg(data.msg);
                }
            }
        });
        return false;
    })

    var show_num = [];
    $(("#randomcode"), function () {
        draw(show_num);

        $("#canvas").on('click', function () {
            draw(show_num);
        })
    });


    function draw(show_num) {
        var canvas_width = $('#canvas').width();
        var canvas_height = $('#canvas').height();
        var canvas = document.getElementById("canvas");//获取到canvas的对象，演员
        var context = canvas.getContext("2d");//获取到canvas画图的环境，演员表演的舞台
        canvas.width = canvas_width;
        canvas.height = canvas_height;
        var sCode = "A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
        var aCode = sCode.split(",");
        var aLength = aCode.length;//获取到数组的长度

        for (var i = 0; i <= 3; i++) {
            var j = Math.floor(Math.random() * aLength);//获取到随机的索引值
            var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
            var txt = aCode[j];//得到随机的一个内容
            show_num[i] = txt.toLowerCase();
            var x = 10 + i * 20;//文字在canvas上的x坐标
            var y = 20 + Math.random() * 8;//文字在canvas上的y坐标
            context.font = "bold 23px 微软雅黑";

            context.translate(x, y);
            context.rotate(deg);

            context.fillStyle = randomColor();
            context.fillText(txt, 0, 0);

            context.rotate(-deg);
            context.translate(-x, -y);
        }
        for (var i = 0; i <= 5; i++) { //验证码上显示线条
            context.strokeStyle = randomColor();
            context.beginPath();
            context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.stroke();
        }
        for (var i = 0; i <= 30; i++) { //验证码上显示小点
            context.strokeStyle = randomColor();
            context.beginPath();
            var x = Math.random() * canvas_width;
            var y = Math.random() * canvas_height;
            context.moveTo(x, y);
            context.lineTo(x + 1, y + 1);
            context.stroke();
        }
    }

    function randomColor() {//得到随机的颜色值
        var r = Math.floor(Math.random() * 256);
        var g = Math.floor(Math.random() * 256);
        var b = Math.floor(Math.random() * 256);
        return "rgb(" + r + "," + g + "," + b + ")";
    }

});
