<%--
  Created by IntelliJ IDEA.
  User: 92828
  Date: 2021/6/6
  Time: 21:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<html>
<head>
    <!-- 声明文档的编码集 -->
    <meta charset="utf-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <link href="resource/css/bootstrap.min.css" rel="stylesheet">
    <title>旅游界面</title>
    <style type="text/css">
        /*分页样式*/
        .pageNum {
            width: 100%;
            overflow: hidden;
        }

        .pageNum ul li {
            width: 40px;
            height: 40px;
            float: left;
            border: 1px solid #eee;
            margin-right: 10px;
            text-align: center;
            line-height: 40px;
            list-style: none;
        }
        .pageNum ul li.curPage {
            background-color: #ffc900;
        }
        .pageNum ul li a {
            width: 100%;
            height: 100%;
            color: #000;
            font-size: 14px;
        }
        .pageNum ul .threeword {
            width: 75px;
        }

        .titlo{
            width: 500px;
            height: 10px;
        }
        .table{
            margin-top: 50px;
            margin-left: 150px;
            float: left;
            width: 67%;
        }
        .t1{
            width: 950px;
            height: 1400px;
        }
        .cemian{
            margin-top: 50px;
            margin-right: 100px;
            width: 300px;
            height: 1430px;
            float: right;
        }
    </style>
</head>
<body>
<div class="titlo" style="margin-top: 20px;margin-left: 80px;">
    <img src="resource/images/search.png" style="width: 20px;height: 20px;"><font size="5px">旅行></font><font size="5px" color="red">搜索结果</font>
</div>

<!-- 左侧主体 -->
<div class="table">
    <table border="0px" cellspacing="0px" cellpadding="5px" class="t1">
        <tr>
            <td></td>
            <th style="text-align: left;">商品信息</th>
            <th style="text-align: center;">价格</th>
        </tr>

        <tr>
            <td width="300px"><img src="resource/images/bg.jpg" style="width: 250px;height: 150px;" ></td>
            <td width="400px;"><font size="3px">【减100元 含除夕/春节出发】广州增城<br>三英温泉度假酒店/自由行套票</font><br><br>
                <font style="color: grey; font-size: small;">1-2月出发，网付立享￥1099/2人起！爆款位置有<br>限，抢完即止！</font></td>
            <td align="center"><font size="6px" color="red">￥299</font><font size="2px">起</font><br>
                <a href="#" style="text-decoration: none;color: black;">查看详情</a>
            </td>
        </tr>
        <tr>
            <td width="300px"><img src="resource/images/bg.jpg" style="width: 250px;height: 150px;"></td>
            <td width="400px;"><font size="3px">浪花朵朵旅行普吉岛丛林飞跃空中飞人探<br>险游中文服务泰国旅游</font><br><br>
                <font style="color: grey; font-size: small;">1-2月出发，网付立享￥1099/2人起！爆款位置有<br>限，抢完即止！</font></td>
            <td align="center"><font size="6px" color="red">￥899</font><font size="2px">起</font><br>
                <a href="#" style="text-decoration: none;color: black;">查看详情</a>
            </td>
        </tr>

        <tr>
            <td width="300px"><img src="resource/images/bg.jpg" style="width: 250px;height: 150px;"></td>
            <td width="400px;"><font size="3px">黑妞皇家旅行普吉岛攀牙湾大船星光之旅<br>皮划艇日落休闲特色体验</font><br><br>
                <font style="color: grey; font-size: small;">1-2月出发，网付立享￥1099/2人起！爆款位置有<br>限，抢完即止！</font></td>
            <td align="center"><font size="6px" color="red">￥999</font><font size="2px">起</font><br>
                <a href="#" style="text-decoration: none;color: black;">查看详情</a>
            </td>
        </tr>

        <tr>
            <td width="300px"><img src="resource/images/bg.jpg" style="width: 250px;height: 150px;"></td>
            <td width="400px;"><font size="3px">浪花朵朵旅行普吉岛皇帝岛珊瑚岛香蕉船<br>拖拽伞水上项目</font><br><br>
                <font style="color: grey; font-size: small;">1-2月出发，网付立享￥1099/2人起！爆款位置有<br>限，抢完即止！</font></td>
            <td align="center"><font size="6px" color="red">￥99</font><font size="2px">起</font><br>
                <a href="#" style="text-decoration: none;color: black;">查看详情</a>
            </td>
        </tr>

        <tr>
            <td width="300px"><img src="resource/images/bg.jpg" style="width: 250px;height: 150px;"></td>
            <td width="400px;"><font size="3px">环游记 泰国清迈Lila massage女子监狱<br>spa 丽菈泰式按摩马杀鸡</font><br><br>
                <font style="color: grey; font-size: small;">1-2月出发，网付立享￥1099/2人起！爆款位置有<br>限，抢完即止！</font></td>
            <td align="center"><font size="6px" color="red">￥199</font><font size="2px">起</font><br>
                <a href="#" style="text-decoration: none;color: black;">查看详情</a>
            </td>
        </tr>

        <tr>
            <td width="300px"><img src="resource/images/bg.jpg" style="width: 250px;height: 150px;"></td>
            <td width="400px;"><font size="3px">【减100元 含除夕/春节出发】广州增城<br>三英温泉度假酒店/自由行套票</font><br><br>
                <font style="color: grey; font-size: small;">1-2月出发，网付立享￥1099/2人起！爆款位置有<br>限，抢完即止！</font></td>
            <td align="center"><font size="6px" color="red">￥899</font><font size="2px">起</font><br>
                <a href="#" style="text-decoration: none;color: black;">查看详情</a>
            </td>
        </tr>

        <tr>
            <td width="300px"><img src="resource/images/bg.jpg" style="width: 250px;height: 150px;"></td>
            <td width="400px;"><font size="3px">泰国芭提雅三合一日游芭提雅蒂芬妮人妖<br>秀成人门票bigeye含接送</font><br><br>
                <font style="color: grey; font-size: small;">1-2月出发，网付立享￥1099/2人起！爆款位置有<br>限，抢完即止！</font></td>
            <td align="center"><font size="6px" color="red">￥1589</font><font size="2px">起</font><br>
                <a href="#" style="text-decoration: none;color: black;">查看详情</a>
            </td>
        </tr>

        <tr>
            <td><span style="font-size:20px; color: gray;" >共<font color="red">12</font>页<font color="red">132</font>条</span></td>
        </tr>

    </table>
</div>

<!-- 右侧主体 -->
<div class="cemian" style="float: right;">
    <table border="0px" cellspacing="" cellpadding="10px">
        <tr>
            <td><font size="4px" color="red" style="text-decoration: underline;">Hot</font>&nbsp;&nbsp;热门推荐</td>
            <td></td>
        </tr>

        <tr>
            <td width="120px">
                <img src="resource/images/bg.jpg" style="width: 100px;height: 50px;" >
            </td>
            <td>
                <font size="2px" color=""><b>清远新银盏温泉度假<br>村酒店/自由行套...</b><br>网付价</font><font size="3px" color="red">¥899起</font>
            </td>
        </tr>

        <tr>
            <td>
                <img src="resource/images/bg.jpg" style="width: 100px;height: 50px;">
            </td>
            <td>
                <font size="2px" color=""><b>清远新银盏温泉度假<br>村酒店/自由行套...</b><br>网付价</font><font size="3px" color="red">¥899起</font>
            </td>
        </tr>

        <tr>
            <td>
                <img src="resource/images/bg.jpg" style="width: 100px;height: 50px;">
            </td>
            <td>
                <font size="2px" color=""><b>清远新银盏温泉度假<br>村酒店/自由行套...</b><br>网付价</font><font size="3px" color="red">¥899起</font>
            </td>
        </tr>

        <tr>
            <td>
                <img src="resource/images/bg.jpg" style="width: 100px;height: 50px;">
            </td>
            <td>
                <font size="2px" color="">
                    <b>清远新银盏温泉度假<br>村酒店/自由行套...</b><br>网付价</font><font size="3px" color="red">¥899起</font>
            </td>
        </tr>

        <tr>
            <td>
                <img src="resource/images/bg.jpg" style="width: 100px;height: 50px;">
            </td>
            <td>
                <font size="2px" color=""><b>清远新银盏温泉度假<br>村酒店/自由行套...</b><br>网付价</font><font size="3px" color="red">¥899起</font>
            </td>
        </tr>

        <tr>
            <td>
                <img src="resource/images/bg.jpg" style="width: 100px;height: 50px;">
            </td>
            <td>
                <font size="2px" color=""><b>清远新银盏温泉度假<br>村酒店/自由行套...</b><br>网付价</font><font size="3px" color="red">¥899起</font>
            </td>
        </tr>

        <tr>
            <td>
                <img src="resource/images/bg.jpg" style="width: 100px;height: 50px;">
            </td>
            <td>
                <font size="2px" color=""><b>清远新银盏温泉度假<br>村酒店/自由行套...</b><br>网付价</font><font size="3px" color="red">¥899起</font>
            </td>
        </tr>
    </table>
</div>

<!-- 分页栏 -->
<div class="pageNum" style="padding-left: 150px;">
    <ul>
        <li><a href="">首页</a></li>
        <li class="threeword"><a href="#">上一页</a></li>
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
        <li><a href="#">6</a></li>
        <li><a href="#">7</a></li>
        <li><a href="#">8</a></li>
        <li><a href="#">9</a></li>
        <li><a href="#">10</a></li>
        <li class="threeword"><a href="javascript:;">下一页</a></li>
        <li class="threeword"><a href="javascript:;">末页</a></li>
    </ul>
</div>

<!-- 尾部 -->
<div class="footer">

</div>
</body>
    <!-- 先引入jQuery核心js文件 -->
    <script src="resource/js/jquery-1.11.0.min.js"></script>
    <!-- 引入BootStrap核心js文件 -->
    <script src="resource/js/bootstrap.min.js"></script>
</html>
