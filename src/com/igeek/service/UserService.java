package com.igeek.service;

import com.igeek.dao.UserDao;
import com.igeek.entity.User;
import com.igeek.utils.JDBCUtils;

import java.sql.SQLException;

/**
 * @Description: 业务逻辑层
 * @author: ClownL12
 * @create: 2021-05-31 19:39
 */
public class UserService {

    private UserDao dao = new UserDao();

    //注册
    public boolean regist(User user){
        try {
            int i = dao.insert(user);
            return i>0?true:false;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            //关闭资源
            JDBCUtils.close();
        }
        return false;
    }

    //登录
    public User login(String uname,String pwd){
        User user = null;
        try {
            user = dao.selectOne(uname, pwd);
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{
            //关闭资源
            JDBCUtils.close();
        }
        return user;
    }
}
