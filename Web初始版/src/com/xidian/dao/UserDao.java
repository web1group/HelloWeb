package com.xidian.dao;

import com.xidian.model.User;
import com.xidian.tools.ConnDB;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by 张祎轩 14130110047.
 */

/*
 * 用户操作数据库类
 * 提供登录，注册功能
 * 数据访问层
 */

public class UserDao {
    private ConnDB conn = null;   //连接初始化
    public UserDao() {  //构造函数
        conn = new ConnDB();
    }

    /*
     * 登录
     */
    public int login(User user) {
        int flag = 0;  //是否成功登录标志

        try {
            String sql = "SELECT * FROM USER WHERE username='" + user.getUsername() + "' and login_password ='"+user.getLogin_password()+"'";
           //数据库中user表中查找有无和输入用户名密码匹配的user
            ResultSet rs = conn.executeQuery(sql);  //执行查询的结果集
            if (rs.next()) {
                flag = 1;  //找到匹配user
            } else {
                flag = 0;  //没有与之匹配的user
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            flag = 0;
        } finally {
            conn.close();// 释放数据库链接
        }
        return flag;
    }

    /**
     * 用户查询
     *
     */
    public int checkUser(String username) {
        String sql = "SELECT * FROM USER WHERE username='" + username +"'";
        ResultSet rs = conn.executeQuery(sql);  //查询是否已有使用该用户名username的用户

        int result = 0;  //是否已存在该用户名用户标志
        try {
            if (rs.next()) {
                result = 1;//已存在
            } else {
                result = 0; //不存在
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        } finally {
            conn.close(); // 释放数据库链接
        }
        return result;
    }

    /**
     * 存储新注册的用户信息
     *
     * @param sql
     * @return
     */
    public int save(String sql) {
        int rtn = conn.executeUpdate(sql); // 数据库是否更新成功的标志
        int result;
        if (rtn > 0) {
            result = 1;
        } else {
            result = 0;
        }
        conn.close(); 
        return result; 
    }


}
