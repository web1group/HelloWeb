package com.xidian;

import com.xidian.dao.UserDao;
import com.xidian.model.User;
import com.xidian.tools.ConnDB;

/**
 * Created by 张祎轩 14130110047.
 */


/*
 * 张祎轩代码测试部分
 */
public class test {
    public static void main(String[] args) {
        UserDao ud = new UserDao();
        User user = new User();
        user.setUsername("zhangyixuan");
        user.setLogin_password("a123456");
        System.out.println(ud.login(user));
    }
}
