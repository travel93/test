<%--
  Created by IntelliJ IDEA.
  User: 92828
  Date: 2021/5/30
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"
         language="java" %>
<%@ page isELIgnored="false"%>
<html>
<head>
    <title>注册界面</title>
    <style type="text/css" >
        body{
            background:url("resource/images/bg.jpg");
        }
        .head{
            width:100%;
            height:200px;
        }
        .footer{
            width:100%;
            height:100px;
        }
        .body{
            width:550px;
            margin: 0px auto;

        }
        label.error{
            background:url("resource/images/unchecked.gif") no-repeat 10px 3px;
            padding-left: 20px;
            font-family:georgia;
            font-size: 15px;
            font-style: normal;
            color: red;
        }

        label.success{
            background:url("resource/images/checked.gif") no-repeat 10px 3px;
            padding-left: 10px;
        }
    </style>
</head>
<body>
<!-- 头部 -->
<div class="head"></div>
<!-- 身体 -->
<div class="body" align="center">

    <form action="user?code=regist" method="post" id="registForm" style="position: absolute;top:50px">
        <h1 style="color:red">${requestScope.msg}</h1>
        <table border="0px" style="width: 650px;height: 600px;" align="center" cellpadding="0px" cellspacing="0px" bgcolor="white">
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <font size="5" color="orange">新用户注册</font>&nbsp;&nbsp;&nbsp;USER REGISTER
                    <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;已有账号？</span>
                    <a href="login.jsp" style="color: red; align:right; text-decoration: none;" >立即登录</a>
                </td>
            </tr>
            <tr>
                <td width="180px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    <label for="user" >用户名</label>
                </td>
                <td>
                    <input type="text" style="border-radius: 6px;height: 30px;" name="user" size="35px" id="user" placeholder="请输入账号" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    密码
                </td>
                <td>
                    <input type="password" style="border-radius: 6px;height: 30px;"  name="password" size="35px" id="password" placeholder="请输入密码"/>
                </td>
            </tr>

            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    Email
                </td>
                <td>
                    <input type="text" style="border-radius: 6px;height: 30px;" name="email" size="35px" id="email" placeholder="请输入Email"/>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    姓名
                </td>
                <td>
                    <input type="text" style="border-radius: 6px;height: 30px;" name="username" size="35px" id="username" placeholder="请输入真实姓名"/>

                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    手机号
                </td>
                <td>
                    <input type="text" style="border-radius: 6px;height: 30px;" name="phonenumber" size="35px" id="phonenumber" placeholder="请输入您的手机号"/>

                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    性别
                </td>
                <td>
                <%--@declare id="sex"--%><span style="margin-right: 155px;">

                    <input type="radio" name="sex" value="男"/>男
                    <input type="radio" name="sex" value="女"/>女<em></em>
                </span>
                    <!--  字节添加提示标签在radio元素  -->
                    <label for="sex" class="error" style="display: none;padding-left: 34px;"></label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    出生日期
                </td>
                <td>
                    <input type="date" style="border-radius: 6px;height: 30px;" name="birthday"  size="35px" id="birthday" placeholder="&nbsp;&nbsp;年/月/日"/>

                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    会员
                </td>
                <td>
                    <span style="margin-right: 155px;">

                        <input type="radio" name="member" value="general"/>普通会员
                        <input type="radio" name="member" value="superior"/>高级会员
                    </span>

                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" value="注      册" style="background-color: orange;width: 90px;height: 40px;border: none;"/>
                </td>
            </tr>
        </table>
    </form>
</div>
<!-- 尾部 -->
<div class="footer"></div>
</body>
<script src="resource/js/jquery-3.1.1.js"></script>
<script src="resource/validate/jquery.validate.min.js"></script>
<script>
    $("#registForm").validate({

        "rules":{
            "user":{
                required:true,
                maxlength:5
            },
            "password":{
                required:true,
                minlength:6,
                digits:true
            },

            "email":{
                required:true,
                email:true
            },
            "username":{
                required:true
            },
            "phonenumber":{
                required:true
            },
            "sex":{
                required:true
            },
            "birthday":{
                required:true,
                dateISO:true
            }
        },

        "messages":{
            "user":{
                required:"*必填",
                maxlength:"*最大长度为5"
            },
            "password":{
                required:"*必填",
                minlength:"*长度至少为6",
                digits:"*必须是数字"
            },

            "email":{
                required:"*必填",
                email:"*邮箱格式必须正确"
            },
            "username":{
                required:"*必填"
            },
            "phonenumber":{
                required:"*必填"
            },
            "sex":{
                required:"*必填"
            },
            "birthday":{
                required:"*必填",
                dateISO:"*日期格式必须正确"
            }

        },

        //若有手动添加的label提示标签，则一旦成功清空文本信息，添加class属性为success
        success:function(label){
            label.text("").addClass("success");
        }

    })
</script>
</html>
