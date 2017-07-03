<%--
  Created by 张祎轩 14130110047.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.xidian.dao.UserDao" %>
<%@ page import="com.xidian.model.User" %>

<%

    String name = request.getParameter("username");
    name = new String(name.getBytes("ISO8859-1"),"UTF-8");

    String password = request.getParameter("password");
    password = new String(password.getBytes("ISO8859-1"),"UTF-8");

    User user = new User(name,password);
    UserDao userDao = new UserDao();
    try{
        int flag = userDao.login(user);

        if (flag == 0){
            response.setContentType("text/html; charset=gb2312");
            out.println("<html><head><meta http-equiv=\"refresh\" content=\"3; url=./login.jsp\"></head>");
            out.println("<body><h2>用户名或密码错误</h2>");
            out.println("<a href=\"./login.jsp\">3秒后自动跳回，没有跳转点此跳转</a>");
            out.println("</body></html>");
        }else {
            response.setContentType("text/html;charset=UTF-8");
            response.sendRedirect("./platform.jsp");
        }

    }catch (Exception e){
        e.printStackTrace();
    }

%>