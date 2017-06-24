<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>  
<%@ page import="Book.*"%>
 
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link type="text/css" rel="stylesheet" href="css/homecss.css" />
<link type="text/css" rel="stylesheet" href="css/bookInstruction.css" />
<title>图书展示</title>
</head>

<body>
<div class="container">
	<header>
        <nav class="top-nav">
            <ul>
                <li><a href="platform.html" id="navlia">平台</a></li>
                <li><a href="personal.html" id="navlia">个人中心</a></li>
            </ul>
        </nav>
    </header>
    <div class="content" align="center">
    	<div class="book">
    	
        	<div class="name">
        	<%out.println(new BookDisplay().getName()); %>
        	
        	</div>
        	<div class="image">
        	 <% out.println("<img src='" + new BookDisplay().getPicture() + "'/>");%>
    			
            </div>
            <div class="inf">
                <div class="category" align="left">
                    <p>类别</p>
                   <% out.println(new BookDisplay().getCategory());%>
                </div>
                <div class="instruction" align="left">
                    <p>书籍简介</p>
                    <% out.println(new BookDisplay().getDescription());%>
                </div>
                <div class="score" align="left">
                    <p>评分</p>
                  <% out.println(new BookDisplay().getScore());%>
                </div>
                
             </div>
        </div>
        
       
    </div>
    <footer>
      <p>Copyright © 2016.helloweb name All rights reserved.</p>
    </footer>
</div>
</body>
</html>