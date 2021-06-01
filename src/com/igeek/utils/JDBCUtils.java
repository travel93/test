package com.igeek.utils;

import com.mchange.v2.c3p0.ComboPooledDataSource;

import java.sql.Connection;
import java.sql.SQLException;


/**
 * @Description: JDBC的连接工具类
 * @author: ClownL12
 * @create: 2021-05-31 19:09
 */
public class JDBCUtils {

    //数据源(连接池)
    private static ComboPooledDataSource pool = new ComboPooledDataSource("mysql");

    //线程变量 存放连接对象
    private static ThreadLocal<Connection> tl = new ThreadLocal<>();

    //获得连接对象
    public static Connection getConn()  {
        Connection conn = tl.get();
        try {
            if(conn == null || conn.isClosed()){
                conn = pool.getConnection();
                tl.set(conn);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return conn;
    }

    //关闭连接对象
    public static void close(){
        Connection conn = tl.get();
        try {
        if(conn != null) {
            conn.close();
            tl.remove();
            }
        } catch (SQLException e) {
                e.printStackTrace();
        }
    }

}
