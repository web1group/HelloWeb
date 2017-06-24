<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=GB2312"%>

<html>

  <head>
    <title>PersonalHomepage</title>
  </head>

  <body>
    
 <% 
 try{
	
 Connection con;
 Statement stmt;
 ResultSet rs1,rs2;

 Class.forName("com.mysql.jdbc.Driver");
 //DriverManager.registerDriver(new com.mysql.jdbc.Driver());
 String dbUrl="jdbc:mysql://127.0.0.1:3306/webhomework";
 String dbUser="root";
 String dbpwd="1234";
 //con=DBPool.getPool().getConnection();
 con=DriverManager.getConnection(dbUrl,dbUser,dbpwd);
 stmt=con.createStatement();
 
 rs1 = stmt.executeQuery("select * from user where userid=103");
 
 out.println("<table border=1 width=200>");

 while (rs1.next())
 {
    String col11 = rs1.getString(1);
    String col12 = rs1.getString(2);
    out.println("<tr><td>"+col11+"</td><td>"+col12+"</tr>");
 }

 out.println("</table>");
    
 rs1.close(); 
 
 rs2 = stmt.executeQuery("select * from book where owner=103");
 String[] URL = new String[20];
 int i = 0 ;
 while (rs2.next())
 {
    String col1 = rs2.getString(1);
    String col2 = rs2.getString(2);
    String col3 = rs2.getString(3);
    String col4 = rs2.getString(4);
    String col5 = rs2.getString(5);
    out.println(col1+"  "+col2+"  "+col3+"  "+col4);
    out.println("<img src ='"+col5+"'/>");
}
%>
<%    
 rs2.close();
 
 stmt.close();
 con.close();
 }catch(Exception e){out.println(e.getMessage());}

 %>

</html>