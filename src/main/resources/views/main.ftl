<!DOCTYPE html>
<html>
<#--<style>-->
<#--    #showTime{-->
<#--        width: auto;-->
<#--        height: auto;-->
<#--        text-align: end;-->

<#--    }-->
<#--</style>-->
<head>
    <meta charset="utf-8">
    <title>停车管理系统</title>
    <#include "common.ftl">
    <style>
        .time {
            position: absolute;
            bottom: 23px;
            left: 18px;
            font-size: 12px;
        }
    </style>
</head>
<body class="layui-layout-body layuimini-all">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header header">
        <div class="layui-logo">
            <a href="">
                <#--                <img src="images/logo.png" alt="logo">-->
                <h1>Parking-停车管理系统</h1>
            </a>

        </div>

        <a>
            <div class="layuimini-tool"><i title="展开" class="fa fa-outdent" data-side-fold="1"></i></div>
        </a>

        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item mobile layui-hide-xs" lay-unselect>
                <a href="javascript:;" data-check-screen="full"><i class="fa fa-arrows-alt"></i></a>
            </li>
            <li class="layui-nav-item layuimini-setting">
                <a href="javascript:;">${(user.userName)!""}</a>
                <dl class="layui-nav-child">
                    <dd>
                        <a href="javascript:;" data-iframe-tab="${ctx}/user/toSettingPage" data-title="基本资料"
                           data-icon="fa fa-gears">基本资料</a>
                    </dd>
                    <dd>
                        <a href="javascript:;" data-iframe-tab="${ctx}/user/toPasswordPage" data-title="修改密码"
                           data-icon="fa fa-gears">修改密码</a>
                    </dd>
                    <dd>
                        <a href="javascript:;" class="login-out">退出登录</a>
                    </dd>
                </dl>
            </li>
            <li class="layui-nav-item layuimini-select-bgcolor mobile layui-hide-xs" lay-unselect>
                <a href="javascript:;"></a>
            </li>
        </ul>
    </div>


    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll layui-left-menu">
            <ul class="layui-nav layui-nav-tree layui-left-nav-tree layui-this" id="currency">

                <#if permissions??>
                    <#if permissions?seq_contains("10") >
                        <li class="layui-nav-item">
                        <a href="javascript:;" class="layui-menu-tips"><i class="fa fa-flag"></i><span
                                    class="layui-left-nav">资讯信息模块</span> <span class="layui-nav-more"></span></a>
                        <dl class="layui-nav-child">
                            <#if permissions?seq_contains("101") >
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-3"
                                       data-tab="task/index" target="_self"><i class="fa fa-exchange"></i><span
                                                class="layui-left-nav"> 资讯信息</span></a>
                                </dd>
                            </#if>

                            <#if permissions?seq_contains("102") >
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-4"
                                       data-tab="taskPlan/index" target="_self"><i class="fa fa-user-times"></i><span
                                                class="layui-left-nav"> 资讯信息管理</span></a>
                                </dd>
                            </#if>
                        </dl>
                    </#if>
                    </li>
                </#if>

                <#if permissions??>
                    <#if permissions?seq_contains("20") >
                        <li class="layui-nav-item">
                        <a href="javascript:;" class="layui-menu-tips"><i class="fa fa-desktop"></i><span
                                    class="layui-left-nav"> 车位管理模块</span> <span class="layui-nav-more"></span></a>
                        <dl class="layui-nav-child">
                            <#if permissions?seq_contains("201") >
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-5"
                                       data-tab="score/index/" target="_self"><i class="fa fa-tachometer"></i><span
                                                class="layui-left-nav"> 车位信息</span></a>
                                </dd>
                            </#if>

                            <#if permissions?seq_contains("202") >
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-6"
                                       data-tab="score/index2/" target="_self"><i class="fa fa-tachometer"></i><span
                                                class="layui-left-nav"> 车位信息管理</span></a>
                                </dd>
                            </#if>
                        </dl>
                    </#if>
                    </li>
                </#if>

                <#if permissions??>
                    <#if permissions?seq_contains("30") >
                        <li class="layui-nav-item">
                        <a href="javascript:;" class="layui-menu-tips"><i class="fa fa-street-view"></i><span
                                    class="layui-left-nav"> </span> 收费信息<span class="layui-nav-more"></span></a>
                        <dl class="layui-nav-child">
                            <#if permissions?seq_contains("301") >
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-2"
                                       data-tab="charge/index" target="_self">
                                        <i class="fa fa-ellipsis-h"></i>
                                        <span class="layui-left-nav"> 收费信息详情</span>
                                    </a>
                                </dd>
                            </#if>

                            <#--<#if permissions?seq_contains("302") >
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-1"
                                       data-tab="leaveAc/examine" target="_self">
                                        <i class="fa fa-tty"></i>
                                        <span class="layui-left-nav">收费管理</span>
                                    </a>
                                </dd>
                            </#if>-->
                        </dl>
                    </#if>
                    </li>
                </#if>

                <#if permissions??>
                    <#if permissions?seq_contains("30") >
                        <li class="layui-nav-item">
                        <a href="javascript:;" class="layui-menu-tips"><i class="fa fa-street-view"></i><span
                                    class="layui-left-nav"> </span> 违规车辆模块<span class="layui-nav-more"></span></a>
                        <dl class="layui-nav-child">
                            <#if permissions?seq_contains("301") >
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-2"
                                       data-tab="leave/index" target="_self">
                                        <i class="fa fa-ellipsis-h"></i>
                                        <span class="layui-left-nav"> 违规车辆信息</span>
                                    </a>
                                </dd>
                            </#if>

                            <#if permissions?seq_contains("302") >
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-1"
                                       data-tab="leaveAc/examine" target="_self">
                                        <i class="fa fa-tty"></i>
                                        <span class="layui-left-nav">违规车辆管理</span>
                                    </a>
                                </dd>
                            </#if>
                        </dl>
                    </#if>
                    </li>
                </#if>

                <#if permissions??>
                    <#if permissions?seq_contains("4") >
                        <li class="layui-nav-item">
                        <a href="javascript:;" class="layui-menu-tips"><i class="fa fa-gears"></i><span
                                    class="layui-left-nav"> 系统设置</span> <span class="layui-nav-more"></span></a>

                        <dl class="layui-nav-child">
                            <#if permissions?seq_contains("41") >
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-10"
                                       data-tab="echarts/index" target="_self"><i class="fa fa-tachometer"></i><span
                                                class="layui-left-nav"> 图表管理</span></a>
                                </dd>
                            </#if>
                            <#if permissions?seq_contains("42") >
                                <dd>
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-11" data-tab="user/index" target="_self"><i
                                                class="fa fa-user"></i><span class="layui-left-nav"> 用户管理</span></a>
                                </dd>
                            </#if>
                            <#if permissions?seq_contains("43") >
                                <dd class="">
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-12" data-tab="role/index" target="_self"><i
                                                class="fa fa-tachometer"></i><span
                                                class="layui-left-nav"> 角色管理</span></a>
                                </dd>
                            </#if>
                            <#if permissions?seq_contains("44") >
                                <dd class="">
                                    <a href="javascript:;" class="layui-menu-tips" data-type="tabAdd"
                                       data-tab-mpi="m-p-i-13" data-tab="module/index" target="_self"><i
                                                class="fa fa-tachometer"></i><span
                                                class="layui-left-nav"> 菜单管理</span></a>
                                </dd>
                            </#if>
                        </dl>
                    </#if>
                    </li>
                </#if>


                <span class="layui-nav-bar" style="top: 201px; height: 0px; opacity: 0;"></span>
            </ul>
            <span id="showTime" class="time"></span>
        </div>
    </div>

    <div class="layui-body">
        <div class="layui-tab" lay-filter="layuiminiTab" id="top_tabs_box">
            <ul class="layui-tab-title" id="top_tabs">
                <li class="layui-this" id="layuiminiHomeTabId" lay-id="welcome"><i class="fa fa-home"></i>
                    <span>首页</span></li>
            </ul>

            <ul class="layui-nav closeBox">
                <li class="layui-nav-item">
                    <a href="javascript:;"> <i class="fa fa-dot-circle-o"></i> 页面操作</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;" data-page-close="other"><i class="fa fa-window-close"></i> 关闭其他</a>
                        </dd>
                        <dd><a href="javascript:;" data-page-close="all"><i class="fa fa-window-close-o"></i> 关闭全部</a>
                        </dd>
                    </dl>
                </li>
            </ul>
            <div class="layui-tab-content clildFrame">
                <div id="layuiminiHomeTabIframe" class="layui-tab-item layui-show">
                </div>
            </div>
        </div>

    </div>

</div>


<script type="text/javascript" src="${ctx}/js/main.js"></script>


<script type="text/javascript">
    let myClock = setInterval(function () {
        var date = new Date();
        //date.getDay()拿到的值是阿拉伯数字，将他换成汉字
        var week = date.getDay()
        switch (week) {
            case 1:
                week = "星期一"
                break;
            case 2:
                week = "星期二"
                break;
            case 3:
                week = "星期三"
                break;
            case 4:
                week = "星期四"
                break;
            case 5:
                week = "星期五"
                break;
            case 6:
                week = "星期六"
                break;
            case 0:
                week = "星期日"
                break;
        }
        // 时间没有在此处一次性组合完毕是为了方便在 输出时美化
        // 组合年月日
        let ymd = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + date.getDate();
        // 组合时分秒
        let hms = date.getHours() + ":" + date.getMinutes() + ":" + date.getSeconds();

        document.getElementById("showTime").innerHTML = ymd + "&nbsp;&nbsp;" + week + "&nbsp;&nbsp; " + hms;
    }, 1000)

</script>
<script src="https://eqcn.ajz.miesnfu.com/wp-content/plugins/wp-3d-pony/live2dw/lib/L2Dwidget.min.js"></script>

<!--小帅哥： https://unpkg.com/live2d-widget-model-chitose@1.0.5/assets/chitose.model.json-->
<!--萌娘：https://unpkg.com/live2d-widget-model-shizuku@1.0.5/assets/shizuku.model.json-->
<!--小可爱（女）：https://unpkg.com/live2d-widget-model-koharu@1.0.5/assets/koharu.model.json-->
<!--小可爱（男）：https://unpkg.com/live2d-widget-model-haruto@1.0.5/assets/haruto.model.json-->
<!--初音：https://unpkg.com/live2d-widget-model-miku@1.0.5/assets/miku.model.json-->
<!--小阿狸：https://unpkg.com/live2d-widget-model-nico@1.0.5/assets/nico.model.json-->
<!--绿毛妹妹：https://unpkg.com/live2d-widget-model-tsumiki@1.0.5/assets/tsumiki.model.json-->
<!--女学生： https://unpkg.com/live2d-widget-model-hibiki@1.0.5/assets/hibiki.model.json-->
<!--茶杯犬：https://cdn.jsdelivr.net/npm/live2d-widget-model-wanko@1.0.5/assets/wanko.model.json-->
<!--黑猫： https://unpkg.com/live2d-widget-model-hijiki@1.0.5/assets/hijiki.model.json-->
<!-- 上边的不同链接显示的是不同的小人，这个可以根据需要来选择 下边的初始化部分，可以修改宽高来修改小人的大小，或者是鼠标移动到小人上的透明度，也可以修改小人在页面出现的位置。 -->
<script>
    /*https://unpkg.com/live2d-widget-model-hibiki@1.0.5/assets/hibiki.model.json*/
    L2Dwidget.init({
        "model": {
            jsonPath:
                "https://unpkg.com/live2d-widget-model-koharu@1.0.5/assets/koharu.model.json",
            "scale": 1
        },
        "display": {"position": "left", "width": 110, "height": 240, "hOffset": -10, "vOffset": -50},
        "mobile": {"show": true, "scale": 0.5},
        "react": {"opacityDefault": 0.8, "opacityOnHover": 0.1}
    });
</script>

</body>
</html>
