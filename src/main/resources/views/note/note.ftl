<!DOCTYPE html>
<html>
<head>
    <#include "../common.ftl">
</head>
<div>

    <div class="layui-upload" align="left">
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
            <legend>请选择您要上传的文件</legend>
        </fieldset>

        <div class="layui-upload-list">
            <table class="layui-table">
                <thead>
                <div class="layui-form-item">
                    <div>
                        <label class="layui-form-label"> 文件名：</label>
                        <div class="layui-inline">
                            <input class="layui-input" name="name" id="name" autocomplete="off"
                                   placeholder="请输入文件名">
                        </div>

                        描述：
                        <div class="layui-inline">
                            <input class="layui-input" name="description" id="description" autocomplete="off"
                                   placeholder="请输入描述">
                        </div>
                    </div>
                </div>

                <tr style="margin-left: 50px">
                    <th>文件名</th>
                    <th>大小</th>
                    <th>状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody id="demoList"></tbody>
            </table>

        </div>
        <div align="center">
            <button type="button" class="layui-btn layui-btn-normal" id="testList">选择文件</button>
            <button type="button" class="layui-btn" id="testAction">开始上传</button>
        </div>
    </div>
</div>
<script type="text/javascript" src="${ctx}/js/note/note.js"></script>
</html>