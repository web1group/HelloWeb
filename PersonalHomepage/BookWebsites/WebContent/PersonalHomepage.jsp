<%@ page  language="java" import="java.io.*" pageEncoding="UTF-8"%>
<%@ page  language="java" import="java.util.*"%>
<%@ page  language="java" import="java.sql.*"%>
<%@ page  language="java" import="com.*"%>
<%@ page contentType="text/html;charset=GB2312"%>

<html>

  <head>
    <title>PersonalHomepage</title>
  </head>

  <body>
    
 <% 
 int user_id_to_select = 103;
 try{
	 personalhomepage myHomepage = new personalhomepage();
 	myHomepage.setUserid(user_id_to_select);
 	out.println(myHomepage.getUserName());
 	
 	List<Book> my_books = myHomepage.getBookList();
 	int count = my_books.size();
 	int i = 0;
 	for(i = 0;i < count;i++)
 	{
 		Book one_book = my_books.get(i);
 		out.println("<img src='" + one_book.getPath() + "'/>");
 		out.println(one_book.getName()); 
 		out.println(one_book.getDiscription()); 
 		
 	}

 }catch(Exception e){out.println(e.getMessage());}

 %>
</body>
</html>