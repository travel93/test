<%--
  Created by IntelliJ IDEA.
  User: 92828
  Date: 2021/6/6
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>路线界面</title>
    <!-- 声明文档的编码集 -->
    <meta charset="utf-8">
    <!--声明文档兼容模式，表示使用IE浏览器的最新模式-->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--设置视口的宽度(值为设备的理想宽度)，页面初始缩放值<理想宽度/可见宽度>-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

    <!-- 引入Bootstrap核心样式文件 -->
    <link href="resource/css/bootstrap.min.css" rel="stylesheet">
    <link href="resource/css/pgwslider.min.css" rel="stylesheet">
    <style>
        a{
            text-decoration: none;
            color: black;
        }

        a:hover{
            color: black;
        }
        .m{
            width: 650px;
            height: 364px;

        }

        .btn{
            width: 100px;
            height: 33px;
            color: white;
            background-color: red;
        }

        .abtn{
            width: 100px;
            height: 33px;
            color: white;
            background-color: lightgray;
        }

        .fontArea>p{
            padding-left: 30px;
            width: 1140px;
        }
    </style>
</head>
<body>
<!-- 导航栏 -->
<div class="container" style="margin-top: 5px;">
    <div class="row">
        <a href="#">首页</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<a href="#">国内游</a>&nbsp;&nbsp;&gt;&nbsp;&nbsp;<a href="#">自由行 特价往返进行二次确认</a>
    </div>
</div>

<!-- 主体 -->
<div class="container" style="border: 1px solid lightgrey;margin-top: 5px; height: 340px;">
    <div class="row">
        <!-- 图片轮播 -->
        <div class="m" style="float: left; margin-top: 30px;margin-left: 10px;width: 500px;">
            <ul class="pgwSlider">
                <li><img src="resource/images/bg.jpg"></li>
                <li><img src="resource/images/sea2.jpg"></li>
                <li> <img src="resource/images/sea.jpg"> </li>
                <li> <a href="#" target="_blank"> <img src="resource/images/freat.jpg"> </a> </li>
            </ul>
        </div>

        <!-- 介绍区 -->
        <div class="n" style="width: 470px;height: 300px;margin-top:15px;margin-left: 680px;">
            <div class="index1">
                <p style="font-size: 22px;font-weight: bold;">【尾单特卖】全国-曼谷6-7天自由行 泰国出境旅游 特价往返机票自由行二次确认</p>
                <p style="color: red;">1-2月出发，网付立享￥1099/2人起！爆款位置有限，抢完即止！</p>
            </div>

            <div class="index2" style="width:469px;height: 90px;background-color: #eee;">
                <p style="padding-top: 5px;padding-left: 5px;">经营商家:xxx</p>
                <p style="padding-left: 5px;">咨询电话:400-618-9090</p>
                <p style="padding-left: 5px;">地址:xxx</p>
            </div>

            <div class="index3" style="width:469px;height: 90px;background-color: #eee;margin-top: 20px;">
                <p style="padding-left: 10px;"><strong style="color: red;font-size: 30px;">¥2699.00</strong><span>起</span></p>
                <p class="collect" style="height:30px">
                    <a class="btn"><i class="glyphicon glyphicon-heart-empty"></i>点击收藏</a>
                    <a class="btn abtn" disabled="disabled"><i class="glyphicon glyphicon-heart-empty"></i>点击收藏</a>
                    <span>已收藏100次</span>
                </p>
            </div>
        </div>
    </div>
</div>

<!-- 文字框 -->
<div class="container" style="margin-top: 30px;">
    <div class="row" style="text-align: left;">
        <span style="border-bottom: 5px solid orange;position: relative;left: -511px;font-size: 20px;">旅游须知</span>
        <div class="fontArea" style="height:495px;border: 1px solid lightgrey;">
            <br />
            <p>1、旅行社已投保旅行社责任险。建议游客购买旅游意外保险 </p>
            <p>2、旅游者参加打猎、潜水、海边游泳、漂流、滑水、滑雪、滑草、蹦极、跳伞、滑翔、乘热气球、骑马、赛车、攀岩、水疗、水上飞机等属于高风险性游乐项目的，敬请旅游者务必在参加前充分了解项目的安全须知并确保身体状况能适应此类活动；如旅游者不具备较好的身体条件及技能，可能会造成身体伤害。</p>
            <p>3、参加出海活动时，请务必穿着救生设备。参加水上活动应注意自己的身体状况，有心脏病、冠心病、高血压、感冒、发烧和饮酒及餐后不可以参加水上活动及潜水。在海里活动时，严禁触摸海洋中各种鱼类，水母，海胆，珊瑚等海洋生物，避免被其蛰伤。老人和小孩必须有成年人陪同才能参加合适的水上活动。在海边游玩时，注意保管好随身携带的贵重物品。</p>
            <p>4、根据中国海关总署的规定，旅客在境外购买的物品，在进入中国海关时可能需要征收关税。详细内容见《中华人民共和国海关总署公告2010年第54号文件》。</p>
            <p>5、建议出发时行李托运，贵重物品、常用物品、常用药品、御寒衣物等请随身携带，尽量不要托运。行李延误属于不可抗力因素，我司将全力协助客人跟进后续工作，但我司对此不承担任何责任。</p>
            <p>1、旅行社已投保旅行社责任险。建议游客购买旅游意外保险 <br>
            <p>2、旅游者参加打猎、潜水、海边游泳、漂流、滑水、滑雪、滑草、蹦极、跳伞、滑翔、乘热气球、骑马、赛车、攀岩、水疗、水上飞机等属于高风险性游乐项目的，敬请旅游者务必在参加前充分了解项目的安全须知并确保身体状况能适应此类活动；如旅游者不具备较好的身体条件及技能，可能会造成身体伤害。</p>
            <p>3、参加出海活动时，请务必穿着救生设备。参加水上活动应注意自己的身体状况，有心脏病、冠心病、高血压、感冒、发烧和饮酒及餐后不可以参加水上活动及潜水。在海里活动时，严禁触摸海洋中各种鱼类，水母，海胆，珊瑚等海洋生物，避免被其蛰伤。老人和小孩必须有成年人陪同才能参加合适的水上活动。在海边游玩时，注意保管好随身携带的贵重物品。</p>
            <p>4、根据中国海关总署的规定，旅客在境外购买的物品，在进入中国海关时可能需要征收关税。详细内容见《中华人民共和国海关总署公告2010年第54号文件》。</p>
            <p>5、建议出发时行李托运，贵重物品、常用物品、常用药品、御寒衣物等请随身携带，尽量不要托运。行李延误属于不可抗力因素，我司将全力协助客人跟进后续工作，但我司对此不承担任何责任。</p>
        </div>
    </div>
</div>

<!-- 服务保障 -->
<div class="container" style="margin-top: 10px;">
    <div class="row">
        <img src="resource/images/footer.jpg" width="100%" />
    </div>
</div>

<!-- foot -->
<div class="container">
    <div class="row" style="text-align: center;">
        <div class="list-inline">
            <p>
                <a href="#">关于我们</a>
                <a href="#">联系我们</a>
                <a href="#">招贤纳士</a>
                <a href="#">法律声明</a>
                <a href="#">友情链接</a>
                <a href="#">支付方式</a>
                <a href="#">服务声明</a>
                <a href="#">广告声明</a>
            </p>
            <p>
                Copyright © 2021-2021 旅游系统 版权所有
            </p>
        </div>
    </div>
</div>
</body>
    <!-- 先引入jQuery核心js文件 -->
    <script src="resource/js/jquery-1.11.0.min.js"></script>
    <!-- 引入BootStrap核心js文件 -->
    <script src="resource/js/bootstrap.min.js"></script>
    <script src="resource/js/pgwslider.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $(document).ready(function() {
                $('.pgwSlider').pgwSlider();
            });
        });
    </script>
</html>
