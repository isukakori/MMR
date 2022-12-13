layui.use('upload', function () {
    var $ = layui.jquery
        , upload = layui.upload;

    //多文件列表
    var demoListView = $('#demoList')
        , uploadListIns = upload.render({
        elem: '#testList'
        , url: ctx + '/note/uploadFile'
        , accept: 'file'
        , multiple: true
        , auto: false
        , size: 512000
        , bindAction: '#testAction'
        , before: function () {
            console.log(123);
            /*return false;
            console.log("add->" + id + "-" + r);
            alert("ft->" + fileTypeId);
            layer.msg("请选择文件类型！", {icon: 1, time: 1000});
            if (fileTypeId == null && fileTypeId == '' && fileTypeId == "") {
            }*/
            this.data = {
                "name": $("#name").val(),
                //"xxId": xxId
            };
        }


        , choose: function (obj) {
            var files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
            //读取本地文件
            obj.preview(function (index, file) {
                var tr = $(['<tr id="upload-' + index + '">'
                    , '<td>' + file.name + '</td>'
                    , '<td>' + (file.size / 1014).toFixed(1) + 'kb</td>'
                    , '<td>等待上传</td>'
                    , '<td>'
                    , '<button class="layui-btn layui-btn-mini demo-reload layui-hide">重传</button>'
                    , '<button class="layui-btn layui-btn-mini layui-btn-danger demo-delete">删除</button>'
                    , '</td>'
                    , '</tr>'].join(''));

                //单个重传
                tr.find('.demo-reload').on('click', function () {
                    obj.upload(index, file);
                });

                //删除
                tr.find('.demo-delete').on('click', function () {
                    delete files[index]; //删除对应的文件
                    tr.remove();
                    uploadListIns.config.elem.next()[0].value = ''; //清空 input file 值，以免删除后出现同名文件不可选
                });

                demoListView.append(tr);
            });
        }
        , done: function (res, index, upload) {
            debugger;
            if (res.code == 0) { //上传成功
                var tr = demoListView.find('tr#upload-' + index)
                    , tds = tr.children();
                tds.eq(2).html('<span style="color#5FB878;">上传成功</span>');
                tds.eq(3).html(''); //清空操作
                return delete this.files[index]; //删除文件队列已经上传成功的文件
            } else if (res.code == 2) {
                layer.msg("请选择文件类型！", {icon: 5, time: 1000});
            }
            this.error(index, upload);
        }
        , error: function (index) {
            debugger;
            var tr = demoListView.find('tr#upload-' + index)
                , tds = tr.children();
            tds.eq(2).html('<span style="color#FF5722;">上传失败1</span>');
            tds.eq(3).find('.demo-reload').removeClass('layui-hide'); //显示重传
        }
    });
});