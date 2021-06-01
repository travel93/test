package com.igeek.dao;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

/**
 * @Description: 基本的CRUD操作
 * @author: ClownL12
 * @create: 2021-05-31 19:21
 */
public class BaseDao<T> {

    private QueryRunner runner = new QueryRunner();

    //查询单行单列的值
    public Object getSingleValue(Connection conn,String sql,Object... params) throws SQLException {
        Object obj = runner.query(conn, sql, new ScalarHandler(), params);
        return obj;
    }

    //查询单个对象
    public T getBean(Connection conn,String sql,Class<T> clazz,Object... params) throws SQLException {
        T y = (T)runner.query(conn, sql, new BeanHandler<>(clazz), params);
        return y;
    }

    //查询多个对象
    public List<T> getBeanList(Connection conn, String sql, Class<T> clazz, Object... params) throws SQLException {
        List<T> list = (List<T>)runner.query(conn, sql, new BeanListHandler<>(clazz), params);
        return list;
    }

    //增 删 改
    public int update(Connection conn, String sql,Object... params) throws SQLException {
        int i = runner.update(conn, sql, params);
        return i;
    }

}
