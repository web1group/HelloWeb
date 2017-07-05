<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
  <%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>book</title>
</head>
<body>
 <%
 out.println("***********welcome***********");
 
 try{
	
 Connection con;
 Statement stmt;
 ResultSet rs;

 Class.forName("com.mysql.jdbc.Driver");
 //DriverManager.registerDriver(new com.mysql.jdbc.Driver());
 String dbUrl="jdbc:mysql://localhost:3306/book";
 String dbUser="root";
 String dbpwd="mysql123";
 con=DriverManager.getConnection(dbUrl,dbUser,dbpwd);
 stmt=con.createStatement();

    rs = stmt.executeQuery("SELECT * from book");

    out.println("<table border=1 width=200>");

    while (rs.next())
    {
   String col1 = rs.getString(1);
    String col2 = rs.getString(2);
    String col3 = rs.getString(3);
    String col4 = rs.getString(4);
    String col5 = rs.getString(5);
    String col6 = rs.getString(6);
    out.println("<tr><td>"+col1+"</td><td>"+col2+"</td><td>"+col3+"</td><td>"+col4+"</td><td>"+col5+"</td><tr>");
    out.println("<img src='" + col6 + "'/>");
    }
  
    
    out.println("</table>");
    
 rs.close();
 stmt.close();
 con.close();
 }catch(Exception e){out.println(e.getMessage());}

 %>
</body>
</html>