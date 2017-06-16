<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=GB2312"%>

<html>

  <head>
    <title>sample</title>
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
 String dbUrl="jdbc:mysql://10.177.123.41:3306/library";
 String dbUser="root";
 String dbpwd="marong";
 con=DriverManager.getConnection(dbUrl,dbUser,dbpwd);
 stmt=con.createStatement();

    rs = stmt.executeQuery("SELECT * from BOOK");

    out.println("<table border=1 width=200>");

    while (rs.next())
    {
   String col1 = rs.getString(1);
    String col2 = rs.getString(2);
    String col3 = rs.getString(3);
    String col4 = rs.getString(4);
	String col5 = rs.getString(5);
    out.println("<tr><td>"+col1+"</td><td>"+col2+"</td><td>"+col3+"</td><td>"+col4+"</td><td>"+col5+"</td></tr>");
    }

    out.println("</table>");
    
 rs.close();
 stmt.close();
 con.close();
 }catch(Exception e){out.println(e.getMessage());}

 %>

  </body>

</html>