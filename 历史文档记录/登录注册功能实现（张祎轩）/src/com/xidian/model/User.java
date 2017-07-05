package com.xidian.model;

/**
 * Created by 张祎轩 14130110047.
 */

/*
 * User是数据库表user的实体类
 * 提供一些get,set方法访问private属性
 */
public class User {
    private String userid = null;
    private String username = null;
    private String login_password = null;
    private String phone = null;

    public User(){

    }

    public User(String username,String login_password){
        this.username= username;
        this.login_password = login_password;
    }  //构造新的用户

    public String getLogin_password() {
        return login_password;
    }

    public void setLogin_password(String login_password) {
        this.login_password = login_password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
