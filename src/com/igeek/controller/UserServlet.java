package com.igeek.controller;

import com.igeek.entity.User;
import com.igeek.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Description:
 * @author: ClownL12
 * @create: 2021-05-31 19:50
 */
@WebServlet(name = "UserServlet",urlPatterns = "/user")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.处理请求的中文友好
        request.setCharacterEncoding("UTF-8");

        UserService service = new UserService();

        //创建会话对象
        HttpSession session = request.getSession();

        //2.获得请求参数
        String code = request.getParameter("code");
        if(code != null && !code.equals("")){
            switch(code){
                case "regist":
                    //注册
                    String user = request.getParameter("user");
                    String password = request.getParameter("password");
                    String email = request.getParameter("email");
                    String username = request.getParameter("username");
                    String phonenumber = request.getParameter("phonenumber");
                    String sex = request.getParameter("sex");
                    String date = request.getParameter("birthday");
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    Date birthday = null;
                    try {
                        birthday = sdf.parse(date);
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                    //注册
                    User uperson = new User(user,password,username,birthday,sex,phonenumber,email);
                    if(uperson != null){
                        boolean flag = service.regist(uperson);
                        System.out.println("flag="+flag);
                        if(flag){
                            //跳转至登录界面
                            response.sendRedirect("login.jsp");
                        }else{
                            //注册失败信息提示
                            request.setAttribute("msg","注册失败 请重新输入");
                            //重填注册界面
                            request.getRequestDispatcher("register.jsp").forward(request,response);
                        }
                    }
                    break;
                case "login":
                    //登录
                    String name = request.getParameter("name");
                    String pwd = request.getParameter("pwd");
                    if(name != null && !name.equals("") && pwd != null && !pwd.equals("")){
                        User uperson2 = service.login(name, pwd);
                        if(uperson2 != null){
                            Integer state = uperson2.getStatus();
                            switch(state){
                                case 0:
                                    request.setAttribute("msg", "当前账户为普通成员");
                                    request.getRequestDispatcher("login.jsp").forward(request,response);
                                    break;
                                case 1:
                                    //request.setAttribute("user",uperson2);
                                    session.setAttribute("user",uperson2);
                                    request.getRequestDispatcher("index.jsp").forward(request,response);
                                    break;
                                case 2:
                                    request.setAttribute("msg", "当前账户为高级会员");
                                    request.getRequestDispatcher("login.jsp").forward(request,response);
                                    break;
                            }
                        }else{
                            request.setAttribute("msg", "姓名与密码不匹配");
                            request.getRequestDispatcher("login.jsp").forward(request,response);
                        }
                    }else{
                        request.setAttribute("msg", "姓名或密码未填写");
                        request.getRequestDispatcher("login.jsp").forward(request,response);
                    }
                    break;
                case "logout":
                    //退出 会话销毁
                    session.invalidate();
                    request.setAttribute("msg", "已安全退出");
                    request.getRequestDispatcher("login.jsp").forward(request,response);
                    break;
                default:
                    break;
            }
        }else{

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request,response);
    }
}
