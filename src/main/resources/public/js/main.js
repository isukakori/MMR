layui.use(['element', 'layer', 'layuimini', 'jquery', 'jquery_cookie'], function () {
    var $ = layui.jquery,
        layer = layui.layer,
        $ = layui.jquery_cookie($);

    // 菜单初始化
    $('#layuiminiHomeTabIframe').html('<iframe width="100%" height="100%" frameborder="0"  src="welcome"></iframe>')
    layuimini.initTab();


    $(".login-out").click(function () {

        $.ajax({
            type: "post",
            url: ctx + "/user/logout10123",

            success: function (resultInfo) {
                if (resultInfo.code == 200) {
                    console.log(2);
                    $.removeCookie("userIdStr", {domain: "localhost", path: "/grm"});
                    $.removeCookie("userName", {domain: "localhost", path: "/grm"});
                    $.removeCookie("trueName", {domain: "localhost", path: "/grm"});
                    window.parent.location.href = ctx + "/login";
                }
            }
        })
    })


});

