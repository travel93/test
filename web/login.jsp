<%--
  Created by IntelliJ IDEA.
  User: 92828
  Date: 2021/5/29
  Time: 13:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<html>
<head>
    <title>登录界面</title>
    <style type="text/css">
        .head{
            width:100%;
            height:100px;
        }
        .body{
            width:100%;
            height:500px;
            background: url("resource/images/bg.jpg");
            margin: auto;
            background-repeat: no-repeat;
        }
        .footer{
            width:100%;
            height:100px;
        }
        .window{
            background-color: white;
            width: 300px;
            height: 410px;
            position: relative;
            top: 50px;
            left:1100px;
            text-align: center;
        }
        .windowhead{
            background-color:lightblue;
            width: 300px;
            height:70px;
            top: 0px;
            font-size:130%;
            font-weight: bold;
            line-height:70px;
        }
        #input1{
            position: relative;
            top:30px;
        }
        #input2{
            position: relative;
            top:50px;
        }
        #input3{
            position: relative;
            top:70px;
            font-size:15px;
            background-color: lightblue;
        }
        #d3{
            position: relative;
            top:100px;
        }
        #d4{
            position: relative;
            top:130px;
        }
    </style>
</head>
<body>
<!-- 头部 -->
<div class="head">
</div>
<!-- 身体 -->
<div class="body">
    <div class="window">
        <div class="windowhead">欢迎登录旅游账户

        </div>
        <form action="user?code=login" method="post">
            <div style="color: red;font-size: 15px;width: 300px;height: 30px;margin-top: 10px">${requestScope.msg}</div>
            <input type="text" name="name" id="input1" value="" style="width:200px;height:40px;" placeholder="请输入账号" />
            <br>
            <input type="password" name="pwd" id="input2" value="" style="width:200px;height:40px;" placeholder="请输入密码" />
            <br>
            <input type="submit" name="denglu" id="input3" value="登录" style="width:120px;height:40px;"/>
            <br>
            <div id="d3">
                <input type="checkbox" name="check" id="" value="" checked="checked" />记住密码
            </div>
            <div id="d4">
                <span>没有账户？</span><a href="register.jsp" style="color: red; text-decoration: none;" >注册账户</a>
            </div>
        </form>
    </div>
</div>
<!-- 尾部 -->
<div class="footer">

</div>
</body>
</html>
