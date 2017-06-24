
<%@ page import="com.xidian.dao.UserDao" %>
<%--
  Created by 张祎轩 14130110047.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String name = request.getParameter("username");
    name = new String(name.getBytes("ISO8859-1"),"UTF-8");

    String password = request.getParameter("password");
    password = new String(password.getBytes("ISO8859-1"),"UTF-8");

    String telNumber = request.getParameter("telNumber");
    telNumber = new String(telNumber.getBytes("ISO8859-1"),"UTF-8");

    UserDao userDao = new UserDao();
    String sql = "INSERT INTO USER(username,login_password,phone) VALUES ('" + name  + "' ,'"+password+"','"+ telNumber +"')";
    try{
        int result = userDao.checkUser(name);
        if(result == 1){
            response.setContentType("text/html; charset=gb2312");
            out.println("<html><head><meta http-equiv=\"refresh\" content=\"3; url=./sign-in.jsp\"></head>");
            out.println("<body><h2>用户已被注册</h2>");
            out.println("<a href=\"./sign-in.jsp\">3秒后自动跳回，没有跳转点此跳转</a>");
            out.println("</body></html>");
        }else {
            userDao.save(sql);
            response.setContentType("text/html;charset=UTF-8");
            response.sendRedirect("./login.jsp");
        }
    }catch (Exception e){
        e.printStackTrace();
    }
%>