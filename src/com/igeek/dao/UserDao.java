package com.igeek.dao;

import com.igeek.entity.User;
import com.igeek.utils.JDBCUtils;

import java.sql.SQLException;

/**
 * @Description: 客户
 * @author: ClownL12
 * @create: 2021-05-31 19:32
 */
public class UserDao extends BaseDao<User>{

    //插入用户信息
    public int insert(User user) throws SQLException {
        String sql = "insert into user values(null,?,?,?,?,?,?,?,0,0)";
        int i = this.update(JDBCUtils.getConn(), sql,
                user.getUname(), user.getPwd(), user.getName(),
                user.getBirthday(), user.getGender(), user.getPhone(), user.getEmail());
        return i;
    }

    //通过姓名和密码查询信息
    public User selectOne(String uname,String pwd) throws SQLException {
        User user = this.getBean(JDBCUtils.getConn(), "select * from user where uname = ? and password = ?", User.class, uname, pwd);
        return user;
    }
}
