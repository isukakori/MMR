<#--<!DOCTYPE html>-->
<#--<html>-->
<#--<head>-->
<#--  <#include "common.ftl">-->
<#--</head>-->


<#--<body class="childrenBody">-->

<#--<div class="layui-tab-item layui-show">-->
<#--    <div class="layui-carousel" id="test10" align="center">-->
<#--        <div carousel-item="">-->
<#--            <div><img src="${ctx}/images/mm.png"></div>-->
<#--        </div>-->
<#--    </div>-->
<#--</div>-->

<#--<script>-->
<#--    layui.use(['carousel', 'form'], function(){-->
<#--        var carousel = layui.carousel-->
<#--            ,form = layui.form;-->

<#--        //常规轮播-->
<#--        carousel.render({-->
<#--            elem: '#test1'-->
<#--            ,arrow: 'always'-->
<#--        });-->

<#--        //改变下时间间隔、动画类型、高度-->
<#--        carousel.render({-->
<#--            elem: '#test2'-->
<#--            ,interval: 1800-->
<#--            ,anim: 'fade'-->
<#--            ,height: '120px'-->
<#--        });-->

<#--        //设定各种参数-->
<#--        var ins3 = carousel.render({-->
<#--            elem: '#test3'-->
<#--        });-->
<#--        //图片轮播-->
<#--        carousel.render({-->
<#--            elem: '#test10'-->
<#--            ,width: '100%'-->
<#--            ,height: '440px'-->
<#--            ,interval: 3000-->
<#--        });-->

<#--        //事件-->
<#--        carousel.on('change(test4)', function(res){-->
<#--            console.log(res)-->
<#--        });-->

<#--        var $ = layui.$, active = {-->
<#--            set: function(othis){-->
<#--                var THIS = 'layui-bg-normal'-->
<#--                    ,key = othis.data('key')-->
<#--                    ,options = {};-->

<#--                othis.css('background-color', '#5FB878').siblings().removeAttr('style');-->
<#--                options[key] = othis.data('value');-->
<#--                ins3.reload(options);-->
<#--            }-->
<#--        };-->

<#--        //监听开关-->
<#--        form.on('switch(autoplay)', function(){-->
<#--            ins3.reload({-->
<#--                autoplay: this.checked-->
<#--            });-->
<#--        });-->

<#--        $('.demoSet').on('keyup', function(){-->
<#--            var value = this.value-->
<#--                ,options = {};-->
<#--            if(!/^\d+$/.test(value)) return;-->

<#--            options[this.name] = value;-->
<#--            ins3.reload(options);-->
<#--        });-->

<#--        //其它示例-->
<#--        $('.demoTest .layui-btn').on('click', function(){-->
<#--            var othis = $(this), type = othis.data('type');-->
<#--            active[type] ? active[type].call(this, othis) : '';-->
<#--        });-->
<#--    });-->
<#--</script>-->
<#--</body>-->
<#--</html>-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Photo Wall</title>
    <#include "common.ftl">

</head>
<div class="layui-tab-item layui-show">
    <div>
        <style>
            * {
                margin: 0px;
                padding: 0;

            }

            body {
                background: url("${ctx}/images/welcome.jpg");
                background-size: 100% 100%;
                /*background-repeat: no-repeat;*/
                /*background-size: auto;*/
            }

            .container {
                960px;
                height: 450px;
                margin: 30px auto;
                position: relative;
            }

            .pic {
                160px
            }

            .container img:hover {
                box-shadow: 35px 35px 35px rgba(50, 50, 50, 0.8);
                transform: rotate(0deg) scale(1.5);
                z-index: 1; /*代表图片层级，将其设置为最上面的图层*/
            }

            .container img {
                border-radius: 60px;
                160px;
                height: 160px;
                padding: 10px;
                background-color: white;
                box-shadow: 15px 15px 15px rgba(50, 50, 50, 0.99);
                position: absolute;
                /*绝对定位--利用Left可以手动调整照片位置*/
                /*加入动画效果*/
                transition: all 1s ease-in;
            }

            .pic1 {
                transform: rotate(30deg);
                top: 90px;
                left: 600px;
            }

            .pic2 {
                left: 170px;
                top: 0;
                transform: rotate(-20deg);
            }

            .pic3 {
                buttom: 100px;
                right: 100px;
                transform: rotate(-5deg);
            }

            .pic4 {
                top: 40px;
                left: 300px;
                transform: rotate(-10deg);
            }

            .pic5 {
                buttom: 0px;
                left: 830px;
                top: 100px;
                transform: rotate(20deg);
            }

            .pic6 {
                left: 50px;
                top: 0px;
                transform: rotate(10deg);
            }

            .pic7 {
                left: 850px;
                top: 0px;
                transform: rotate(20deg);
            }

            .pic8 {
                buttom: -20px;
                top: 100px;
                transform: rotate(5deg);
            }

            .pic9 {
                left: 550px;
                top: -10px;
                transform: rotate(15deg);
            }

            .pic10 {
                left: 400px;
                top: -20px;
                transform: rotate(-5deg);
            }

            .pic11 {
                left: 200px;
                top: 0;
                transform: rotate(-30deg);
            }

            .pic12 {
                buttom: 100px;
                right: 100px;
                transform: rotate(-5deg);
            }

            .pic13 {
                top: 50px;
                left: 300px;
                transform: rotate(-10deg);
            }

            .pic14 {
                buttom: 0px;
                top: -250px;
                transform: rotate(15deg);
            }

            .pic15 {
                left: 0px;
                top: -100px;
                transform: rotate(10deg);
            }

            .pic16 {
                left: 880px;
                top: -50px;
                transform: rotate(20deg);
            }

            .pic17 {
                left: 50px;
                top: 30px;
                transform: rotate(25deg);

            }

            .pic18 {
                left: 550px;
                top: 50px;
                transform: rotate(15deg);
            }

            .pic19 {
                left: 400px;
                top: 0px;
                transform: rotate(-20deg);
            }

            .pic20 {
                left: 790px;
                top: 50px;
                transform: rotate(20deg);
            }
        </style>
        <div class="container">
            <img class="pic pic1" src="${ctx}/images/ganyu1.gif">
            <img class="pic pic2" src="${ctx}/images/ganyu2.gif">
            <img class="pic pic3" src="${ctx}/images/hutao3.gif">
            <img class="pic pic4" src="${ctx}/images/hutao4.gif">
            <img class="pic5 pic" src="${ctx}/images/linghua1.gif">
            <#--    <img class="pic6 pic" src="${ctx}/images/mm.png">-->
            <img class="pic7 pic" src="${ctx}/images/shenzi1.gif">
            <img class="pic8 pic" src="${ctx}/images/zhongli1.gif">
            <img class="pic9 pic" src="${ctx}/images/ouwen1.gif">
            <img class="pic10 pic" src="${ctx}/images/ouwen2.gif">
        </div>

        <div class="container">
            <img class="pic11 pic" src="${ctx}/images/hutao.gif">
            <img class="pic12 pic" src="${ctx}/images/hutao2.gif">
            <img class="pic13 pic" src="${ctx}/images/dm2.gif">
            <img class="pic14 pic" src="${ctx}/images/dm1.gif">
            <img class="pic15 pic" src="${ctx}/images/dm3.gif">
            <img class="pic16 pic" src="${ctx}/images/keli1.jsp.gif">
            <img class="pic17 pic" src="${ctx}/images/jiangjun1.gif">
            <img class="pic18 pic" src="${ctx}/images/jiangjun2.gif">
            <img class="pic19 pic" src="${ctx}/images/linghua2.gif">
            <img class="pic20 pic" src="${ctx}/images/hutao5.gif">
        </div>
    </div>
</div>
</body>
</html>