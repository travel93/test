package com.igeek.entity;

import java.util.Date;

/**
 * @Description: 普通客户信息
 * @author: ClownL12
 * @create: 2021-05-31 18:55
 */
public class User {

    private Integer uid;
    private String uname;
    private String pwd;
    private String name;
    private Date birthday;
    private String gender;
    private String phone;
    private String email;
    private Integer status; //角色 0普通 1会员 2企业会员 默认0
    private Integer state; //状态 0休闲 1旅游 默认0

    public User() {
    }

    public User( String uname, String pwd, String name, Date birthday, String gender, String phone, String email) {
        this.uname = uname;
        this.pwd = pwd;
        this.name = name;
        this.birthday = birthday;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
    }

    public User( String uname, String pwd, String name, Date birthday, String gender, String phone, String email, Integer status, Integer state) {
        this.uname = uname;
        this.pwd = pwd;
        this.name = name;
        this.birthday = birthday;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.status = status;
        this.state = state;
    }

    public User(Integer uid, String uname, String pwd, String name, Date birthday, String gender, String phone, String email, Integer status, Integer state) {
        this.uid = uid;
        this.uname = uname;
        this.pwd = pwd;
        this.name = name;
        this.birthday = birthday;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.status = status;
        this.state = state;
    }

    /**
     * 获取
     * @return uid
     */
    public Integer getUid() {
        return uid;
    }

    /**
     * 设置
     * @param uid
     */
    public void setUid(Integer uid) {
        this.uid = uid;
    }

    /**
     * 获取
     * @return uname
     */
    public String getUname() {
        return uname;
    }

    /**
     * 设置
     * @param uname
     */
    public void setUname(String uname) {
        this.uname = uname;
    }

    /**
     * 获取
     * @return pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * 设置
     * @param pwd
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return birthday
     */
    public Date getBirthday() {
        return birthday;
    }

    /**
     * 设置
     * @param birthday
     */
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    /**
     * 获取
     * @return gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * 设置
     * @param gender
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * 获取
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取
     * @return email
     */
    public String getEmail() {
        return email;
    }

    /**
     * 设置
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * 获取
     * @return status
     */
    public Integer getStatus() {
        return status;
    }

    /**
     * 设置
     * @param status
     */
    public void setStatus(Integer status) {
        this.status = status;
    }

    /**
     * 获取
     * @return state
     */
    public Integer getState() {
        return state;
    }

    /**
     * 设置
     * @param state
     */
    public void setState(Integer state) {
        this.state = state;
    }

    public String toString() {
        return "User{uid = " + uid + ", uname = " + uname + ", pwd = " + pwd + ", name = " + name + ", birthday = " + birthday + ", gender = " + gender + ", phone = " + phone + ", email = " + email + ", status = " + status + ", state = " + state + "}";
    }
}
