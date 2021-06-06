<%--
  Created by IntelliJ IDEA.
  User: 92828
  Date: 2021/6/6
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>管理员界面</title>
    <link rel="stylesheet" href="resource/layui/css/layui.css">
</head>
<body>
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo layui-hide-xs layui-bg-black">后台管理界面</div>
        <!-- 头部区域（可配合layui 已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <!-- 移动端显示 -->
            <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
                <i class="layui-icon layui-icon-spread-left"></i>
            </li>

            <li class="layui-nav-item layui-hide-xs"><a href="">展示条</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">旅游线路</a>
                <dl class="layui-nav-child">
                    <dd><a href="">国内游</a></dd>
                    <dd><a href="">出国游</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item layui-hide layui-show-md-inline-block">
                <a href="javascript:;">
                    <img src="//tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" class="layui-nav-img">
                    管理员
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">Your Profile</a></dd>
                    <dd><a href="">Settings</a></dd>
                    <dd><a href="">Sign out</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">旅游规划</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">景点信息</a></dd>
                        <dd><a href="javascript:;">客户信息</a></dd>
                        <dd><a href="javascript:;">会员信息</a></dd>
                        <dd><a href="javascript:;">公司会员信息</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="javascript:;">选项卡</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="200">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>昵称</th>
                    <th>加入时间</th>
                    <th>签名</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>贤心</td>
                    <td>2016-11-29</td>
                    <td>人生就像是一场修行</td>
                </tr>
                <tr>
                    <td>许闲心</td>
                    <td>2016-11-28</td>
                    <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        全程安全由旅行社全程负责!
    </div>
</div>
</body>
<script src="resource/layui/layui.js"></script>
<script>
    layui.use(['element','layer','util'],function(){
        var element = layui.element,
            layer = layui.layer,
            util = layui.util,
            $ = layui.$;

        //头部事件
        util.event('lay-header-event',{menuRight: function(){
            layer.open({
                type: 1,
                content: '<div style="padding: 15px;">处理右侧面板的操作</div>',
                area: ['260px', '100%'],
                offset: 'rt', //右上角
                anim: 5,
                shadeClose: true
            });
        }
    });

    });
</script>
</html>
